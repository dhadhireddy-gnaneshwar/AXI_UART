module AXI_TOP_WRAPPER #(parameter ADDR_WIDTH = 32,
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
     parameter UART_TX_FIFO_DEPTH = 32,
     parameter UART_RX_FIFO_DEPTH = 32,
     parameter BASE_ADDRESS  = 16'hE100,
     parameter START_OFFSET = 16'h0000,
     parameter END_OFFSET  = 16'h00810,
     parameter OFFSET_START_BITS = 16
     )
(
    input trigger,
    input r_trigger,
    input aclk,
    input areset,
    input rd_clk,
    input [ADDR_WIDTH-1:0] in_addr,
    input [ID_WIDTH-1:0] in_id,
    input [LEN_WIDTH-1:0] in_len,
    input [1:0] burst_type,
    input [(DATA_WIDTH/8)-1:0] in_strb,
    //FIFO AW READ PORTS
    input addr_read,
    output [ADDR_WIDTH+LEN_WIDTH+SIZE_WIDTH+ID_WIDTH+1:0] out_addr,
    output awfull,
    output awempty,
    output addr_read_ready,
    //FIFO W READ PORTS
    input read_wdata,
    output w_full,
    output w_empty,
    output [DATA_WIDTH+(DATA_WIDTH/8)-1:0] out_wdata,
    //FIFO AR READ PORTS
    input ar_addr_read,
    output ar_read_ready,
    output arfull,
    output arempty,
    output [ADDR_WIDTH+ID_WIDTH+SIZE_WIDTH+LEN_WIDTH+1:0] ar_addr_out,
    //FIFO READ DATA PORT DECLARATION 
    input [ID_WIDTH+DATA_WIDTH+RESPONSE_WIDTH-1:0] wr_r_fifo_data,
    input wr_r_fifo_en,
    output wr_r_fifo_ready,
    output r_full,
    output r_empty,
    
    output [DATA_WIDTH-1:0] read_data_out,
    output [RESPONSE_WIDTH-1:0] read_resp,
    output [ID_WIDTH-1:0] read_id
);

    wire [ADDR_WIDTH-1:0] awaddr;
    wire [ID_WIDTH-1:0] awid;
    wire [SIZE_WIDTH-1:0] awsize;
    wire [1:0] awburst;
    wire [LEN_WIDTH-1:0] awlen;
    wire awvalid;
    wire awready;

    wire wvalid;
    wire wready;
    wire [DATA_WIDTH-1:0] wdata;
    wire [(DATA_WIDTH/8)-1:0] wstrb;
    wire wlast;

    wire bvalid;
    wire [RESPONSE_WIDTH-1:0] bresp;
    wire [ID_WIDTH-1:0] bid;
    wire bready;

    wire arvalid;
    wire [ADDR_WIDTH-1:0] araddr;
    wire [ID_WIDTH-1:0] arid;
    wire [SIZE_WIDTH-1:0] arsize;
    wire [1:0] arburst;
    wire [LEN_WIDTH-1:0] arlen;
    wire arready;

    wire rready;
    wire rvalid;
    wire [DATA_WIDTH-1:0] rdata;
    wire [ID_WIDTH-1:0] rid;
    wire rlast;
    wire [RESPONSE_WIDTH-1:0] rresp;



    AXI_MASTER #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH),
        .ID_WIDTH(ID_WIDTH),
        .SIZE_WIDTH(SIZE_WIDTH),
        .LEN_WIDTH(LEN_WIDTH),
        .RESPONSE_WIDTH(RESPONSE_WIDTH)
    ) master_inst (
        .trigger(trigger),
        .r_trigger(r_trigger),
        .in_addr(in_addr),
        .in_id(in_id),
        .in_len(in_len),
        .burst_type(burst_type),
        .in_strb(in_strb),
        .aclk(aclk),
        .areset(areset),
        .awready(awready),
        .awaddr(awaddr),
        .awid(awid),
        .awsize(awsize),
        .awburst(awburst),
        .awlen(awlen),
        .awvalid(awvalid),
        .wvalid(wvalid),
        .wready(wready),
        .wdata(wdata),
        .wstrb(wstrb),
        .wlast(wlast),
        .bvalid(bvalid),
        .bresp(bresp),
        .bid(bid),
        .bready(bready),
        .arready(arready),
        .araddr(araddr),
        .arid(arid),
        .arsize(arsize),
        .arburst(arburst),
        .arlen(arlen),
        .arvalid(arvalid),
        .rready(rready),
        .rvalid(rvalid),
        .rdata(rdata),
        .rid(rid),
        .rlast(rlast),
        .rresp(rresp),
        .read_data_out(read_data_out),
        .read_id(read_id),
        .read_resp(read_resp)
    );

