`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 17:18:15
// Design Name: 
// Module Name: UART_CONTROLLER
// Project Name: AXI_UART_V2
// Target Devices: ZYNQ 7000
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module UART_CONTROLLER #(parameter ADDR_WIDTH = 32,
     parameter DATA_WIDTH = 64,
     parameter ID_WIDTH = 4,
     parameter SIZE_WIDTH = 4,
     parameter LEN_WIDTH = 8,
     parameter RESPONSE_WIDTH = 3,
     parameter AR_DEPTH =32,
     parameter W_DEPTH =1024,
     parameter AW_DEPTH =32,
     parameter R_DEPTH =1024,
     parameter ADDR_OFFSET = 16'h E000,
     parameter CONTL_REG_WIDTH = 32,
     parameter STATUS_REG_WIDTH =32,
     parameter UART_TX_FIFO_DEPTH = 256,
     parameter UART_RX_FIFO_DEPTH = 32,
     parameter CTRL_REG_WIDTH = 32)(

    // WRITE BUFFER CONTROLLER PORT 
    input [DATA_WIDTH-1:0] tx_data,
    input tx_data_valid,
    input [15:0] tx_addr,
    output [$clog2(UART_TX_FIFO_DEPTH*(DATA_WIDTH/8)):0] tx_fifo_mem_left,
    output tx_ready,
    // READ BUFFER CONTROLLER PORT 
    output [DATA_WIDTH-1:0] rx_data,
    output rx_data_valid,
    input [15:0] rx_addr,
    input rx_en,
    output char_time_out
    );
    
//===============================================================//
//                *** UART REG DECLARATION ***                   //
//===============================================================//    
    
    reg [31:0] cntrl_reg;
    wire [35:0] status_reg;
    reg [31:0] IER,IDR,ISR,IMR;
    wire tx_wr_en;
    wire tx_rd_en;
    wire [DATA_WIDTH-1:0] in_rx_data,out_rx_data;
    wire [7:0] in_tx_data,out_tx_data;
    wire [$clog2(UART_TX_FIFO_DEPTH):1] tx_entries;
    wire [$clog2(UART_RX_FIFO_DEPTH):1] rx_entries;
    
//===============================================================//
//            *** STATUS BITS DECLARATION ***      m             //
//===============================================================//
    wire        tx_empty;
    wire        tx_full;
    wire        rx_empty;
    wire        rx_full;
    wire        tx_active;
    wire        rx_active;
    wire [9:0]  rxmem_used = rx_entries* (DATA_WIDTH/8);
    wire [9:0]  txmem_left = (UART_TX_FIFO_DEPTH - tx_entries) * (DATA_WIDTH/8);
    wire        overrun_error;
    wire        parity_error;
    wire        frame_error;
    wire [1:0]  tx_fifo_status;
    wire [1:0]  rx_fifo_status;

   
//===============================================================//
//            *** CONRTOL BITS DECLARATION ***                   //
//===============================================================//
    wire        tx_fifo_rst    = cntrl_reg[0];
    wire        rx_fifo_rst    = cntrl_reg[1];
    wire        tx_fifo_en     = cntrl_reg[3];
    wire        rx_fifo_en     = cntrl_reg[4];
    wire        stop_bit       = cntrl_reg[5];
    wire        parity_bit     = cntrl_reg[6];
    wire  [3:0] data_bits      = cntrl_reg[23:26];      
    wire  [4:0] sample_rate    = cntrl_reg[13:9];
    wire  [4:0] tx_trig        = cntrl_reg[18:14];
    wire  [3:0] rx_trig        = cntrl_reg[22:19];


/*  
|----------------------------------------------------------------|-------------------------------------------------------| 
|                     STATUS BITS                                |                   CONTROL BITS                        |
|------------------|---------------------------------------------|--------------------------|----------------------------|                         
|      Bit Index   |       Description                           |         Bit Index        |       Description          |                        
|------------------|---------------------------------------------|--------------------------|----------------------------| 
|      31 - 32     | RX_FIFO_STATUS    31- WRITE 32-READ         |             0            |  Tx FIFO RST               | 
|      29 - 30     | TX_FIFO_STATUS                              |             1            |  Rx FIFO RST               | 
|      28          | FE (Frame Error)                            |             3            |  Tx EN                     | 
|      27          | PE (Parity Error)                           |             4            |  Rx EN                     | 
|      26          | OE (Overrun Error)                          |             5            |  STOP BIT                  | 
|      25 - 16     | RxMem_Lefts [9:0]                           |             6            |  PARITY BIT                | 
|      6 - 15      | RxMem_Lefts [9:0]                           |             7            |  RESERVED                  | 
|      5           | Rx ACTIVE                                   |             8            |  RESERVED                  | 
|      4           | Tx ACTIVE                                   |           [ 9:13]        |  SAMPLE RATE               | 
|      3           | Rx FULL                                     |           [14:18]        |  TxTRIG                    | 
|      2           | Rx EMPTY                                    |           [19:22]        |  RxTRIG                    | 
|      1           | Tx FULL                                     |           [23:26]        |  DATA_BITS {5,6,7,8}       | 
|      0           | Tx EMPTY                                    |           [26:31]        |  RESERVED                  | 
|------------------|---------------------------------------------|--------------------------|----------------------------| 
*/
//===============================================================//
//    **Assign the bits of status_reg from individual wires**    //
//===============================================================//

    assign status_reg[0]    = tx_empty;
    assign status_reg[1]    = tx_full;
    assign status_reg[2]    = rx_empty;
    assign status_reg[3]    = rx_full;
    assign status_reg[4]    = tx_active;
    assign status_reg[5]    = rx_active;
    assign status_reg[15:6] = rxmem_used;
    assign status_reg[25:16]= txmem_left;
    assign status_reg[26]   = overrun_error;
    assign status_reg[27]   = parity_error;
    assign status_reg[28]   = frame_error;
    assign status_reg[30:29]= tx_fifo_status;
    assign status_reg[32:31]= rx_fifo_status;

//===============================================================//
//               *** FIFO INSTANTION ***                         //
//===============================================================//
 UART_FIFO #(
    .DATA_WIDTH(8),
    .DEPTH(UART_TX_FIFO_DEPTH)) TxFIFO (
                    .rst(tx_fifo_rst),
                    .wr_clk(rd_clk),
                    .wr_en(tx_wr_en),
                    .wr_data(in_tx_data),
                    .wr_ready(tx_fifo_status[0]),
                    .rd_clk(rd_clk),
                    .rd_en(tx_rd_en),
                    .rd_data(out_rx_data),
                    .rd_ready(tx_fifo_status[1]),
                    .full(tx_full),
                    .empty(tx_empty),
                    .used_entries(tx_entries)
                    );
 UART_FIFO #(
    .DATA_WIDTH(DATA_WIDTH),
    .DEPTH(UART_RX_FIFO_DEPTH)) RxFIFO (
                    .rst(rx_fifo_rst),
                    .wr_clk(rd_clk),
                    .wr_en(rx_wr_en),
                    .wr_data(in_rx_data),
                    .wr_ready(rx_fifo_status[0]),
                    .rd_clk(rd_clk),
                    .rd_en(rx_rd_en),
                    .rd_data(out_rx_data),
                    .rd_ready(rx_fifo_status[1]),
                    .full(rx_full),
                    .empty(rx_empty),
                    .used_entries(rx_entries)
                    );


endmodule
