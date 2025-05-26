`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2025 17:33:58
// Design Name: 
// Module Name: AXI_TOP_TEST
// Project Name: 
// Target Devices: 
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


`timescale 1ns / 1ps

module AXI_TOP_TEST;

    // Parameters
    parameter ADDR_WIDTH = 32;
    parameter DATA_WIDTH = 64;
    parameter ID_WIDTH = 4;
    parameter SIZE_WIDTH = 4;
    parameter LEN_WIDTH = 8;
    parameter RESPONSE_WIDTH = 3;

    // Clock and reset
    reg aclk = 0;
    reg areset = 0;
    reg rd_clk =0;

    always #5 aclk = ~aclk;  // 100 MHz clock
    always #7 rd_clk = ~rd_clk;

    // Testbench inputs
    reg trigger;
    reg [ADDR_WIDTH-1:0] in_addr;
    reg [ID_WIDTH-1:0] in_id;
    reg [LEN_WIDTH-1:0] in_len;
    reg [1:0] burst_type;
    reg [(DATA_WIDTH/8)-1:0] in_strb;

    // Unused ports for simplicity
    wire r_trigger = 0;
    wire addr_read = 0;
    wire addr_read_ready;

    // Connect wires for monitoring AW channel
    wire [ADDR_WIDTH-1:0] awaddr;
    wire [ID_WIDTH-1:0] awid;
    wire [SIZE_WIDTH-1:0] awsize;
    wire [1:0] awburst;
    wire [LEN_WIDTH-1:0] awlen;
    wire awvalid;
    wire awready;

    // Instantiate DUT (Top module)
    AXI_TOP_WRAPPER #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH),
        .ID_WIDTH(ID_WIDTH),
        .SIZE_WIDTH(SIZE_WIDTH),
        .LEN_WIDTH(LEN_WIDTH),
        .RESPONSE_WIDTH(RESPONSE_WIDTH)
    ) dut (
        .trigger(trigger),
        .r_trigger(r_trigger),
        .aclk(aclk),
        .areset(areset),
        .rd_clk(rd_clk),
        .addr_read(addr_read),
        .in_addr(in_addr),
        .in_id(in_id),
        .in_len(in_len),
        .burst_type(burst_type),
        .in_strb(in_strb),
        .addr_read_ready(addr_read_ready)
    );

    initial begin
        $display("Starting AW channel test...");

        // Reset logic
        areset = 1;
        trigger = 0;
        in_addr = 0;
        in_id = 0;
        in_len = 0;
        burst_type = 0;
        in_strb = 0;
        #20;
        areset = 0;
        #20;

        // Set up AW transaction
        in_addr = 32'hA000_0000;
        in_id = 4'h3;
        in_len = 8'h04;  // 5 transfers
        burst_type = 2'b01; // INCR
        in_strb = 8'hFF;
        trigger = 1;
        #70;
        trigger = 0;

        // Wait for awvalid & awready handshake
        wait (dut.master_inst.awvalid && awready);
        $display("AW handshake occurred: ADDR=0x%0h, ID=%0h, LEN=%0d", awaddr, awid, awlen);

        #50;
        $finish;
    end

endmodule