//    AXI_SLAVE #(
//        .ADDR_WIDTH(ADDR_WIDTH),
//        .DATA_WIDTH(DATA_WIDTH),
//        .ID_WIDTH(ID_WIDTH),
//        .SIZE_WIDTH(SIZE_WIDTH),
//        .LEN_WIDTH(LEN_WIDTH),
//        .RESPONSE_WIDTH(RESPONSE_WIDTH)
//    ) slave_inst (
//        .aclk(aclk),
//        .areset(areset),
//        .awaddr(awaddr),
//        .awid(awid),
//        .awsize(awsize),
//        .awburst(awburst),
//        .awlen(awlen),
//        .awvalid(awvalid),
//        .awready(awready),
//        .wvalid(wvalid),
//        .wdata(wdata),
//        .wstrb(wstrb),  
//        .wlast(wlast),
//        .wready(wready),
//        .bvalid(bvalid),
//        .bresp(bresp),
//        .bid(bid),
//        .bready(bready),
//        .arvalid(arvalid),
//        .araddr(araddr),
//        .arid(arid),
//        .arsize(arsize),
//        .arburst(arburst),
//        .arlen(arlen),
//        .arready(arready),
//        .rvalid(rvalid),
//        .rdata(rdata),
//        .rid(rid),
//        .rlast(rlast),
//        .rresp(rresp),
//        .rready(rready),
//        .rd_clk(rd_clk),
//        .addr_read(addr_read),
//        .out_addr(out_addr),  // just for example; update if different signal is intended
//        .addr_read_ready(addr_read_ready)
//    );

     WRITE_BUFFER #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH),
        .ID_WIDTH(ID_WIDTH),
        .SIZE_WIDTH(SIZE_WIDTH),
        .LEN_WIDTH(LEN_WIDTH),
        .RESPONSE_WIDTH(RESPONSE_WIDTH),
        .AW_DEPTH(AW_DEPTH),
        .W_DEPTH(W_DEPTH)) WRT_BUFFER_INST (
                // AXI AW Channel Ports
                .Aclk(aclk),             
                .areset(areset),           
                .awvalid(awvalid),         
                .awaddr(awaddr),           
                .awsize(awsize),           
                .awlen(awlen),            
                .awburst(awburst),          
                .awid(awid),             
                .awready(awready),          
                .awfull(awfull),           
                .awempty(awempty),          
                // ADDRESS WRITE Read Port Signals
                .rd_clk(rd_clk),           
                .addr_read(addr_read),        
                .out_addr(out_addr),         
                .addr_read_ready(addr_read_ready) , 
                // WRITE DATA W FIFO PORT
                .wvalid(wvalid),
                .wdata(wdata),
                .wstrb(wstrb),
                .wlast(wlast),
                .wready(wready), 
                // WRITE DATA READ DATA
                .read_wdata(read_wdata),
                .out_wdata_ready(out_wdata_ready),
                .w_full(w_full),
                .w_empty(w_empty),
                .out_wdata(out_wdata)
          );
          
      READ_BUFFER #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH),
        .ID_WIDTH(ID_WIDTH),
        .SIZE_WIDTH(SIZE_WIDTH),
        .LEN_WIDTH(LEN_WIDTH),
        .RESPONSE_WIDTH(RESPONSE_WIDTH),
        .AR_DEPTH(AR_DEPTH),
        .R_DEPTH(R_DEPTH)
    ) INST_READ_BUFFER (
        // Write ADDRESS(AR) Channel
        .aclk(aclk),
        .areset(areset),
        .arvalid(arvalid),
        .araddr(araddr),
        .arid(arid),
        .arsize(arsize),
        .arburst(arburst),
        .arlen(arlen),
        .arready(arready),
    
        // Read side
        .rd_clk(rd_clk),
        .ar_addr_read(ar_addr_read),
        .ar_read_ready(ar_read_ready),
        .arfull(arfull),
        .arempty(arempty),
        .ar_addr_out(ar_addr_out),
        
        //READ DATA CHANNEL PORT WRITES
        .r_fifo_wr_clk(rd_clk),
        .wr_r_fifo_data(wr_r_fifo_data),
        .wr_r_fifo_en(wr_r_fifo_en),
        .wr_r_fifo_ready(wr_r_fifo_ready),
        .r_full(r_full),
        .r_empty(r_empty),
    
        // Read channel
        .rvalid(rvalid),
        .rdata(rdata),
        .rid(rid),
        .rlast(rlast),
        .rresp(rresp),
        .rready(rready)
        
);



endmodule
