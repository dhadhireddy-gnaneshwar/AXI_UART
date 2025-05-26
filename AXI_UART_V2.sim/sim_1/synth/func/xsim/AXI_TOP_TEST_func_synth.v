// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed May 21 10:07:10 2025
// Host        : GNANESHWAR running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/demon/INTERNSHIP/src_sim_vivado/AXI_UART_V2/AXI_UART_V2.sim/sim_1/synth/func/xsim/AXI_TOP_TEST_func_synth.v
// Design      : AXI_TOP_WRAPPER
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ADDR_WIDTH = "32" *) (* AR_DEPTH = "32" *) (* AR_FIFO_WIDTH = "50" *) 
(* DATA_WIDTH = "64" *) (* ID_WIDTH = "4" *) (* LEN_WIDTH = "8" *) 
(* RESPONSE_WIDTH = "3" *) (* SIZE_WIDTH = "4" *) 
module AR_FIFO
   (aclk,
    areset,
    arvalid,
    araddr,
    arid,
    arsize,
    arburst,
    arlen,
    arready,
    rd_clk,
    ar_addr_read,
    ar_read_ready,
    arfull,
    arempty,
    ar_addr_out);
  input aclk;
  input areset;
  input arvalid;
  input [31:0]araddr;
  input [3:0]arid;
  input [3:0]arsize;
  input [1:0]arburst;
  input [7:0]arlen;
  output arready;
  input rd_clk;
  input ar_addr_read;
  output ar_read_ready;
  output arfull;
  output arempty;
  output [49:0]ar_addr_out;

  wire aclk;
  wire [49:0]ar_addr_out;
  wire ar_addr_read;
  wire ar_read_ready;
  wire [31:0]araddr;
  wire [1:0]arburst;
  wire arempty;
  wire areset;
  wire arfull;
  wire [3:0]arid;
  wire [7:0]arlen;
  wire arready;
  wire arvalid;
  wire rd_clk;

  (* BYTES = "6" *) 
  (* BYTE_POINTER_WIDTH = "8" *) 
  (* COUNTER_WIDTH = "5" *) 
  (* DATA_WIDTH = "50" *) 
  (* DEPTH = "32" *) 
  (* IDEL = "2'b00" *) 
  (* READ = "2'b10" *) 
  (* WRITE = "2'b01" *) 
  FIFO ARFIFO
       (.empty(arempty),
        .full(arfull),
        .rd_clk(rd_clk),
        .rd_data(ar_addr_out),
        .rd_en(ar_addr_read),
        .rd_ready(ar_read_ready),
        .rst(areset),
        .wr_clk(aclk),
        .wr_data({arburst,arid,arlen,1'b0,1'b0,1'b0,1'b0,araddr}),
        .wr_en(arvalid),
        .wr_ready(arready));
endmodule

(* ADDR_WIDTH = "32" *) (* AW_DEPTH = "32" *) (* AW_FIFO_WIDTH = "50" *) 
(* DATA_WIDTH = "64" *) (* ID_WIDTH = "4" *) (* LEN_WIDTH = "8" *) 
(* RESPONSE_WIDTH = "3" *) (* SIZE_WIDTH = "4" *) 
module AW_FIFO
   (Aclk,
    areset,
    awvalid,
    awaddr,
    awsize,
    awlen,
    awburst,
    awid,
    awready,
    awfull,
    awempty,
    rd_clk,
    addr_read,
    out_addr,
    addr_read_ready);
  input Aclk;
  input areset;
  input awvalid;
  input [31:0]awaddr;
  input [3:0]awsize;
  input [7:0]awlen;
  input [1:0]awburst;
  input [3:0]awid;
  output awready;
  output awfull;
  output awempty;
  input rd_clk;
  input addr_read;
  output [49:0]out_addr;
  output addr_read_ready;

  wire Aclk;
  wire addr_read;
  wire addr_read_ready;
  wire areset;
  wire [31:0]awaddr;
  wire [1:0]awburst;
  wire awempty;
  wire awfull;
  wire [3:0]awid;
  wire [7:0]awlen;
  wire awready;
  wire awvalid;
  wire [49:0]out_addr;
  wire rd_clk;

  (* BYTES = "6" *) 
  (* BYTE_POINTER_WIDTH = "8" *) 
  (* COUNTER_WIDTH = "5" *) 
  (* DATA_WIDTH = "50" *) 
  (* DEPTH = "32" *) 
  (* IDEL = "2'b00" *) 
  (* READ = "2'b10" *) 
  (* WRITE = "2'b01" *) 
  FIFO__1 AWFIFO
       (.empty(awempty),
        .full(awfull),
        .rd_clk(rd_clk),
        .rd_data(out_addr),
        .rd_en(addr_read),
        .rd_ready(addr_read_ready),
        .rst(areset),
        .wr_clk(Aclk),
        .wr_data({awburst,awid,awlen,1'b0,1'b0,1'b0,1'b0,awaddr}),
        .wr_en(awvalid),
        .wr_ready(awready));
endmodule

(* ADDR_WIDTH = "32" *) (* DATA_WIDTH = "64" *) (* IDEL = "2'b00" *) 
(* ID_WIDTH = "4" *) (* LEN_WIDTH = "8" *) (* RESPONSE_WIDTH = "3" *) 
(* SIZE_WIDTH = "4" *) (* START = "2'b01" *) 
module AXI_MASTER
   (trigger,
    r_trigger,
    in_addr,
    in_id,
    in_len,
    burst_type,
    in_strb,
    aclk,
    areset,
    awready,
    awaddr,
    awid,
    awsize,
    awburst,
    awlen,
    awvalid,
    wvalid,
    wready,
    wdata,
    wstrb,
    wlast,
    bvalid,
    bresp,
    bid,
    bready,
    arready,
    araddr,
    arid,
    arsize,
    arburst,
    arlen,
    arvalid,
    rready,
    rvalid,
    rdata,
    rid,
    rlast,
    rresp,
    read_data_out,
    read_resp,
    read_id);
  input trigger;
  input r_trigger;
  input [31:0]in_addr;
  input [3:0]in_id;
  input [7:0]in_len;
  input [1:0]burst_type;
  input [7:0]in_strb;
  input aclk;
  input areset;
  input awready;
  output [31:0]awaddr;
  output [3:0]awid;
  output [3:0]awsize;
  output [1:0]awburst;
  output [7:0]awlen;
  output awvalid;
  output wvalid;
  input wready;
  output [63:0]wdata;
  output [7:0]wstrb;
  output wlast;
  input bvalid;
  input [2:0]bresp;
  input [3:0]bid;
  output bready;
  input arready;
  output [31:0]araddr;
  output [3:0]arid;
  output [3:0]arsize;
  output [1:0]arburst;
  output [7:0]arlen;
  output arvalid;
  output rready;
  input rvalid;
  input [63:0]rdata;
  input [3:0]rid;
  input rlast;
  input [2:0]rresp;
  output [63:0]read_data_out;
  output [2:0]read_resp;
  output [3:0]read_id;

  wire \<const0> ;
  wire FSM_sequential_ar_state_i_1_n_0;
  wire FSM_sequential_aw_state_i_1_n_0;
  wire FSM_sequential_r_state_i_1_n_0;
  wire FSM_sequential_w_state_i_1_n_0;
  wire aclk;
  wire ar_state;
  wire [31:0]araddr;
  wire [1:0]arburst;
  wire areset;
  wire [3:0]arid;
  wire [7:0]arlen;
  wire arready;
  wire arvalid;
  wire aw_state;
  wire [31:0]awaddr;
  wire [1:0]awburst;
  wire [3:0]awid;
  wire [7:0]awlen;
  wire awready;
  wire awvalid;
  wire \beat_counter[0]_i_1_n_0 ;
  wire \beat_counter[1]_i_1_n_0 ;
  wire \beat_counter[2]_i_1_n_0 ;
  wire \beat_counter[3]_i_1_n_0 ;
  wire \beat_counter[3]_i_2_n_0 ;
  wire \beat_counter[4]_i_1_n_0 ;
  wire \beat_counter[4]_i_2_n_0 ;
  wire \beat_counter[5]_i_1_n_0 ;
  wire \beat_counter[5]_i_2_n_0 ;
  wire \beat_counter[6]_i_1_n_0 ;
  wire \beat_counter[7]_i_1_n_0 ;
  wire \beat_counter[7]_i_2_n_0 ;
  wire \beat_counter[7]_i_3_n_0 ;
  wire \beat_counter[7]_i_4_n_0 ;
  wire \beat_counter[7]_i_5_n_0 ;
  wire \beat_counter[7]_i_6_n_0 ;
  wire [7:0]beat_counter_reg;
  wire [1:0]burst_type;
  wire [31:0]in_addr;
  wire [3:0]in_id;
  wire [7:0]in_len;
  wire [7:0]in_strb;
  wire [7:0]r_awlen;
  wire \r_awlen[7]_i_1_n_0 ;
  wire r_trigger;
  wire [63:0]rdata;
  wire [63:0]read_data_out;
  wire \read_data_out[63]_i_1_n_0 ;
  wire [3:0]read_id;
  wire [2:0]read_resp;
  wire [3:0]rid;
  wire rlast;
  wire rready;
  wire [2:0]rresp;
  wire rvalid;
  wire trigger;
  wire w_state;
  wire [31:0]\^wdata ;
  wire wready;
  wire [7:0]wstrb;
  wire wvalid;

  assign arsize[3] = \<const0> ;
  assign arsize[2] = \<const0> ;
  assign arsize[1] = \<const0> ;
  assign arsize[0] = \<const0> ;
  assign awsize[3] = \<const0> ;
  assign awsize[2] = \<const0> ;
  assign awsize[1] = \<const0> ;
  assign awsize[0] = \<const0> ;
  assign bready = \<const0> ;
  assign wdata[63] = \<const0> ;
  assign wdata[62] = \<const0> ;
  assign wdata[61] = \<const0> ;
  assign wdata[60] = \<const0> ;
  assign wdata[59] = \<const0> ;
  assign wdata[58] = \<const0> ;
  assign wdata[57] = \<const0> ;
  assign wdata[56] = \<const0> ;
  assign wdata[55] = \<const0> ;
  assign wdata[54] = \<const0> ;
  assign wdata[53] = \<const0> ;
  assign wdata[52] = \<const0> ;
  assign wdata[51] = \<const0> ;
  assign wdata[50] = \<const0> ;
  assign wdata[49] = \<const0> ;
  assign wdata[48] = \<const0> ;
  assign wdata[47] = \<const0> ;
  assign wdata[46] = \<const0> ;
  assign wdata[45] = \<const0> ;
  assign wdata[44] = \<const0> ;
  assign wdata[43] = \<const0> ;
  assign wdata[42] = \<const0> ;
  assign wdata[41] = \<const0> ;
  assign wdata[40] = \<const0> ;
  assign wdata[39] = \<const0> ;
  assign wdata[38] = \<const0> ;
  assign wdata[37] = \<const0> ;
  assign wdata[36] = \<const0> ;
  assign wdata[35] = \<const0> ;
  assign wdata[34] = \<const0> ;
  assign wdata[33] = \<const0> ;
  assign wdata[32] = \<const0> ;
  assign wdata[31:0] = \^wdata [31:0];
  assign wlast = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    FSM_sequential_ar_state_i_1
       (.I0(arready),
        .I1(r_trigger),
        .I2(ar_state),
        .O(FSM_sequential_ar_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDEL:1,START:0," *) 
  FDSE #(
    .INIT(1'b1)) 
    FSM_sequential_ar_state_reg
       (.C(aclk),
        .CE(1'b1),
        .D(FSM_sequential_ar_state_i_1_n_0),
        .Q(ar_state),
        .S(areset));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    FSM_sequential_aw_state_i_1
       (.I0(awready),
        .I1(trigger),
        .I2(aw_state),
        .O(FSM_sequential_aw_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDEL:1,START:0," *) 
  FDSE #(
    .INIT(1'b1)) 
    FSM_sequential_aw_state_reg
       (.C(aclk),
        .CE(1'b1),
        .D(FSM_sequential_aw_state_i_1_n_0),
        .Q(aw_state),
        .S(areset));
  LUT3 #(
    .INIT(8'h7A)) 
    FSM_sequential_r_state_i_1
       (.I0(rvalid),
        .I1(rlast),
        .I2(rready),
        .O(FSM_sequential_r_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDEL:0,START:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_r_state_reg
       (.C(aclk),
        .CE(1'b1),
        .D(FSM_sequential_r_state_i_1_n_0),
        .Q(rready),
        .R(areset));
  LUT6 #(
    .INIT(64'hFF00FFFF08080808)) 
    FSM_sequential_w_state_i_1
       (.I0(\beat_counter[7]_i_5_n_0 ),
        .I1(\beat_counter[7]_i_4_n_0 ),
        .I2(\beat_counter[7]_i_3_n_0 ),
        .I3(aw_state),
        .I4(awready),
        .I5(w_state),
        .O(FSM_sequential_w_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDEL:1,START:0," *) 
  FDSE #(
    .INIT(1'b1)) 
    FSM_sequential_w_state_reg
       (.C(aclk),
        .CE(1'b1),
        .D(FSM_sequential_w_state_i_1_n_0),
        .Q(w_state),
        .S(areset));
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[0]_INST_0 
       (.I0(in_addr[0]),
        .I1(ar_state),
        .O(araddr[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[10]_INST_0 
       (.I0(in_addr[10]),
        .I1(ar_state),
        .O(araddr[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[11]_INST_0 
       (.I0(in_addr[11]),
        .I1(ar_state),
        .O(araddr[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[12]_INST_0 
       (.I0(in_addr[12]),
        .I1(ar_state),
        .O(araddr[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[13]_INST_0 
       (.I0(in_addr[13]),
        .I1(ar_state),
        .O(araddr[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[14]_INST_0 
       (.I0(in_addr[14]),
        .I1(ar_state),
        .O(araddr[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[15]_INST_0 
       (.I0(in_addr[15]),
        .I1(ar_state),
        .O(araddr[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[16]_INST_0 
       (.I0(in_addr[16]),
        .I1(ar_state),
        .O(araddr[16]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[17]_INST_0 
       (.I0(in_addr[17]),
        .I1(ar_state),
        .O(araddr[17]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[18]_INST_0 
       (.I0(in_addr[18]),
        .I1(ar_state),
        .O(araddr[18]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[19]_INST_0 
       (.I0(in_addr[19]),
        .I1(ar_state),
        .O(araddr[19]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[1]_INST_0 
       (.I0(in_addr[1]),
        .I1(ar_state),
        .O(araddr[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[20]_INST_0 
       (.I0(in_addr[20]),
        .I1(ar_state),
        .O(araddr[20]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[21]_INST_0 
       (.I0(in_addr[21]),
        .I1(ar_state),
        .O(araddr[21]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[22]_INST_0 
       (.I0(in_addr[22]),
        .I1(ar_state),
        .O(araddr[22]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[23]_INST_0 
       (.I0(in_addr[23]),
        .I1(ar_state),
        .O(araddr[23]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[24]_INST_0 
       (.I0(in_addr[24]),
        .I1(ar_state),
        .O(araddr[24]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[25]_INST_0 
       (.I0(in_addr[25]),
        .I1(ar_state),
        .O(araddr[25]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[26]_INST_0 
       (.I0(in_addr[26]),
        .I1(ar_state),
        .O(araddr[26]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[27]_INST_0 
       (.I0(in_addr[27]),
        .I1(ar_state),
        .O(araddr[27]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[28]_INST_0 
       (.I0(in_addr[28]),
        .I1(ar_state),
        .O(araddr[28]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[29]_INST_0 
       (.I0(in_addr[29]),
        .I1(ar_state),
        .O(araddr[29]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[2]_INST_0 
       (.I0(in_addr[2]),
        .I1(ar_state),
        .O(araddr[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[30]_INST_0 
       (.I0(in_addr[30]),
        .I1(ar_state),
        .O(araddr[30]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[31]_INST_0 
       (.I0(in_addr[31]),
        .I1(ar_state),
        .O(araddr[31]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[3]_INST_0 
       (.I0(in_addr[3]),
        .I1(ar_state),
        .O(araddr[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[4]_INST_0 
       (.I0(in_addr[4]),
        .I1(ar_state),
        .O(araddr[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[5]_INST_0 
       (.I0(in_addr[5]),
        .I1(ar_state),
        .O(araddr[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[6]_INST_0 
       (.I0(in_addr[6]),
        .I1(ar_state),
        .O(araddr[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[7]_INST_0 
       (.I0(in_addr[7]),
        .I1(ar_state),
        .O(araddr[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[8]_INST_0 
       (.I0(in_addr[8]),
        .I1(ar_state),
        .O(araddr[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \araddr[9]_INST_0 
       (.I0(in_addr[9]),
        .I1(ar_state),
        .O(araddr[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \arburst[0]_INST_0 
       (.I0(burst_type[0]),
        .I1(ar_state),
        .O(arburst[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \arburst[1]_INST_0 
       (.I0(burst_type[1]),
        .I1(ar_state),
        .O(arburst[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \arid[0]_INST_0 
       (.I0(in_id[0]),
        .I1(ar_state),
        .O(arid[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \arid[1]_INST_0 
       (.I0(in_id[1]),
        .I1(ar_state),
        .O(arid[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \arid[2]_INST_0 
       (.I0(in_id[2]),
        .I1(ar_state),
        .O(arid[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \arid[3]_INST_0 
       (.I0(in_id[3]),
        .I1(ar_state),
        .O(arid[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \arlen[0]_INST_0 
       (.I0(in_len[0]),
        .I1(ar_state),
        .O(arlen[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \arlen[1]_INST_0 
       (.I0(in_len[1]),
        .I1(ar_state),
        .O(arlen[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \arlen[2]_INST_0 
       (.I0(in_len[2]),
        .I1(ar_state),
        .O(arlen[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \arlen[3]_INST_0 
       (.I0(in_len[3]),
        .I1(ar_state),
        .O(arlen[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \arlen[4]_INST_0 
       (.I0(in_len[4]),
        .I1(ar_state),
        .O(arlen[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \arlen[5]_INST_0 
       (.I0(in_len[5]),
        .I1(ar_state),
        .O(arlen[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \arlen[6]_INST_0 
       (.I0(in_len[6]),
        .I1(ar_state),
        .O(arlen[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \arlen[7]_INST_0 
       (.I0(in_len[7]),
        .I1(ar_state),
        .O(arlen[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    arvalid_INST_0
       (.I0(ar_state),
        .O(arvalid));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[0]_INST_0 
       (.I0(in_addr[0]),
        .I1(aw_state),
        .O(awaddr[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[10]_INST_0 
       (.I0(in_addr[10]),
        .I1(aw_state),
        .O(awaddr[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[11]_INST_0 
       (.I0(in_addr[11]),
        .I1(aw_state),
        .O(awaddr[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[12]_INST_0 
       (.I0(in_addr[12]),
        .I1(aw_state),
        .O(awaddr[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[13]_INST_0 
       (.I0(in_addr[13]),
        .I1(aw_state),
        .O(awaddr[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[14]_INST_0 
       (.I0(in_addr[14]),
        .I1(aw_state),
        .O(awaddr[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[15]_INST_0 
       (.I0(in_addr[15]),
        .I1(aw_state),
        .O(awaddr[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[16]_INST_0 
       (.I0(in_addr[16]),
        .I1(aw_state),
        .O(awaddr[16]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[17]_INST_0 
       (.I0(in_addr[17]),
        .I1(aw_state),
        .O(awaddr[17]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[18]_INST_0 
       (.I0(in_addr[18]),
        .I1(aw_state),
        .O(awaddr[18]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[19]_INST_0 
       (.I0(in_addr[19]),
        .I1(aw_state),
        .O(awaddr[19]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[1]_INST_0 
       (.I0(in_addr[1]),
        .I1(aw_state),
        .O(awaddr[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[20]_INST_0 
       (.I0(in_addr[20]),
        .I1(aw_state),
        .O(awaddr[20]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[21]_INST_0 
       (.I0(in_addr[21]),
        .I1(aw_state),
        .O(awaddr[21]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[22]_INST_0 
       (.I0(in_addr[22]),
        .I1(aw_state),
        .O(awaddr[22]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[23]_INST_0 
       (.I0(in_addr[23]),
        .I1(aw_state),
        .O(awaddr[23]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[24]_INST_0 
       (.I0(in_addr[24]),
        .I1(aw_state),
        .O(awaddr[24]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[25]_INST_0 
       (.I0(in_addr[25]),
        .I1(aw_state),
        .O(awaddr[25]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[26]_INST_0 
       (.I0(in_addr[26]),
        .I1(aw_state),
        .O(awaddr[26]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[27]_INST_0 
       (.I0(in_addr[27]),
        .I1(aw_state),
        .O(awaddr[27]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[28]_INST_0 
       (.I0(in_addr[28]),
        .I1(aw_state),
        .O(awaddr[28]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[29]_INST_0 
       (.I0(in_addr[29]),
        .I1(aw_state),
        .O(awaddr[29]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[2]_INST_0 
       (.I0(in_addr[2]),
        .I1(aw_state),
        .O(awaddr[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[30]_INST_0 
       (.I0(in_addr[30]),
        .I1(aw_state),
        .O(awaddr[30]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[31]_INST_0 
       (.I0(in_addr[31]),
        .I1(aw_state),
        .O(awaddr[31]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[3]_INST_0 
       (.I0(in_addr[3]),
        .I1(aw_state),
        .O(awaddr[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[4]_INST_0 
       (.I0(in_addr[4]),
        .I1(aw_state),
        .O(awaddr[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[5]_INST_0 
       (.I0(in_addr[5]),
        .I1(aw_state),
        .O(awaddr[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[6]_INST_0 
       (.I0(in_addr[6]),
        .I1(aw_state),
        .O(awaddr[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[7]_INST_0 
       (.I0(in_addr[7]),
        .I1(aw_state),
        .O(awaddr[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[8]_INST_0 
       (.I0(in_addr[8]),
        .I1(aw_state),
        .O(awaddr[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \awaddr[9]_INST_0 
       (.I0(in_addr[9]),
        .I1(aw_state),
        .O(awaddr[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \awburst[0]_INST_0 
       (.I0(burst_type[0]),
        .I1(aw_state),
        .O(awburst[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \awburst[1]_INST_0 
       (.I0(burst_type[1]),
        .I1(aw_state),
        .O(awburst[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \awid[0]_INST_0 
       (.I0(in_id[0]),
        .I1(aw_state),
        .O(awid[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \awid[1]_INST_0 
       (.I0(in_id[1]),
        .I1(aw_state),
        .O(awid[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \awid[2]_INST_0 
       (.I0(in_id[2]),
        .I1(aw_state),
        .O(awid[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \awid[3]_INST_0 
       (.I0(in_id[3]),
        .I1(aw_state),
        .O(awid[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \awlen[0]_INST_0 
       (.I0(in_len[0]),
        .I1(aw_state),
        .O(awlen[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \awlen[1]_INST_0 
       (.I0(in_len[1]),
        .I1(aw_state),
        .O(awlen[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \awlen[2]_INST_0 
       (.I0(in_len[2]),
        .I1(aw_state),
        .O(awlen[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \awlen[3]_INST_0 
       (.I0(in_len[3]),
        .I1(aw_state),
        .O(awlen[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \awlen[4]_INST_0 
       (.I0(in_len[4]),
        .I1(aw_state),
        .O(awlen[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \awlen[5]_INST_0 
       (.I0(in_len[5]),
        .I1(aw_state),
        .O(awlen[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \awlen[6]_INST_0 
       (.I0(in_len[6]),
        .I1(aw_state),
        .O(awlen[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \awlen[7]_INST_0 
       (.I0(in_len[7]),
        .I1(aw_state),
        .O(awlen[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    awvalid_INST_0
       (.I0(aw_state),
        .O(awvalid));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5515)) 
    \beat_counter[0]_i_1 
       (.I0(beat_counter_reg[0]),
        .I1(\beat_counter[7]_i_5_n_0 ),
        .I2(\beat_counter[7]_i_4_n_0 ),
        .I3(\beat_counter[7]_i_3_n_0 ),
        .O(\beat_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h66660666)) 
    \beat_counter[1]_i_1 
       (.I0(beat_counter_reg[1]),
        .I1(beat_counter_reg[0]),
        .I2(\beat_counter[7]_i_5_n_0 ),
        .I3(\beat_counter[7]_i_4_n_0 ),
        .I4(\beat_counter[7]_i_3_n_0 ),
        .O(\beat_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6A6A6A6A006A6A6A)) 
    \beat_counter[2]_i_1 
       (.I0(beat_counter_reg[2]),
        .I1(beat_counter_reg[1]),
        .I2(beat_counter_reg[0]),
        .I3(\beat_counter[7]_i_5_n_0 ),
        .I4(\beat_counter[7]_i_4_n_0 ),
        .I5(\beat_counter[7]_i_3_n_0 ),
        .O(\beat_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h66660666)) 
    \beat_counter[3]_i_1 
       (.I0(beat_counter_reg[3]),
        .I1(\beat_counter[3]_i_2_n_0 ),
        .I2(\beat_counter[7]_i_5_n_0 ),
        .I3(\beat_counter[7]_i_4_n_0 ),
        .I4(\beat_counter[7]_i_3_n_0 ),
        .O(\beat_counter[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \beat_counter[3]_i_2 
       (.I0(beat_counter_reg[2]),
        .I1(beat_counter_reg[0]),
        .I2(beat_counter_reg[1]),
        .O(\beat_counter[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h66660666)) 
    \beat_counter[4]_i_1 
       (.I0(beat_counter_reg[4]),
        .I1(\beat_counter[4]_i_2_n_0 ),
        .I2(\beat_counter[7]_i_5_n_0 ),
        .I3(\beat_counter[7]_i_4_n_0 ),
        .I4(\beat_counter[7]_i_3_n_0 ),
        .O(\beat_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \beat_counter[4]_i_2 
       (.I0(beat_counter_reg[3]),
        .I1(beat_counter_reg[1]),
        .I2(beat_counter_reg[0]),
        .I3(beat_counter_reg[2]),
        .O(\beat_counter[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h66660666)) 
    \beat_counter[5]_i_1 
       (.I0(beat_counter_reg[5]),
        .I1(\beat_counter[5]_i_2_n_0 ),
        .I2(\beat_counter[7]_i_5_n_0 ),
        .I3(\beat_counter[7]_i_4_n_0 ),
        .I4(\beat_counter[7]_i_3_n_0 ),
        .O(\beat_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \beat_counter[5]_i_2 
       (.I0(beat_counter_reg[4]),
        .I1(beat_counter_reg[2]),
        .I2(beat_counter_reg[0]),
        .I3(beat_counter_reg[1]),
        .I4(beat_counter_reg[3]),
        .O(\beat_counter[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h66660666)) 
    \beat_counter[6]_i_1 
       (.I0(beat_counter_reg[6]),
        .I1(\beat_counter[7]_i_6_n_0 ),
        .I2(\beat_counter[7]_i_5_n_0 ),
        .I3(\beat_counter[7]_i_4_n_0 ),
        .I4(\beat_counter[7]_i_3_n_0 ),
        .O(\beat_counter[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000BAAA)) 
    \beat_counter[7]_i_1 
       (.I0(wready),
        .I1(\beat_counter[7]_i_3_n_0 ),
        .I2(\beat_counter[7]_i_4_n_0 ),
        .I3(\beat_counter[7]_i_5_n_0 ),
        .I4(w_state),
        .O(\beat_counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6A6A6A6A006A6A6A)) 
    \beat_counter[7]_i_2 
       (.I0(beat_counter_reg[7]),
        .I1(beat_counter_reg[6]),
        .I2(\beat_counter[7]_i_6_n_0 ),
        .I3(\beat_counter[7]_i_5_n_0 ),
        .I4(\beat_counter[7]_i_4_n_0 ),
        .I5(\beat_counter[7]_i_3_n_0 ),
        .O(\beat_counter[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \beat_counter[7]_i_3 
       (.I0(beat_counter_reg[6]),
        .I1(r_awlen[6]),
        .I2(beat_counter_reg[7]),
        .I3(r_awlen[7]),
        .O(\beat_counter[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \beat_counter[7]_i_4 
       (.I0(beat_counter_reg[3]),
        .I1(r_awlen[3]),
        .I2(r_awlen[5]),
        .I3(beat_counter_reg[5]),
        .I4(r_awlen[4]),
        .I5(beat_counter_reg[4]),
        .O(\beat_counter[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \beat_counter[7]_i_5 
       (.I0(beat_counter_reg[0]),
        .I1(r_awlen[0]),
        .I2(r_awlen[2]),
        .I3(beat_counter_reg[2]),
        .I4(r_awlen[1]),
        .I5(beat_counter_reg[1]),
        .O(\beat_counter[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \beat_counter[7]_i_6 
       (.I0(beat_counter_reg[5]),
        .I1(beat_counter_reg[3]),
        .I2(beat_counter_reg[1]),
        .I3(beat_counter_reg[0]),
        .I4(beat_counter_reg[2]),
        .I5(beat_counter_reg[4]),
        .O(\beat_counter[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[0] 
       (.C(aclk),
        .CE(\beat_counter[7]_i_1_n_0 ),
        .D(\beat_counter[0]_i_1_n_0 ),
        .Q(beat_counter_reg[0]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[1] 
       (.C(aclk),
        .CE(\beat_counter[7]_i_1_n_0 ),
        .D(\beat_counter[1]_i_1_n_0 ),
        .Q(beat_counter_reg[1]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[2] 
       (.C(aclk),
        .CE(\beat_counter[7]_i_1_n_0 ),
        .D(\beat_counter[2]_i_1_n_0 ),
        .Q(beat_counter_reg[2]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[3] 
       (.C(aclk),
        .CE(\beat_counter[7]_i_1_n_0 ),
        .D(\beat_counter[3]_i_1_n_0 ),
        .Q(beat_counter_reg[3]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[4] 
       (.C(aclk),
        .CE(\beat_counter[7]_i_1_n_0 ),
        .D(\beat_counter[4]_i_1_n_0 ),
        .Q(beat_counter_reg[4]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[5] 
       (.C(aclk),
        .CE(\beat_counter[7]_i_1_n_0 ),
        .D(\beat_counter[5]_i_1_n_0 ),
        .Q(beat_counter_reg[5]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[6] 
       (.C(aclk),
        .CE(\beat_counter[7]_i_1_n_0 ),
        .D(\beat_counter[6]_i_1_n_0 ),
        .Q(beat_counter_reg[6]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[7] 
       (.C(aclk),
        .CE(\beat_counter[7]_i_1_n_0 ),
        .D(\beat_counter[7]_i_2_n_0 ),
        .Q(beat_counter_reg[7]),
        .R(areset));
  LUT3 #(
    .INIT(8'h08)) 
    \r_awlen[7]_i_1 
       (.I0(trigger),
        .I1(aw_state),
        .I2(areset),
        .O(\r_awlen[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[0] 
       (.C(aclk),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(in_len[0]),
        .Q(r_awlen[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[1] 
       (.C(aclk),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(in_len[1]),
        .Q(r_awlen[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[2] 
       (.C(aclk),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(in_len[2]),
        .Q(r_awlen[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[3] 
       (.C(aclk),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(in_len[3]),
        .Q(r_awlen[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[4] 
       (.C(aclk),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(in_len[4]),
        .Q(r_awlen[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[5] 
       (.C(aclk),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(in_len[5]),
        .Q(r_awlen[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[6] 
       (.C(aclk),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(in_len[6]),
        .Q(r_awlen[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[7] 
       (.C(aclk),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(in_len[7]),
        .Q(r_awlen[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \read_data_out[63]_i_1 
       (.I0(rvalid),
        .I1(rready),
        .I2(rlast),
        .I3(areset),
        .O(\read_data_out[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[0] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[0]),
        .Q(read_data_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[10] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[10]),
        .Q(read_data_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[11] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[11]),
        .Q(read_data_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[12] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[12]),
        .Q(read_data_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[13] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[13]),
        .Q(read_data_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[14] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[14]),
        .Q(read_data_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[15] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[15]),
        .Q(read_data_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[16] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[16]),
        .Q(read_data_out[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[17] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[17]),
        .Q(read_data_out[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[18] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[18]),
        .Q(read_data_out[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[19] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[19]),
        .Q(read_data_out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[1] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[1]),
        .Q(read_data_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[20] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[20]),
        .Q(read_data_out[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[21] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[21]),
        .Q(read_data_out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[22] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[22]),
        .Q(read_data_out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[23] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[23]),
        .Q(read_data_out[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[24] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[24]),
        .Q(read_data_out[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[25] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[25]),
        .Q(read_data_out[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[26] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[26]),
        .Q(read_data_out[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[27] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[27]),
        .Q(read_data_out[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[28] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[28]),
        .Q(read_data_out[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[29] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[29]),
        .Q(read_data_out[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[2] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[2]),
        .Q(read_data_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[30] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[30]),
        .Q(read_data_out[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[31] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[31]),
        .Q(read_data_out[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[32] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[32]),
        .Q(read_data_out[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[33] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[33]),
        .Q(read_data_out[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[34] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[34]),
        .Q(read_data_out[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[35] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[35]),
        .Q(read_data_out[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[36] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[36]),
        .Q(read_data_out[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[37] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[37]),
        .Q(read_data_out[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[38] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[38]),
        .Q(read_data_out[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[39] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[39]),
        .Q(read_data_out[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[3] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[3]),
        .Q(read_data_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[40] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[40]),
        .Q(read_data_out[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[41] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[41]),
        .Q(read_data_out[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[42] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[42]),
        .Q(read_data_out[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[43] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[43]),
        .Q(read_data_out[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[44] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[44]),
        .Q(read_data_out[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[45] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[45]),
        .Q(read_data_out[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[46] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[46]),
        .Q(read_data_out[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[47] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[47]),
        .Q(read_data_out[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[48] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[48]),
        .Q(read_data_out[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[49] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[49]),
        .Q(read_data_out[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[4] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[4]),
        .Q(read_data_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[50] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[50]),
        .Q(read_data_out[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[51] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[51]),
        .Q(read_data_out[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[52] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[52]),
        .Q(read_data_out[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[53] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[53]),
        .Q(read_data_out[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[54] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[54]),
        .Q(read_data_out[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[55] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[55]),
        .Q(read_data_out[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[56] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[56]),
        .Q(read_data_out[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[57] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[57]),
        .Q(read_data_out[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[58] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[58]),
        .Q(read_data_out[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[59] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[59]),
        .Q(read_data_out[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[5] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[5]),
        .Q(read_data_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[60] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[60]),
        .Q(read_data_out[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[61] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[61]),
        .Q(read_data_out[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[62] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[62]),
        .Q(read_data_out[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[63] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[63]),
        .Q(read_data_out[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[6] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[6]),
        .Q(read_data_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[7] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[7]),
        .Q(read_data_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[8] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[8]),
        .Q(read_data_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_out_reg[9] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rdata[9]),
        .Q(read_data_out[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_id_reg[0] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rid[0]),
        .Q(read_id[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_id_reg[1] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rid[1]),
        .Q(read_id[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_id_reg[2] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rid[2]),
        .Q(read_id[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_id_reg[3] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rid[3]),
        .Q(read_id[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_resp_reg[0] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rresp[0]),
        .Q(read_resp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_resp_reg[1] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rresp[1]),
        .Q(read_resp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_resp_reg[2] 
       (.C(aclk),
        .CE(\read_data_out[63]_i_1_n_0 ),
        .D(rresp[2]),
        .Q(read_resp[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[0]_INST_0 
       (.I0(in_addr[0]),
        .I1(w_state),
        .O(\^wdata [0]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[10]_INST_0 
       (.I0(in_addr[10]),
        .I1(w_state),
        .O(\^wdata [10]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[11]_INST_0 
       (.I0(in_addr[11]),
        .I1(w_state),
        .O(\^wdata [11]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[12]_INST_0 
       (.I0(in_addr[12]),
        .I1(w_state),
        .O(\^wdata [12]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[13]_INST_0 
       (.I0(in_addr[13]),
        .I1(w_state),
        .O(\^wdata [13]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[14]_INST_0 
       (.I0(in_addr[14]),
        .I1(w_state),
        .O(\^wdata [14]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[15]_INST_0 
       (.I0(in_addr[15]),
        .I1(w_state),
        .O(\^wdata [15]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[16]_INST_0 
       (.I0(in_addr[16]),
        .I1(w_state),
        .O(\^wdata [16]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[17]_INST_0 
       (.I0(in_addr[17]),
        .I1(w_state),
        .O(\^wdata [17]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[18]_INST_0 
       (.I0(in_addr[18]),
        .I1(w_state),
        .O(\^wdata [18]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[19]_INST_0 
       (.I0(in_addr[19]),
        .I1(w_state),
        .O(\^wdata [19]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[1]_INST_0 
       (.I0(in_addr[1]),
        .I1(w_state),
        .O(\^wdata [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[20]_INST_0 
       (.I0(in_addr[20]),
        .I1(w_state),
        .O(\^wdata [20]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[21]_INST_0 
       (.I0(in_addr[21]),
        .I1(w_state),
        .O(\^wdata [21]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[22]_INST_0 
       (.I0(in_addr[22]),
        .I1(w_state),
        .O(\^wdata [22]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[23]_INST_0 
       (.I0(in_addr[23]),
        .I1(w_state),
        .O(\^wdata [23]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[24]_INST_0 
       (.I0(in_addr[24]),
        .I1(w_state),
        .O(\^wdata [24]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[25]_INST_0 
       (.I0(in_addr[25]),
        .I1(w_state),
        .O(\^wdata [25]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[26]_INST_0 
       (.I0(in_addr[26]),
        .I1(w_state),
        .O(\^wdata [26]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[27]_INST_0 
       (.I0(in_addr[27]),
        .I1(w_state),
        .O(\^wdata [27]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[28]_INST_0 
       (.I0(in_addr[28]),
        .I1(w_state),
        .O(\^wdata [28]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[29]_INST_0 
       (.I0(in_addr[29]),
        .I1(w_state),
        .O(\^wdata [29]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[2]_INST_0 
       (.I0(in_addr[2]),
        .I1(w_state),
        .O(\^wdata [2]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[30]_INST_0 
       (.I0(in_addr[30]),
        .I1(w_state),
        .O(\^wdata [30]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[31]_INST_0 
       (.I0(in_addr[31]),
        .I1(w_state),
        .O(\^wdata [31]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[3]_INST_0 
       (.I0(in_addr[3]),
        .I1(w_state),
        .O(\^wdata [3]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[4]_INST_0 
       (.I0(in_addr[4]),
        .I1(w_state),
        .O(\^wdata [4]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[5]_INST_0 
       (.I0(in_addr[5]),
        .I1(w_state),
        .O(\^wdata [5]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[6]_INST_0 
       (.I0(in_addr[6]),
        .I1(w_state),
        .O(\^wdata [6]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[7]_INST_0 
       (.I0(in_addr[7]),
        .I1(w_state),
        .O(\^wdata [7]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[8]_INST_0 
       (.I0(in_addr[8]),
        .I1(w_state),
        .O(\^wdata [8]));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata[9]_INST_0 
       (.I0(in_addr[9]),
        .I1(w_state),
        .O(\^wdata [9]));
  LUT2 #(
    .INIT(4'h2)) 
    \wstrb[0]_INST_0 
       (.I0(in_strb[0]),
        .I1(w_state),
        .O(wstrb[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \wstrb[1]_INST_0 
       (.I0(in_strb[1]),
        .I1(w_state),
        .O(wstrb[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \wstrb[2]_INST_0 
       (.I0(in_strb[2]),
        .I1(w_state),
        .O(wstrb[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \wstrb[3]_INST_0 
       (.I0(in_strb[3]),
        .I1(w_state),
        .O(wstrb[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \wstrb[4]_INST_0 
       (.I0(in_strb[4]),
        .I1(w_state),
        .O(wstrb[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \wstrb[5]_INST_0 
       (.I0(in_strb[5]),
        .I1(w_state),
        .O(wstrb[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \wstrb[6]_INST_0 
       (.I0(in_strb[6]),
        .I1(w_state),
        .O(wstrb[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \wstrb[7]_INST_0 
       (.I0(in_strb[7]),
        .I1(w_state),
        .O(wstrb[7]));
  LUT1 #(
    .INIT(2'h1)) 
    wvalid_INST_0
       (.I0(w_state),
        .O(wvalid));
endmodule

(* ADDR_WIDTH = "32" *) (* AR_DEPTH = "32" *) (* AW_DEPTH = "32" *) 
(* DATA_WIDTH = "64" *) (* ID_WIDTH = "4" *) (* LEN_WIDTH = "8" *) 
(* RESPONSE_WIDTH = "3" *) (* R_DEPTH = "32" *) (* SIZE_WIDTH = "4" *) 
(* W_DEPTH = "32" *) 
(* NotValidForBitStream *)
module AXI_TOP_WRAPPER
   (trigger,
    r_trigger,
    aclk,
    areset,
    rd_clk,
    in_addr,
    in_id,
    in_len,
    burst_type,
    in_strb,
    addr_read,
    out_addr,
    awfull,
    awempty,
    addr_read_ready,
    read_wdata,
    w_full,
    w_empty,
    out_wdata,
    ar_addr_read,
    ar_read_ready,
    arfull,
    arempty,
    ar_addr_out,
    wr_r_fifo_data,
    wr_r_fifo_en,
    wr_r_fifo_ready,
    r_full,
    r_empty,
    read_data_out,
    read_resp,
    read_id);
  input trigger;
  input r_trigger;
  input aclk;
  input areset;
  input rd_clk;
  input [31:0]in_addr;
  input [3:0]in_id;
  input [7:0]in_len;
  input [1:0]burst_type;
  input [7:0]in_strb;
  input addr_read;
  output [49:0]out_addr;
  output awfull;
  output awempty;
  output addr_read_ready;
  input read_wdata;
  output w_full;
  output w_empty;
  output [71:0]out_wdata;
  input ar_addr_read;
  output ar_read_ready;
  output arfull;
  output arempty;
  output [49:0]ar_addr_out;
  input [70:0]wr_r_fifo_data;
  input wr_r_fifo_en;
  output wr_r_fifo_ready;
  output r_full;
  output r_empty;
  output [63:0]read_data_out;
  output [2:0]read_resp;
  output [3:0]read_id;

  wire aclk;
  wire aclk_IBUF;
  wire aclk_IBUF_BUFG;
  wire addr_read;
  wire addr_read_IBUF;
  wire addr_read_ready;
  wire addr_read_ready_OBUF;
  wire [49:0]ar_addr_out;
  wire [49:0]ar_addr_out_OBUF;
  wire ar_addr_read;
  wire ar_addr_read_IBUF;
  wire ar_read_ready;
  wire ar_read_ready_OBUF;
  wire [31:0]araddr;
  wire [1:0]arburst;
  wire arempty;
  wire arempty_OBUF;
  wire areset;
  wire areset_IBUF;
  wire arfull;
  wire arfull_OBUF;
  wire [3:0]arid;
  wire [7:0]arlen;
  wire arready;
  wire arvalid;
  wire [31:0]awaddr;
  wire [1:0]awburst;
  wire awempty;
  wire awempty_OBUF;
  wire awfull;
  wire awfull_OBUF;
  wire [3:0]awid;
  wire [7:0]awlen;
  wire awready;
  wire awvalid;
  wire [1:0]burst_type;
  wire [1:0]burst_type_IBUF;
  wire [31:0]in_addr;
  wire [31:0]in_addr_IBUF;
  wire [3:0]in_id;
  wire [3:0]in_id_IBUF;
  wire [7:0]in_len;
  wire [7:0]in_len_IBUF;
  wire [7:0]in_strb;
  wire [7:0]in_strb_IBUF;
  wire [49:0]out_addr;
  wire [49:0]out_addr_OBUF;
  wire [71:0]out_wdata;
  wire [71:0]out_wdata_OBUF;
  wire r_empty;
  wire r_empty_OBUF;
  wire r_full;
  wire r_full_OBUF;
  wire r_trigger;
  wire r_trigger_IBUF;
  wire rd_clk;
  wire rd_clk_IBUF;
  wire rd_clk_IBUF_BUFG;
  wire [63:0]rdata;
  wire [63:0]read_data_out;
  wire [63:0]read_data_out_OBUF;
  wire [3:0]read_id;
  wire [3:0]read_id_OBUF;
  wire [2:0]read_resp;
  wire [2:0]read_resp_OBUF;
  wire read_wdata;
  wire read_wdata_IBUF;
  wire [3:0]rid;
  wire rlast;
  wire rready;
  wire [2:0]rresp;
  wire rvalid;
  wire trigger;
  wire trigger_IBUF;
  wire w_empty;
  wire w_empty_OBUF;
  wire w_full;
  wire w_full_OBUF;
  wire [31:0]wdata;
  wire [70:0]wr_r_fifo_data;
  wire [70:0]wr_r_fifo_data_IBUF;
  wire wr_r_fifo_en;
  wire wr_r_fifo_en_IBUF;
  wire wr_r_fifo_ready;
  wire wr_r_fifo_ready_OBUF;
  wire wready;
  wire [7:0]wstrb;
  wire wvalid;
  wire NLW_WRT_CONTRLER_INST_out_wdata_ready_UNCONNECTED;
  wire NLW_master_inst_bready_UNCONNECTED;
  wire NLW_master_inst_wlast_UNCONNECTED;
  wire [3:0]NLW_master_inst_arsize_UNCONNECTED;
  wire [3:0]NLW_master_inst_awsize_UNCONNECTED;
  wire [63:32]NLW_master_inst_wdata_UNCONNECTED;

  (* ADDR_WIDTH = "32" *) 
  (* AR_DEPTH = "32" *) 
  (* DATA_WIDTH = "64" *) 
  (* ID_WIDTH = "4" *) 
  (* LEN_WIDTH = "8" *) 
  (* RESPONSE_WIDTH = "3" *) 
  (* R_DEPTH = "32" *) 
  (* SIZE_WIDTH = "4" *) 
  READ_BUFFER INST_READ_BUFFER
       (.aclk(aclk_IBUF_BUFG),
        .ar_addr_out(ar_addr_out_OBUF),
        .ar_addr_read(ar_addr_read_IBUF),
        .ar_read_ready(ar_read_ready_OBUF),
        .araddr(araddr),
        .arburst(arburst),
        .arempty(arempty_OBUF),
        .areset(areset_IBUF),
        .arfull(arfull_OBUF),
        .arid(arid),
        .arlen(arlen),
        .arready(arready),
        .arsize({1'b0,1'b0,1'b0,1'b0}),
        .arvalid(arvalid),
        .r_empty(r_empty_OBUF),
        .r_fifo_wr_clk(1'b0),
        .r_full(r_full_OBUF),
        .rd_clk(rd_clk_IBUF_BUFG),
        .rdata(rdata),
        .rid(rid),
        .rlast(rlast),
        .rready(rready),
        .rresp(rresp),
        .rvalid(rvalid),
        .wr_r_fifo_data(wr_r_fifo_data_IBUF),
        .wr_r_fifo_en(wr_r_fifo_en_IBUF),
        .wr_r_fifo_ready(wr_r_fifo_ready_OBUF));
  (* ADDR_WIDTH = "32" *) 
  (* AW_DEPTH = "32" *) 
  (* DATA_WIDTH = "64" *) 
  (* ID_WIDTH = "4" *) 
  (* LEN_WIDTH = "8" *) 
  (* RESPONSE_WIDTH = "3" *) 
  (* SIZE_WIDTH = "4" *) 
  (* W_DEPTH = "32" *) 
  WRITE_BUFFER WRT_CONTRLER_INST
       (.Aclk(aclk_IBUF_BUFG),
        .addr_read(addr_read_IBUF),
        .addr_read_ready(addr_read_ready_OBUF),
        .areset(areset_IBUF),
        .awaddr(awaddr),
        .awburst(awburst),
        .awempty(awempty_OBUF),
        .awfull(awfull_OBUF),
        .awid(awid),
        .awlen(awlen),
        .awready(awready),
        .awsize({1'b0,1'b0,1'b0,1'b0}),
        .awvalid(awvalid),
        .out_addr(out_addr_OBUF),
        .out_wdata(out_wdata_OBUF),
        .out_wdata_ready(NLW_WRT_CONTRLER_INST_out_wdata_ready_UNCONNECTED),
        .rd_clk(rd_clk_IBUF_BUFG),
        .read_wdata(read_wdata_IBUF),
        .w_empty(w_empty_OBUF),
        .w_full(w_full_OBUF),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wdata}),
        .wlast(1'b0),
        .wready(wready),
        .wstrb(wstrb),
        .wvalid(wvalid));
  BUFG aclk_IBUF_BUFG_inst
       (.I(aclk_IBUF),
        .O(aclk_IBUF_BUFG));
  IBUF aclk_IBUF_inst
       (.I(aclk),
        .O(aclk_IBUF));
  IBUF addr_read_IBUF_inst
       (.I(addr_read),
        .O(addr_read_IBUF));
  OBUF addr_read_ready_OBUF_inst
       (.I(addr_read_ready_OBUF),
        .O(addr_read_ready));
  OBUF \ar_addr_out_OBUF[0]_inst 
       (.I(ar_addr_out_OBUF[0]),
        .O(ar_addr_out[0]));
  OBUF \ar_addr_out_OBUF[10]_inst 
       (.I(ar_addr_out_OBUF[10]),
        .O(ar_addr_out[10]));
  OBUF \ar_addr_out_OBUF[11]_inst 
       (.I(ar_addr_out_OBUF[11]),
        .O(ar_addr_out[11]));
  OBUF \ar_addr_out_OBUF[12]_inst 
       (.I(ar_addr_out_OBUF[12]),
        .O(ar_addr_out[12]));
  OBUF \ar_addr_out_OBUF[13]_inst 
       (.I(ar_addr_out_OBUF[13]),
        .O(ar_addr_out[13]));
  OBUF \ar_addr_out_OBUF[14]_inst 
       (.I(ar_addr_out_OBUF[14]),
        .O(ar_addr_out[14]));
  OBUF \ar_addr_out_OBUF[15]_inst 
       (.I(ar_addr_out_OBUF[15]),
        .O(ar_addr_out[15]));
  OBUF \ar_addr_out_OBUF[16]_inst 
       (.I(ar_addr_out_OBUF[16]),
        .O(ar_addr_out[16]));
  OBUF \ar_addr_out_OBUF[17]_inst 
       (.I(ar_addr_out_OBUF[17]),
        .O(ar_addr_out[17]));
  OBUF \ar_addr_out_OBUF[18]_inst 
       (.I(ar_addr_out_OBUF[18]),
        .O(ar_addr_out[18]));
  OBUF \ar_addr_out_OBUF[19]_inst 
       (.I(ar_addr_out_OBUF[19]),
        .O(ar_addr_out[19]));
  OBUF \ar_addr_out_OBUF[1]_inst 
       (.I(ar_addr_out_OBUF[1]),
        .O(ar_addr_out[1]));
  OBUF \ar_addr_out_OBUF[20]_inst 
       (.I(ar_addr_out_OBUF[20]),
        .O(ar_addr_out[20]));
  OBUF \ar_addr_out_OBUF[21]_inst 
       (.I(ar_addr_out_OBUF[21]),
        .O(ar_addr_out[21]));
  OBUF \ar_addr_out_OBUF[22]_inst 
       (.I(ar_addr_out_OBUF[22]),
        .O(ar_addr_out[22]));
  OBUF \ar_addr_out_OBUF[23]_inst 
       (.I(ar_addr_out_OBUF[23]),
        .O(ar_addr_out[23]));
  OBUF \ar_addr_out_OBUF[24]_inst 
       (.I(ar_addr_out_OBUF[24]),
        .O(ar_addr_out[24]));
  OBUF \ar_addr_out_OBUF[25]_inst 
       (.I(ar_addr_out_OBUF[25]),
        .O(ar_addr_out[25]));
  OBUF \ar_addr_out_OBUF[26]_inst 
       (.I(ar_addr_out_OBUF[26]),
        .O(ar_addr_out[26]));
  OBUF \ar_addr_out_OBUF[27]_inst 
       (.I(ar_addr_out_OBUF[27]),
        .O(ar_addr_out[27]));
  OBUF \ar_addr_out_OBUF[28]_inst 
       (.I(ar_addr_out_OBUF[28]),
        .O(ar_addr_out[28]));
  OBUF \ar_addr_out_OBUF[29]_inst 
       (.I(ar_addr_out_OBUF[29]),
        .O(ar_addr_out[29]));
  OBUF \ar_addr_out_OBUF[2]_inst 
       (.I(ar_addr_out_OBUF[2]),
        .O(ar_addr_out[2]));
  OBUF \ar_addr_out_OBUF[30]_inst 
       (.I(ar_addr_out_OBUF[30]),
        .O(ar_addr_out[30]));
  OBUF \ar_addr_out_OBUF[31]_inst 
       (.I(ar_addr_out_OBUF[31]),
        .O(ar_addr_out[31]));
  OBUF \ar_addr_out_OBUF[32]_inst 
       (.I(ar_addr_out_OBUF[32]),
        .O(ar_addr_out[32]));
  OBUF \ar_addr_out_OBUF[33]_inst 
       (.I(ar_addr_out_OBUF[33]),
        .O(ar_addr_out[33]));
  OBUF \ar_addr_out_OBUF[34]_inst 
       (.I(ar_addr_out_OBUF[34]),
        .O(ar_addr_out[34]));
  OBUF \ar_addr_out_OBUF[35]_inst 
       (.I(ar_addr_out_OBUF[35]),
        .O(ar_addr_out[35]));
  OBUF \ar_addr_out_OBUF[36]_inst 
       (.I(ar_addr_out_OBUF[36]),
        .O(ar_addr_out[36]));
  OBUF \ar_addr_out_OBUF[37]_inst 
       (.I(ar_addr_out_OBUF[37]),
        .O(ar_addr_out[37]));
  OBUF \ar_addr_out_OBUF[38]_inst 
       (.I(ar_addr_out_OBUF[38]),
        .O(ar_addr_out[38]));
  OBUF \ar_addr_out_OBUF[39]_inst 
       (.I(ar_addr_out_OBUF[39]),
        .O(ar_addr_out[39]));
  OBUF \ar_addr_out_OBUF[3]_inst 
       (.I(ar_addr_out_OBUF[3]),
        .O(ar_addr_out[3]));
  OBUF \ar_addr_out_OBUF[40]_inst 
       (.I(ar_addr_out_OBUF[40]),
        .O(ar_addr_out[40]));
  OBUF \ar_addr_out_OBUF[41]_inst 
       (.I(ar_addr_out_OBUF[41]),
        .O(ar_addr_out[41]));
  OBUF \ar_addr_out_OBUF[42]_inst 
       (.I(ar_addr_out_OBUF[42]),
        .O(ar_addr_out[42]));
  OBUF \ar_addr_out_OBUF[43]_inst 
       (.I(ar_addr_out_OBUF[43]),
        .O(ar_addr_out[43]));
  OBUF \ar_addr_out_OBUF[44]_inst 
       (.I(ar_addr_out_OBUF[44]),
        .O(ar_addr_out[44]));
  OBUF \ar_addr_out_OBUF[45]_inst 
       (.I(ar_addr_out_OBUF[45]),
        .O(ar_addr_out[45]));
  OBUF \ar_addr_out_OBUF[46]_inst 
       (.I(ar_addr_out_OBUF[46]),
        .O(ar_addr_out[46]));
  OBUF \ar_addr_out_OBUF[47]_inst 
       (.I(ar_addr_out_OBUF[47]),
        .O(ar_addr_out[47]));
  OBUF \ar_addr_out_OBUF[48]_inst 
       (.I(ar_addr_out_OBUF[48]),
        .O(ar_addr_out[48]));
  OBUF \ar_addr_out_OBUF[49]_inst 
       (.I(ar_addr_out_OBUF[49]),
        .O(ar_addr_out[49]));
  OBUF \ar_addr_out_OBUF[4]_inst 
       (.I(ar_addr_out_OBUF[4]),
        .O(ar_addr_out[4]));
  OBUF \ar_addr_out_OBUF[5]_inst 
       (.I(ar_addr_out_OBUF[5]),
        .O(ar_addr_out[5]));
  OBUF \ar_addr_out_OBUF[6]_inst 
       (.I(ar_addr_out_OBUF[6]),
        .O(ar_addr_out[6]));
  OBUF \ar_addr_out_OBUF[7]_inst 
       (.I(ar_addr_out_OBUF[7]),
        .O(ar_addr_out[7]));
  OBUF \ar_addr_out_OBUF[8]_inst 
       (.I(ar_addr_out_OBUF[8]),
        .O(ar_addr_out[8]));
  OBUF \ar_addr_out_OBUF[9]_inst 
       (.I(ar_addr_out_OBUF[9]),
        .O(ar_addr_out[9]));
  IBUF ar_addr_read_IBUF_inst
       (.I(ar_addr_read),
        .O(ar_addr_read_IBUF));
  OBUF ar_read_ready_OBUF_inst
       (.I(ar_read_ready_OBUF),
        .O(ar_read_ready));
  OBUF arempty_OBUF_inst
       (.I(arempty_OBUF),
        .O(arempty));
  IBUF areset_IBUF_inst
       (.I(areset),
        .O(areset_IBUF));
  OBUF arfull_OBUF_inst
       (.I(arfull_OBUF),
        .O(arfull));
  OBUF awempty_OBUF_inst
       (.I(awempty_OBUF),
        .O(awempty));
  OBUF awfull_OBUF_inst
       (.I(awfull_OBUF),
        .O(awfull));
  IBUF \burst_type_IBUF[0]_inst 
       (.I(burst_type[0]),
        .O(burst_type_IBUF[0]));
  IBUF \burst_type_IBUF[1]_inst 
       (.I(burst_type[1]),
        .O(burst_type_IBUF[1]));
  IBUF \in_addr_IBUF[0]_inst 
       (.I(in_addr[0]),
        .O(in_addr_IBUF[0]));
  IBUF \in_addr_IBUF[10]_inst 
       (.I(in_addr[10]),
        .O(in_addr_IBUF[10]));
  IBUF \in_addr_IBUF[11]_inst 
       (.I(in_addr[11]),
        .O(in_addr_IBUF[11]));
  IBUF \in_addr_IBUF[12]_inst 
       (.I(in_addr[12]),
        .O(in_addr_IBUF[12]));
  IBUF \in_addr_IBUF[13]_inst 
       (.I(in_addr[13]),
        .O(in_addr_IBUF[13]));
  IBUF \in_addr_IBUF[14]_inst 
       (.I(in_addr[14]),
        .O(in_addr_IBUF[14]));
  IBUF \in_addr_IBUF[15]_inst 
       (.I(in_addr[15]),
        .O(in_addr_IBUF[15]));
  IBUF \in_addr_IBUF[16]_inst 
       (.I(in_addr[16]),
        .O(in_addr_IBUF[16]));
  IBUF \in_addr_IBUF[17]_inst 
       (.I(in_addr[17]),
        .O(in_addr_IBUF[17]));
  IBUF \in_addr_IBUF[18]_inst 
       (.I(in_addr[18]),
        .O(in_addr_IBUF[18]));
  IBUF \in_addr_IBUF[19]_inst 
       (.I(in_addr[19]),
        .O(in_addr_IBUF[19]));
  IBUF \in_addr_IBUF[1]_inst 
       (.I(in_addr[1]),
        .O(in_addr_IBUF[1]));
  IBUF \in_addr_IBUF[20]_inst 
       (.I(in_addr[20]),
        .O(in_addr_IBUF[20]));
  IBUF \in_addr_IBUF[21]_inst 
       (.I(in_addr[21]),
        .O(in_addr_IBUF[21]));
  IBUF \in_addr_IBUF[22]_inst 
       (.I(in_addr[22]),
        .O(in_addr_IBUF[22]));
  IBUF \in_addr_IBUF[23]_inst 
       (.I(in_addr[23]),
        .O(in_addr_IBUF[23]));
  IBUF \in_addr_IBUF[24]_inst 
       (.I(in_addr[24]),
        .O(in_addr_IBUF[24]));
  IBUF \in_addr_IBUF[25]_inst 
       (.I(in_addr[25]),
        .O(in_addr_IBUF[25]));
  IBUF \in_addr_IBUF[26]_inst 
       (.I(in_addr[26]),
        .O(in_addr_IBUF[26]));
  IBUF \in_addr_IBUF[27]_inst 
       (.I(in_addr[27]),
        .O(in_addr_IBUF[27]));
  IBUF \in_addr_IBUF[28]_inst 
       (.I(in_addr[28]),
        .O(in_addr_IBUF[28]));
  IBUF \in_addr_IBUF[29]_inst 
       (.I(in_addr[29]),
        .O(in_addr_IBUF[29]));
  IBUF \in_addr_IBUF[2]_inst 
       (.I(in_addr[2]),
        .O(in_addr_IBUF[2]));
  IBUF \in_addr_IBUF[30]_inst 
       (.I(in_addr[30]),
        .O(in_addr_IBUF[30]));
  IBUF \in_addr_IBUF[31]_inst 
       (.I(in_addr[31]),
        .O(in_addr_IBUF[31]));
  IBUF \in_addr_IBUF[3]_inst 
       (.I(in_addr[3]),
        .O(in_addr_IBUF[3]));
  IBUF \in_addr_IBUF[4]_inst 
       (.I(in_addr[4]),
        .O(in_addr_IBUF[4]));
  IBUF \in_addr_IBUF[5]_inst 
       (.I(in_addr[5]),
        .O(in_addr_IBUF[5]));
  IBUF \in_addr_IBUF[6]_inst 
       (.I(in_addr[6]),
        .O(in_addr_IBUF[6]));
  IBUF \in_addr_IBUF[7]_inst 
       (.I(in_addr[7]),
        .O(in_addr_IBUF[7]));
  IBUF \in_addr_IBUF[8]_inst 
       (.I(in_addr[8]),
        .O(in_addr_IBUF[8]));
  IBUF \in_addr_IBUF[9]_inst 
       (.I(in_addr[9]),
        .O(in_addr_IBUF[9]));
  IBUF \in_id_IBUF[0]_inst 
       (.I(in_id[0]),
        .O(in_id_IBUF[0]));
  IBUF \in_id_IBUF[1]_inst 
       (.I(in_id[1]),
        .O(in_id_IBUF[1]));
  IBUF \in_id_IBUF[2]_inst 
       (.I(in_id[2]),
        .O(in_id_IBUF[2]));
  IBUF \in_id_IBUF[3]_inst 
       (.I(in_id[3]),
        .O(in_id_IBUF[3]));
  IBUF \in_len_IBUF[0]_inst 
       (.I(in_len[0]),
        .O(in_len_IBUF[0]));
  IBUF \in_len_IBUF[1]_inst 
       (.I(in_len[1]),
        .O(in_len_IBUF[1]));
  IBUF \in_len_IBUF[2]_inst 
       (.I(in_len[2]),
        .O(in_len_IBUF[2]));
  IBUF \in_len_IBUF[3]_inst 
       (.I(in_len[3]),
        .O(in_len_IBUF[3]));
  IBUF \in_len_IBUF[4]_inst 
       (.I(in_len[4]),
        .O(in_len_IBUF[4]));
  IBUF \in_len_IBUF[5]_inst 
       (.I(in_len[5]),
        .O(in_len_IBUF[5]));
  IBUF \in_len_IBUF[6]_inst 
       (.I(in_len[6]),
        .O(in_len_IBUF[6]));
  IBUF \in_len_IBUF[7]_inst 
       (.I(in_len[7]),
        .O(in_len_IBUF[7]));
  IBUF \in_strb_IBUF[0]_inst 
       (.I(in_strb[0]),
        .O(in_strb_IBUF[0]));
  IBUF \in_strb_IBUF[1]_inst 
       (.I(in_strb[1]),
        .O(in_strb_IBUF[1]));
  IBUF \in_strb_IBUF[2]_inst 
       (.I(in_strb[2]),
        .O(in_strb_IBUF[2]));
  IBUF \in_strb_IBUF[3]_inst 
       (.I(in_strb[3]),
        .O(in_strb_IBUF[3]));
  IBUF \in_strb_IBUF[4]_inst 
       (.I(in_strb[4]),
        .O(in_strb_IBUF[4]));
  IBUF \in_strb_IBUF[5]_inst 
       (.I(in_strb[5]),
        .O(in_strb_IBUF[5]));
  IBUF \in_strb_IBUF[6]_inst 
       (.I(in_strb[6]),
        .O(in_strb_IBUF[6]));
  IBUF \in_strb_IBUF[7]_inst 
       (.I(in_strb[7]),
        .O(in_strb_IBUF[7]));
  (* ADDR_WIDTH = "32" *) 
  (* DATA_WIDTH = "64" *) 
  (* IDEL = "2'b00" *) 
  (* ID_WIDTH = "4" *) 
  (* LEN_WIDTH = "8" *) 
  (* RESPONSE_WIDTH = "3" *) 
  (* SIZE_WIDTH = "4" *) 
  (* START = "2'b01" *) 
  AXI_MASTER master_inst
       (.aclk(aclk_IBUF_BUFG),
        .araddr(araddr),
        .arburst(arburst),
        .areset(areset_IBUF),
        .arid(arid),
        .arlen(arlen),
        .arready(arready),
        .arsize(NLW_master_inst_arsize_UNCONNECTED[3:0]),
        .arvalid(arvalid),
        .awaddr(awaddr),
        .awburst(awburst),
        .awid(awid),
        .awlen(awlen),
        .awready(awready),
        .awsize(NLW_master_inst_awsize_UNCONNECTED[3:0]),
        .awvalid(awvalid),
        .bid({1'b0,1'b0,1'b0,1'b0}),
        .bready(NLW_master_inst_bready_UNCONNECTED),
        .bresp({1'b0,1'b0,1'b0}),
        .burst_type(burst_type_IBUF),
        .bvalid(1'b0),
        .in_addr(in_addr_IBUF),
        .in_id(in_id_IBUF),
        .in_len(in_len_IBUF),
        .in_strb(in_strb_IBUF),
        .r_trigger(r_trigger_IBUF),
        .rdata(rdata),
        .read_data_out(read_data_out_OBUF),
        .read_id(read_id_OBUF),
        .read_resp(read_resp_OBUF),
        .rid(rid),
        .rlast(rlast),
        .rready(rready),
        .rresp(rresp),
        .rvalid(rvalid),
        .trigger(trigger_IBUF),
        .wdata({NLW_master_inst_wdata_UNCONNECTED[63:32],wdata}),
        .wlast(NLW_master_inst_wlast_UNCONNECTED),
        .wready(wready),
        .wstrb(wstrb),
        .wvalid(wvalid));
  OBUF \out_addr_OBUF[0]_inst 
       (.I(out_addr_OBUF[0]),
        .O(out_addr[0]));
  OBUF \out_addr_OBUF[10]_inst 
       (.I(out_addr_OBUF[10]),
        .O(out_addr[10]));
  OBUF \out_addr_OBUF[11]_inst 
       (.I(out_addr_OBUF[11]),
        .O(out_addr[11]));
  OBUF \out_addr_OBUF[12]_inst 
       (.I(out_addr_OBUF[12]),
        .O(out_addr[12]));
  OBUF \out_addr_OBUF[13]_inst 
       (.I(out_addr_OBUF[13]),
        .O(out_addr[13]));
  OBUF \out_addr_OBUF[14]_inst 
       (.I(out_addr_OBUF[14]),
        .O(out_addr[14]));
  OBUF \out_addr_OBUF[15]_inst 
       (.I(out_addr_OBUF[15]),
        .O(out_addr[15]));
  OBUF \out_addr_OBUF[16]_inst 
       (.I(out_addr_OBUF[16]),
        .O(out_addr[16]));
  OBUF \out_addr_OBUF[17]_inst 
       (.I(out_addr_OBUF[17]),
        .O(out_addr[17]));
  OBUF \out_addr_OBUF[18]_inst 
       (.I(out_addr_OBUF[18]),
        .O(out_addr[18]));
  OBUF \out_addr_OBUF[19]_inst 
       (.I(out_addr_OBUF[19]),
        .O(out_addr[19]));
  OBUF \out_addr_OBUF[1]_inst 
       (.I(out_addr_OBUF[1]),
        .O(out_addr[1]));
  OBUF \out_addr_OBUF[20]_inst 
       (.I(out_addr_OBUF[20]),
        .O(out_addr[20]));
  OBUF \out_addr_OBUF[21]_inst 
       (.I(out_addr_OBUF[21]),
        .O(out_addr[21]));
  OBUF \out_addr_OBUF[22]_inst 
       (.I(out_addr_OBUF[22]),
        .O(out_addr[22]));
  OBUF \out_addr_OBUF[23]_inst 
       (.I(out_addr_OBUF[23]),
        .O(out_addr[23]));
  OBUF \out_addr_OBUF[24]_inst 
       (.I(out_addr_OBUF[24]),
        .O(out_addr[24]));
  OBUF \out_addr_OBUF[25]_inst 
       (.I(out_addr_OBUF[25]),
        .O(out_addr[25]));
  OBUF \out_addr_OBUF[26]_inst 
       (.I(out_addr_OBUF[26]),
        .O(out_addr[26]));
  OBUF \out_addr_OBUF[27]_inst 
       (.I(out_addr_OBUF[27]),
        .O(out_addr[27]));
  OBUF \out_addr_OBUF[28]_inst 
       (.I(out_addr_OBUF[28]),
        .O(out_addr[28]));
  OBUF \out_addr_OBUF[29]_inst 
       (.I(out_addr_OBUF[29]),
        .O(out_addr[29]));
  OBUF \out_addr_OBUF[2]_inst 
       (.I(out_addr_OBUF[2]),
        .O(out_addr[2]));
  OBUF \out_addr_OBUF[30]_inst 
       (.I(out_addr_OBUF[30]),
        .O(out_addr[30]));
  OBUF \out_addr_OBUF[31]_inst 
       (.I(out_addr_OBUF[31]),
        .O(out_addr[31]));
  OBUF \out_addr_OBUF[32]_inst 
       (.I(out_addr_OBUF[32]),
        .O(out_addr[32]));
  OBUF \out_addr_OBUF[33]_inst 
       (.I(out_addr_OBUF[33]),
        .O(out_addr[33]));
  OBUF \out_addr_OBUF[34]_inst 
       (.I(out_addr_OBUF[34]),
        .O(out_addr[34]));
  OBUF \out_addr_OBUF[35]_inst 
       (.I(out_addr_OBUF[35]),
        .O(out_addr[35]));
  OBUF \out_addr_OBUF[36]_inst 
       (.I(out_addr_OBUF[36]),
        .O(out_addr[36]));
  OBUF \out_addr_OBUF[37]_inst 
       (.I(out_addr_OBUF[37]),
        .O(out_addr[37]));
  OBUF \out_addr_OBUF[38]_inst 
       (.I(out_addr_OBUF[38]),
        .O(out_addr[38]));
  OBUF \out_addr_OBUF[39]_inst 
       (.I(out_addr_OBUF[39]),
        .O(out_addr[39]));
  OBUF \out_addr_OBUF[3]_inst 
       (.I(out_addr_OBUF[3]),
        .O(out_addr[3]));
  OBUF \out_addr_OBUF[40]_inst 
       (.I(out_addr_OBUF[40]),
        .O(out_addr[40]));
  OBUF \out_addr_OBUF[41]_inst 
       (.I(out_addr_OBUF[41]),
        .O(out_addr[41]));
  OBUF \out_addr_OBUF[42]_inst 
       (.I(out_addr_OBUF[42]),
        .O(out_addr[42]));
  OBUF \out_addr_OBUF[43]_inst 
       (.I(out_addr_OBUF[43]),
        .O(out_addr[43]));
  OBUF \out_addr_OBUF[44]_inst 
       (.I(out_addr_OBUF[44]),
        .O(out_addr[44]));
  OBUF \out_addr_OBUF[45]_inst 
       (.I(out_addr_OBUF[45]),
        .O(out_addr[45]));
  OBUF \out_addr_OBUF[46]_inst 
       (.I(out_addr_OBUF[46]),
        .O(out_addr[46]));
  OBUF \out_addr_OBUF[47]_inst 
       (.I(out_addr_OBUF[47]),
        .O(out_addr[47]));
  OBUF \out_addr_OBUF[48]_inst 
       (.I(out_addr_OBUF[48]),
        .O(out_addr[48]));
  OBUF \out_addr_OBUF[49]_inst 
       (.I(out_addr_OBUF[49]),
        .O(out_addr[49]));
  OBUF \out_addr_OBUF[4]_inst 
       (.I(out_addr_OBUF[4]),
        .O(out_addr[4]));
  OBUF \out_addr_OBUF[5]_inst 
       (.I(out_addr_OBUF[5]),
        .O(out_addr[5]));
  OBUF \out_addr_OBUF[6]_inst 
       (.I(out_addr_OBUF[6]),
        .O(out_addr[6]));
  OBUF \out_addr_OBUF[7]_inst 
       (.I(out_addr_OBUF[7]),
        .O(out_addr[7]));
  OBUF \out_addr_OBUF[8]_inst 
       (.I(out_addr_OBUF[8]),
        .O(out_addr[8]));
  OBUF \out_addr_OBUF[9]_inst 
       (.I(out_addr_OBUF[9]),
        .O(out_addr[9]));
  OBUF \out_wdata_OBUF[0]_inst 
       (.I(out_wdata_OBUF[0]),
        .O(out_wdata[0]));
  OBUF \out_wdata_OBUF[10]_inst 
       (.I(out_wdata_OBUF[10]),
        .O(out_wdata[10]));
  OBUF \out_wdata_OBUF[11]_inst 
       (.I(out_wdata_OBUF[11]),
        .O(out_wdata[11]));
  OBUF \out_wdata_OBUF[12]_inst 
       (.I(out_wdata_OBUF[12]),
        .O(out_wdata[12]));
  OBUF \out_wdata_OBUF[13]_inst 
       (.I(out_wdata_OBUF[13]),
        .O(out_wdata[13]));
  OBUF \out_wdata_OBUF[14]_inst 
       (.I(out_wdata_OBUF[14]),
        .O(out_wdata[14]));
  OBUF \out_wdata_OBUF[15]_inst 
       (.I(out_wdata_OBUF[15]),
        .O(out_wdata[15]));
  OBUF \out_wdata_OBUF[16]_inst 
       (.I(out_wdata_OBUF[16]),
        .O(out_wdata[16]));
  OBUF \out_wdata_OBUF[17]_inst 
       (.I(out_wdata_OBUF[17]),
        .O(out_wdata[17]));
  OBUF \out_wdata_OBUF[18]_inst 
       (.I(out_wdata_OBUF[18]),
        .O(out_wdata[18]));
  OBUF \out_wdata_OBUF[19]_inst 
       (.I(out_wdata_OBUF[19]),
        .O(out_wdata[19]));
  OBUF \out_wdata_OBUF[1]_inst 
       (.I(out_wdata_OBUF[1]),
        .O(out_wdata[1]));
  OBUF \out_wdata_OBUF[20]_inst 
       (.I(out_wdata_OBUF[20]),
        .O(out_wdata[20]));
  OBUF \out_wdata_OBUF[21]_inst 
       (.I(out_wdata_OBUF[21]),
        .O(out_wdata[21]));
  OBUF \out_wdata_OBUF[22]_inst 
       (.I(out_wdata_OBUF[22]),
        .O(out_wdata[22]));
  OBUF \out_wdata_OBUF[23]_inst 
       (.I(out_wdata_OBUF[23]),
        .O(out_wdata[23]));
  OBUF \out_wdata_OBUF[24]_inst 
       (.I(out_wdata_OBUF[24]),
        .O(out_wdata[24]));
  OBUF \out_wdata_OBUF[25]_inst 
       (.I(out_wdata_OBUF[25]),
        .O(out_wdata[25]));
  OBUF \out_wdata_OBUF[26]_inst 
       (.I(out_wdata_OBUF[26]),
        .O(out_wdata[26]));
  OBUF \out_wdata_OBUF[27]_inst 
       (.I(out_wdata_OBUF[27]),
        .O(out_wdata[27]));
  OBUF \out_wdata_OBUF[28]_inst 
       (.I(out_wdata_OBUF[28]),
        .O(out_wdata[28]));
  OBUF \out_wdata_OBUF[29]_inst 
       (.I(out_wdata_OBUF[29]),
        .O(out_wdata[29]));
  OBUF \out_wdata_OBUF[2]_inst 
       (.I(out_wdata_OBUF[2]),
        .O(out_wdata[2]));
  OBUF \out_wdata_OBUF[30]_inst 
       (.I(out_wdata_OBUF[30]),
        .O(out_wdata[30]));
  OBUF \out_wdata_OBUF[31]_inst 
       (.I(out_wdata_OBUF[31]),
        .O(out_wdata[31]));
  OBUF \out_wdata_OBUF[32]_inst 
       (.I(out_wdata_OBUF[32]),
        .O(out_wdata[32]));
  OBUF \out_wdata_OBUF[33]_inst 
       (.I(out_wdata_OBUF[33]),
        .O(out_wdata[33]));
  OBUF \out_wdata_OBUF[34]_inst 
       (.I(out_wdata_OBUF[34]),
        .O(out_wdata[34]));
  OBUF \out_wdata_OBUF[35]_inst 
       (.I(out_wdata_OBUF[35]),
        .O(out_wdata[35]));
  OBUF \out_wdata_OBUF[36]_inst 
       (.I(out_wdata_OBUF[36]),
        .O(out_wdata[36]));
  OBUF \out_wdata_OBUF[37]_inst 
       (.I(out_wdata_OBUF[37]),
        .O(out_wdata[37]));
  OBUF \out_wdata_OBUF[38]_inst 
       (.I(out_wdata_OBUF[38]),
        .O(out_wdata[38]));
  OBUF \out_wdata_OBUF[39]_inst 
       (.I(out_wdata_OBUF[39]),
        .O(out_wdata[39]));
  OBUF \out_wdata_OBUF[3]_inst 
       (.I(out_wdata_OBUF[3]),
        .O(out_wdata[3]));
  OBUF \out_wdata_OBUF[40]_inst 
       (.I(out_wdata_OBUF[40]),
        .O(out_wdata[40]));
  OBUF \out_wdata_OBUF[41]_inst 
       (.I(out_wdata_OBUF[41]),
        .O(out_wdata[41]));
  OBUF \out_wdata_OBUF[42]_inst 
       (.I(out_wdata_OBUF[42]),
        .O(out_wdata[42]));
  OBUF \out_wdata_OBUF[43]_inst 
       (.I(out_wdata_OBUF[43]),
        .O(out_wdata[43]));
  OBUF \out_wdata_OBUF[44]_inst 
       (.I(out_wdata_OBUF[44]),
        .O(out_wdata[44]));
  OBUF \out_wdata_OBUF[45]_inst 
       (.I(out_wdata_OBUF[45]),
        .O(out_wdata[45]));
  OBUF \out_wdata_OBUF[46]_inst 
       (.I(out_wdata_OBUF[46]),
        .O(out_wdata[46]));
  OBUF \out_wdata_OBUF[47]_inst 
       (.I(out_wdata_OBUF[47]),
        .O(out_wdata[47]));
  OBUF \out_wdata_OBUF[48]_inst 
       (.I(out_wdata_OBUF[48]),
        .O(out_wdata[48]));
  OBUF \out_wdata_OBUF[49]_inst 
       (.I(out_wdata_OBUF[49]),
        .O(out_wdata[49]));
  OBUF \out_wdata_OBUF[4]_inst 
       (.I(out_wdata_OBUF[4]),
        .O(out_wdata[4]));
  OBUF \out_wdata_OBUF[50]_inst 
       (.I(out_wdata_OBUF[50]),
        .O(out_wdata[50]));
  OBUF \out_wdata_OBUF[51]_inst 
       (.I(out_wdata_OBUF[51]),
        .O(out_wdata[51]));
  OBUF \out_wdata_OBUF[52]_inst 
       (.I(out_wdata_OBUF[52]),
        .O(out_wdata[52]));
  OBUF \out_wdata_OBUF[53]_inst 
       (.I(out_wdata_OBUF[53]),
        .O(out_wdata[53]));
  OBUF \out_wdata_OBUF[54]_inst 
       (.I(out_wdata_OBUF[54]),
        .O(out_wdata[54]));
  OBUF \out_wdata_OBUF[55]_inst 
       (.I(out_wdata_OBUF[55]),
        .O(out_wdata[55]));
  OBUF \out_wdata_OBUF[56]_inst 
       (.I(out_wdata_OBUF[56]),
        .O(out_wdata[56]));
  OBUF \out_wdata_OBUF[57]_inst 
       (.I(out_wdata_OBUF[57]),
        .O(out_wdata[57]));
  OBUF \out_wdata_OBUF[58]_inst 
       (.I(out_wdata_OBUF[58]),
        .O(out_wdata[58]));
  OBUF \out_wdata_OBUF[59]_inst 
       (.I(out_wdata_OBUF[59]),
        .O(out_wdata[59]));
  OBUF \out_wdata_OBUF[5]_inst 
       (.I(out_wdata_OBUF[5]),
        .O(out_wdata[5]));
  OBUF \out_wdata_OBUF[60]_inst 
       (.I(out_wdata_OBUF[60]),
        .O(out_wdata[60]));
  OBUF \out_wdata_OBUF[61]_inst 
       (.I(out_wdata_OBUF[61]),
        .O(out_wdata[61]));
  OBUF \out_wdata_OBUF[62]_inst 
       (.I(out_wdata_OBUF[62]),
        .O(out_wdata[62]));
  OBUF \out_wdata_OBUF[63]_inst 
       (.I(out_wdata_OBUF[63]),
        .O(out_wdata[63]));
  OBUF \out_wdata_OBUF[64]_inst 
       (.I(out_wdata_OBUF[64]),
        .O(out_wdata[64]));
  OBUF \out_wdata_OBUF[65]_inst 
       (.I(out_wdata_OBUF[65]),
        .O(out_wdata[65]));
  OBUF \out_wdata_OBUF[66]_inst 
       (.I(out_wdata_OBUF[66]),
        .O(out_wdata[66]));
  OBUF \out_wdata_OBUF[67]_inst 
       (.I(out_wdata_OBUF[67]),
        .O(out_wdata[67]));
  OBUF \out_wdata_OBUF[68]_inst 
       (.I(out_wdata_OBUF[68]),
        .O(out_wdata[68]));
  OBUF \out_wdata_OBUF[69]_inst 
       (.I(out_wdata_OBUF[69]),
        .O(out_wdata[69]));
  OBUF \out_wdata_OBUF[6]_inst 
       (.I(out_wdata_OBUF[6]),
        .O(out_wdata[6]));
  OBUF \out_wdata_OBUF[70]_inst 
       (.I(out_wdata_OBUF[70]),
        .O(out_wdata[70]));
  OBUF \out_wdata_OBUF[71]_inst 
       (.I(out_wdata_OBUF[71]),
        .O(out_wdata[71]));
  OBUF \out_wdata_OBUF[7]_inst 
       (.I(out_wdata_OBUF[7]),
        .O(out_wdata[7]));
  OBUF \out_wdata_OBUF[8]_inst 
       (.I(out_wdata_OBUF[8]),
        .O(out_wdata[8]));
  OBUF \out_wdata_OBUF[9]_inst 
       (.I(out_wdata_OBUF[9]),
        .O(out_wdata[9]));
  OBUF r_empty_OBUF_inst
       (.I(r_empty_OBUF),
        .O(r_empty));
  OBUF r_full_OBUF_inst
       (.I(r_full_OBUF),
        .O(r_full));
  IBUF r_trigger_IBUF_inst
       (.I(r_trigger),
        .O(r_trigger_IBUF));
  BUFG rd_clk_IBUF_BUFG_inst
       (.I(rd_clk_IBUF),
        .O(rd_clk_IBUF_BUFG));
  IBUF rd_clk_IBUF_inst
       (.I(rd_clk),
        .O(rd_clk_IBUF));
  OBUF \read_data_out_OBUF[0]_inst 
       (.I(read_data_out_OBUF[0]),
        .O(read_data_out[0]));
  OBUF \read_data_out_OBUF[10]_inst 
       (.I(read_data_out_OBUF[10]),
        .O(read_data_out[10]));
  OBUF \read_data_out_OBUF[11]_inst 
       (.I(read_data_out_OBUF[11]),
        .O(read_data_out[11]));
  OBUF \read_data_out_OBUF[12]_inst 
       (.I(read_data_out_OBUF[12]),
        .O(read_data_out[12]));
  OBUF \read_data_out_OBUF[13]_inst 
       (.I(read_data_out_OBUF[13]),
        .O(read_data_out[13]));
  OBUF \read_data_out_OBUF[14]_inst 
       (.I(read_data_out_OBUF[14]),
        .O(read_data_out[14]));
  OBUF \read_data_out_OBUF[15]_inst 
       (.I(read_data_out_OBUF[15]),
        .O(read_data_out[15]));
  OBUF \read_data_out_OBUF[16]_inst 
       (.I(read_data_out_OBUF[16]),
        .O(read_data_out[16]));
  OBUF \read_data_out_OBUF[17]_inst 
       (.I(read_data_out_OBUF[17]),
        .O(read_data_out[17]));
  OBUF \read_data_out_OBUF[18]_inst 
       (.I(read_data_out_OBUF[18]),
        .O(read_data_out[18]));
  OBUF \read_data_out_OBUF[19]_inst 
       (.I(read_data_out_OBUF[19]),
        .O(read_data_out[19]));
  OBUF \read_data_out_OBUF[1]_inst 
       (.I(read_data_out_OBUF[1]),
        .O(read_data_out[1]));
  OBUF \read_data_out_OBUF[20]_inst 
       (.I(read_data_out_OBUF[20]),
        .O(read_data_out[20]));
  OBUF \read_data_out_OBUF[21]_inst 
       (.I(read_data_out_OBUF[21]),
        .O(read_data_out[21]));
  OBUF \read_data_out_OBUF[22]_inst 
       (.I(read_data_out_OBUF[22]),
        .O(read_data_out[22]));
  OBUF \read_data_out_OBUF[23]_inst 
       (.I(read_data_out_OBUF[23]),
        .O(read_data_out[23]));
  OBUF \read_data_out_OBUF[24]_inst 
       (.I(read_data_out_OBUF[24]),
        .O(read_data_out[24]));
  OBUF \read_data_out_OBUF[25]_inst 
       (.I(read_data_out_OBUF[25]),
        .O(read_data_out[25]));
  OBUF \read_data_out_OBUF[26]_inst 
       (.I(read_data_out_OBUF[26]),
        .O(read_data_out[26]));
  OBUF \read_data_out_OBUF[27]_inst 
       (.I(read_data_out_OBUF[27]),
        .O(read_data_out[27]));
  OBUF \read_data_out_OBUF[28]_inst 
       (.I(read_data_out_OBUF[28]),
        .O(read_data_out[28]));
  OBUF \read_data_out_OBUF[29]_inst 
       (.I(read_data_out_OBUF[29]),
        .O(read_data_out[29]));
  OBUF \read_data_out_OBUF[2]_inst 
       (.I(read_data_out_OBUF[2]),
        .O(read_data_out[2]));
  OBUF \read_data_out_OBUF[30]_inst 
       (.I(read_data_out_OBUF[30]),
        .O(read_data_out[30]));
  OBUF \read_data_out_OBUF[31]_inst 
       (.I(read_data_out_OBUF[31]),
        .O(read_data_out[31]));
  OBUF \read_data_out_OBUF[32]_inst 
       (.I(read_data_out_OBUF[32]),
        .O(read_data_out[32]));
  OBUF \read_data_out_OBUF[33]_inst 
       (.I(read_data_out_OBUF[33]),
        .O(read_data_out[33]));
  OBUF \read_data_out_OBUF[34]_inst 
       (.I(read_data_out_OBUF[34]),
        .O(read_data_out[34]));
  OBUF \read_data_out_OBUF[35]_inst 
       (.I(read_data_out_OBUF[35]),
        .O(read_data_out[35]));
  OBUF \read_data_out_OBUF[36]_inst 
       (.I(read_data_out_OBUF[36]),
        .O(read_data_out[36]));
  OBUF \read_data_out_OBUF[37]_inst 
       (.I(read_data_out_OBUF[37]),
        .O(read_data_out[37]));
  OBUF \read_data_out_OBUF[38]_inst 
       (.I(read_data_out_OBUF[38]),
        .O(read_data_out[38]));
  OBUF \read_data_out_OBUF[39]_inst 
       (.I(read_data_out_OBUF[39]),
        .O(read_data_out[39]));
  OBUF \read_data_out_OBUF[3]_inst 
       (.I(read_data_out_OBUF[3]),
        .O(read_data_out[3]));
  OBUF \read_data_out_OBUF[40]_inst 
       (.I(read_data_out_OBUF[40]),
        .O(read_data_out[40]));
  OBUF \read_data_out_OBUF[41]_inst 
       (.I(read_data_out_OBUF[41]),
        .O(read_data_out[41]));
  OBUF \read_data_out_OBUF[42]_inst 
       (.I(read_data_out_OBUF[42]),
        .O(read_data_out[42]));
  OBUF \read_data_out_OBUF[43]_inst 
       (.I(read_data_out_OBUF[43]),
        .O(read_data_out[43]));
  OBUF \read_data_out_OBUF[44]_inst 
       (.I(read_data_out_OBUF[44]),
        .O(read_data_out[44]));
  OBUF \read_data_out_OBUF[45]_inst 
       (.I(read_data_out_OBUF[45]),
        .O(read_data_out[45]));
  OBUF \read_data_out_OBUF[46]_inst 
       (.I(read_data_out_OBUF[46]),
        .O(read_data_out[46]));
  OBUF \read_data_out_OBUF[47]_inst 
       (.I(read_data_out_OBUF[47]),
        .O(read_data_out[47]));
  OBUF \read_data_out_OBUF[48]_inst 
       (.I(read_data_out_OBUF[48]),
        .O(read_data_out[48]));
  OBUF \read_data_out_OBUF[49]_inst 
       (.I(read_data_out_OBUF[49]),
        .O(read_data_out[49]));
  OBUF \read_data_out_OBUF[4]_inst 
       (.I(read_data_out_OBUF[4]),
        .O(read_data_out[4]));
  OBUF \read_data_out_OBUF[50]_inst 
       (.I(read_data_out_OBUF[50]),
        .O(read_data_out[50]));
  OBUF \read_data_out_OBUF[51]_inst 
       (.I(read_data_out_OBUF[51]),
        .O(read_data_out[51]));
  OBUF \read_data_out_OBUF[52]_inst 
       (.I(read_data_out_OBUF[52]),
        .O(read_data_out[52]));
  OBUF \read_data_out_OBUF[53]_inst 
       (.I(read_data_out_OBUF[53]),
        .O(read_data_out[53]));
  OBUF \read_data_out_OBUF[54]_inst 
       (.I(read_data_out_OBUF[54]),
        .O(read_data_out[54]));
  OBUF \read_data_out_OBUF[55]_inst 
       (.I(read_data_out_OBUF[55]),
        .O(read_data_out[55]));
  OBUF \read_data_out_OBUF[56]_inst 
       (.I(read_data_out_OBUF[56]),
        .O(read_data_out[56]));
  OBUF \read_data_out_OBUF[57]_inst 
       (.I(read_data_out_OBUF[57]),
        .O(read_data_out[57]));
  OBUF \read_data_out_OBUF[58]_inst 
       (.I(read_data_out_OBUF[58]),
        .O(read_data_out[58]));
  OBUF \read_data_out_OBUF[59]_inst 
       (.I(read_data_out_OBUF[59]),
        .O(read_data_out[59]));
  OBUF \read_data_out_OBUF[5]_inst 
       (.I(read_data_out_OBUF[5]),
        .O(read_data_out[5]));
  OBUF \read_data_out_OBUF[60]_inst 
       (.I(read_data_out_OBUF[60]),
        .O(read_data_out[60]));
  OBUF \read_data_out_OBUF[61]_inst 
       (.I(read_data_out_OBUF[61]),
        .O(read_data_out[61]));
  OBUF \read_data_out_OBUF[62]_inst 
       (.I(read_data_out_OBUF[62]),
        .O(read_data_out[62]));
  OBUF \read_data_out_OBUF[63]_inst 
       (.I(read_data_out_OBUF[63]),
        .O(read_data_out[63]));
  OBUF \read_data_out_OBUF[6]_inst 
       (.I(read_data_out_OBUF[6]),
        .O(read_data_out[6]));
  OBUF \read_data_out_OBUF[7]_inst 
       (.I(read_data_out_OBUF[7]),
        .O(read_data_out[7]));
  OBUF \read_data_out_OBUF[8]_inst 
       (.I(read_data_out_OBUF[8]),
        .O(read_data_out[8]));
  OBUF \read_data_out_OBUF[9]_inst 
       (.I(read_data_out_OBUF[9]),
        .O(read_data_out[9]));
  OBUF \read_id_OBUF[0]_inst 
       (.I(read_id_OBUF[0]),
        .O(read_id[0]));
  OBUF \read_id_OBUF[1]_inst 
       (.I(read_id_OBUF[1]),
        .O(read_id[1]));
  OBUF \read_id_OBUF[2]_inst 
       (.I(read_id_OBUF[2]),
        .O(read_id[2]));
  OBUF \read_id_OBUF[3]_inst 
       (.I(read_id_OBUF[3]),
        .O(read_id[3]));
  OBUF \read_resp_OBUF[0]_inst 
       (.I(read_resp_OBUF[0]),
        .O(read_resp[0]));
  OBUF \read_resp_OBUF[1]_inst 
       (.I(read_resp_OBUF[1]),
        .O(read_resp[1]));
  OBUF \read_resp_OBUF[2]_inst 
       (.I(read_resp_OBUF[2]),
        .O(read_resp[2]));
  IBUF read_wdata_IBUF_inst
       (.I(read_wdata),
        .O(read_wdata_IBUF));
  IBUF trigger_IBUF_inst
       (.I(trigger),
        .O(trigger_IBUF));
  OBUF w_empty_OBUF_inst
       (.I(w_empty_OBUF),
        .O(w_empty));
  OBUF w_full_OBUF_inst
       (.I(w_full_OBUF),
        .O(w_full));
  IBUF \wr_r_fifo_data_IBUF[0]_inst 
       (.I(wr_r_fifo_data[0]),
        .O(wr_r_fifo_data_IBUF[0]));
  IBUF \wr_r_fifo_data_IBUF[10]_inst 
       (.I(wr_r_fifo_data[10]),
        .O(wr_r_fifo_data_IBUF[10]));
  IBUF \wr_r_fifo_data_IBUF[11]_inst 
       (.I(wr_r_fifo_data[11]),
        .O(wr_r_fifo_data_IBUF[11]));
  IBUF \wr_r_fifo_data_IBUF[12]_inst 
       (.I(wr_r_fifo_data[12]),
        .O(wr_r_fifo_data_IBUF[12]));
  IBUF \wr_r_fifo_data_IBUF[13]_inst 
       (.I(wr_r_fifo_data[13]),
        .O(wr_r_fifo_data_IBUF[13]));
  IBUF \wr_r_fifo_data_IBUF[14]_inst 
       (.I(wr_r_fifo_data[14]),
        .O(wr_r_fifo_data_IBUF[14]));
  IBUF \wr_r_fifo_data_IBUF[15]_inst 
       (.I(wr_r_fifo_data[15]),
        .O(wr_r_fifo_data_IBUF[15]));
  IBUF \wr_r_fifo_data_IBUF[16]_inst 
       (.I(wr_r_fifo_data[16]),
        .O(wr_r_fifo_data_IBUF[16]));
  IBUF \wr_r_fifo_data_IBUF[17]_inst 
       (.I(wr_r_fifo_data[17]),
        .O(wr_r_fifo_data_IBUF[17]));
  IBUF \wr_r_fifo_data_IBUF[18]_inst 
       (.I(wr_r_fifo_data[18]),
        .O(wr_r_fifo_data_IBUF[18]));
  IBUF \wr_r_fifo_data_IBUF[19]_inst 
       (.I(wr_r_fifo_data[19]),
        .O(wr_r_fifo_data_IBUF[19]));
  IBUF \wr_r_fifo_data_IBUF[1]_inst 
       (.I(wr_r_fifo_data[1]),
        .O(wr_r_fifo_data_IBUF[1]));
  IBUF \wr_r_fifo_data_IBUF[20]_inst 
       (.I(wr_r_fifo_data[20]),
        .O(wr_r_fifo_data_IBUF[20]));
  IBUF \wr_r_fifo_data_IBUF[21]_inst 
       (.I(wr_r_fifo_data[21]),
        .O(wr_r_fifo_data_IBUF[21]));
  IBUF \wr_r_fifo_data_IBUF[22]_inst 
       (.I(wr_r_fifo_data[22]),
        .O(wr_r_fifo_data_IBUF[22]));
  IBUF \wr_r_fifo_data_IBUF[23]_inst 
       (.I(wr_r_fifo_data[23]),
        .O(wr_r_fifo_data_IBUF[23]));
  IBUF \wr_r_fifo_data_IBUF[24]_inst 
       (.I(wr_r_fifo_data[24]),
        .O(wr_r_fifo_data_IBUF[24]));
  IBUF \wr_r_fifo_data_IBUF[25]_inst 
       (.I(wr_r_fifo_data[25]),
        .O(wr_r_fifo_data_IBUF[25]));
  IBUF \wr_r_fifo_data_IBUF[26]_inst 
       (.I(wr_r_fifo_data[26]),
        .O(wr_r_fifo_data_IBUF[26]));
  IBUF \wr_r_fifo_data_IBUF[27]_inst 
       (.I(wr_r_fifo_data[27]),
        .O(wr_r_fifo_data_IBUF[27]));
  IBUF \wr_r_fifo_data_IBUF[28]_inst 
       (.I(wr_r_fifo_data[28]),
        .O(wr_r_fifo_data_IBUF[28]));
  IBUF \wr_r_fifo_data_IBUF[29]_inst 
       (.I(wr_r_fifo_data[29]),
        .O(wr_r_fifo_data_IBUF[29]));
  IBUF \wr_r_fifo_data_IBUF[2]_inst 
       (.I(wr_r_fifo_data[2]),
        .O(wr_r_fifo_data_IBUF[2]));
  IBUF \wr_r_fifo_data_IBUF[30]_inst 
       (.I(wr_r_fifo_data[30]),
        .O(wr_r_fifo_data_IBUF[30]));
  IBUF \wr_r_fifo_data_IBUF[31]_inst 
       (.I(wr_r_fifo_data[31]),
        .O(wr_r_fifo_data_IBUF[31]));
  IBUF \wr_r_fifo_data_IBUF[32]_inst 
       (.I(wr_r_fifo_data[32]),
        .O(wr_r_fifo_data_IBUF[32]));
  IBUF \wr_r_fifo_data_IBUF[33]_inst 
       (.I(wr_r_fifo_data[33]),
        .O(wr_r_fifo_data_IBUF[33]));
  IBUF \wr_r_fifo_data_IBUF[34]_inst 
       (.I(wr_r_fifo_data[34]),
        .O(wr_r_fifo_data_IBUF[34]));
  IBUF \wr_r_fifo_data_IBUF[35]_inst 
       (.I(wr_r_fifo_data[35]),
        .O(wr_r_fifo_data_IBUF[35]));
  IBUF \wr_r_fifo_data_IBUF[36]_inst 
       (.I(wr_r_fifo_data[36]),
        .O(wr_r_fifo_data_IBUF[36]));
  IBUF \wr_r_fifo_data_IBUF[37]_inst 
       (.I(wr_r_fifo_data[37]),
        .O(wr_r_fifo_data_IBUF[37]));
  IBUF \wr_r_fifo_data_IBUF[38]_inst 
       (.I(wr_r_fifo_data[38]),
        .O(wr_r_fifo_data_IBUF[38]));
  IBUF \wr_r_fifo_data_IBUF[39]_inst 
       (.I(wr_r_fifo_data[39]),
        .O(wr_r_fifo_data_IBUF[39]));
  IBUF \wr_r_fifo_data_IBUF[3]_inst 
       (.I(wr_r_fifo_data[3]),
        .O(wr_r_fifo_data_IBUF[3]));
  IBUF \wr_r_fifo_data_IBUF[40]_inst 
       (.I(wr_r_fifo_data[40]),
        .O(wr_r_fifo_data_IBUF[40]));
  IBUF \wr_r_fifo_data_IBUF[41]_inst 
       (.I(wr_r_fifo_data[41]),
        .O(wr_r_fifo_data_IBUF[41]));
  IBUF \wr_r_fifo_data_IBUF[42]_inst 
       (.I(wr_r_fifo_data[42]),
        .O(wr_r_fifo_data_IBUF[42]));
  IBUF \wr_r_fifo_data_IBUF[43]_inst 
       (.I(wr_r_fifo_data[43]),
        .O(wr_r_fifo_data_IBUF[43]));
  IBUF \wr_r_fifo_data_IBUF[44]_inst 
       (.I(wr_r_fifo_data[44]),
        .O(wr_r_fifo_data_IBUF[44]));
  IBUF \wr_r_fifo_data_IBUF[45]_inst 
       (.I(wr_r_fifo_data[45]),
        .O(wr_r_fifo_data_IBUF[45]));
  IBUF \wr_r_fifo_data_IBUF[46]_inst 
       (.I(wr_r_fifo_data[46]),
        .O(wr_r_fifo_data_IBUF[46]));
  IBUF \wr_r_fifo_data_IBUF[47]_inst 
       (.I(wr_r_fifo_data[47]),
        .O(wr_r_fifo_data_IBUF[47]));
  IBUF \wr_r_fifo_data_IBUF[48]_inst 
       (.I(wr_r_fifo_data[48]),
        .O(wr_r_fifo_data_IBUF[48]));
  IBUF \wr_r_fifo_data_IBUF[49]_inst 
       (.I(wr_r_fifo_data[49]),
        .O(wr_r_fifo_data_IBUF[49]));
  IBUF \wr_r_fifo_data_IBUF[4]_inst 
       (.I(wr_r_fifo_data[4]),
        .O(wr_r_fifo_data_IBUF[4]));
  IBUF \wr_r_fifo_data_IBUF[50]_inst 
       (.I(wr_r_fifo_data[50]),
        .O(wr_r_fifo_data_IBUF[50]));
  IBUF \wr_r_fifo_data_IBUF[51]_inst 
       (.I(wr_r_fifo_data[51]),
        .O(wr_r_fifo_data_IBUF[51]));
  IBUF \wr_r_fifo_data_IBUF[52]_inst 
       (.I(wr_r_fifo_data[52]),
        .O(wr_r_fifo_data_IBUF[52]));
  IBUF \wr_r_fifo_data_IBUF[53]_inst 
       (.I(wr_r_fifo_data[53]),
        .O(wr_r_fifo_data_IBUF[53]));
  IBUF \wr_r_fifo_data_IBUF[54]_inst 
       (.I(wr_r_fifo_data[54]),
        .O(wr_r_fifo_data_IBUF[54]));
  IBUF \wr_r_fifo_data_IBUF[55]_inst 
       (.I(wr_r_fifo_data[55]),
        .O(wr_r_fifo_data_IBUF[55]));
  IBUF \wr_r_fifo_data_IBUF[56]_inst 
       (.I(wr_r_fifo_data[56]),
        .O(wr_r_fifo_data_IBUF[56]));
  IBUF \wr_r_fifo_data_IBUF[57]_inst 
       (.I(wr_r_fifo_data[57]),
        .O(wr_r_fifo_data_IBUF[57]));
  IBUF \wr_r_fifo_data_IBUF[58]_inst 
       (.I(wr_r_fifo_data[58]),
        .O(wr_r_fifo_data_IBUF[58]));
  IBUF \wr_r_fifo_data_IBUF[59]_inst 
       (.I(wr_r_fifo_data[59]),
        .O(wr_r_fifo_data_IBUF[59]));
  IBUF \wr_r_fifo_data_IBUF[5]_inst 
       (.I(wr_r_fifo_data[5]),
        .O(wr_r_fifo_data_IBUF[5]));
  IBUF \wr_r_fifo_data_IBUF[60]_inst 
       (.I(wr_r_fifo_data[60]),
        .O(wr_r_fifo_data_IBUF[60]));
  IBUF \wr_r_fifo_data_IBUF[61]_inst 
       (.I(wr_r_fifo_data[61]),
        .O(wr_r_fifo_data_IBUF[61]));
  IBUF \wr_r_fifo_data_IBUF[62]_inst 
       (.I(wr_r_fifo_data[62]),
        .O(wr_r_fifo_data_IBUF[62]));
  IBUF \wr_r_fifo_data_IBUF[63]_inst 
       (.I(wr_r_fifo_data[63]),
        .O(wr_r_fifo_data_IBUF[63]));
  IBUF \wr_r_fifo_data_IBUF[64]_inst 
       (.I(wr_r_fifo_data[64]),
        .O(wr_r_fifo_data_IBUF[64]));
  IBUF \wr_r_fifo_data_IBUF[65]_inst 
       (.I(wr_r_fifo_data[65]),
        .O(wr_r_fifo_data_IBUF[65]));
  IBUF \wr_r_fifo_data_IBUF[66]_inst 
       (.I(wr_r_fifo_data[66]),
        .O(wr_r_fifo_data_IBUF[66]));
  IBUF \wr_r_fifo_data_IBUF[67]_inst 
       (.I(wr_r_fifo_data[67]),
        .O(wr_r_fifo_data_IBUF[67]));
  IBUF \wr_r_fifo_data_IBUF[68]_inst 
       (.I(wr_r_fifo_data[68]),
        .O(wr_r_fifo_data_IBUF[68]));
  IBUF \wr_r_fifo_data_IBUF[69]_inst 
       (.I(wr_r_fifo_data[69]),
        .O(wr_r_fifo_data_IBUF[69]));
  IBUF \wr_r_fifo_data_IBUF[6]_inst 
       (.I(wr_r_fifo_data[6]),
        .O(wr_r_fifo_data_IBUF[6]));
  IBUF \wr_r_fifo_data_IBUF[70]_inst 
       (.I(wr_r_fifo_data[70]),
        .O(wr_r_fifo_data_IBUF[70]));
  IBUF \wr_r_fifo_data_IBUF[7]_inst 
       (.I(wr_r_fifo_data[7]),
        .O(wr_r_fifo_data_IBUF[7]));
  IBUF \wr_r_fifo_data_IBUF[8]_inst 
       (.I(wr_r_fifo_data[8]),
        .O(wr_r_fifo_data_IBUF[8]));
  IBUF \wr_r_fifo_data_IBUF[9]_inst 
       (.I(wr_r_fifo_data[9]),
        .O(wr_r_fifo_data_IBUF[9]));
  IBUF wr_r_fifo_en_IBUF_inst
       (.I(wr_r_fifo_en),
        .O(wr_r_fifo_en_IBUF));
  OBUF wr_r_fifo_ready_OBUF_inst
       (.I(wr_r_fifo_ready_OBUF),
        .O(wr_r_fifo_ready));
endmodule

(* BYTES = "6" *) (* BYTE_POINTER_WIDTH = "8" *) (* COUNTER_WIDTH = "5" *) 
(* DATA_WIDTH = "50" *) (* DEPTH = "32" *) (* IDEL = "2'b00" *) 
(* READ = "2'b10" *) (* WRITE = "2'b01" *) 
module FIFO
   (rst,
    wr_clk,
    wr_en,
    wr_data,
    wr_ready,
    rd_clk,
    rd_en,
    rd_data,
    rd_ready,
    full,
    empty);
  input rst;
  input wr_clk;
  input wr_en;
  input [49:0]wr_data;
  output wr_ready;
  input rd_clk;
  input rd_en;
  output [49:0]rd_data;
  output rd_ready;
  output full;
  output empty;

  wire FSM_sequential_rd_state_i_1_n_0;
  wire empty;
  wire empty_INST_0_i_1_n_0;
  wire full;
  wire full_INST_0_i_1_n_0;
  wire full_INST_0_i_2_n_0;
  wire mem_reg_i_1_n_0;
  wire mem_reg_i_3_n_0;
  wire mem_reg_i_4_n_0;
  wire rd_clk;
  wire [49:0]rd_data;
  wire rd_en;
  wire rd_pointer;
  wire \rd_pointer[0]_i_2_n_0 ;
  wire \rd_pointer[1]_i_1_n_0 ;
  wire \rd_pointer[2]_i_1_n_0 ;
  wire \rd_pointer[3]_i_1_n_0 ;
  wire \rd_pointer[4]_i_1_n_0 ;
  wire [4:0]rd_pointer_reg;
  wire rd_ready;
  wire rd_state;
  wire rst;
  wire wr_clk;
  wire [49:0]wr_data;
  wire wr_en;
  wire wr_pointer0;
  wire \wr_pointer[0]_i_1_n_0 ;
  wire \wr_pointer[1]_i_1_n_0 ;
  wire \wr_pointer[2]_i_1_n_0 ;
  wire \wr_pointer[3]_i_1_n_0 ;
  wire \wr_pointer[4]_i_1_n_0 ;
  wire \wr_pointer[4]_i_2_n_0 ;
  wire \wr_pointer_reg_n_0_[0] ;
  wire \wr_pointer_reg_n_0_[1] ;
  wire \wr_pointer_reg_n_0_[2] ;
  wire \wr_pointer_reg_n_0_[3] ;
  wire \wr_pointer_reg_n_0_[4] ;
  wire wr_ready;
  wire \wr_state[0]_i_1_n_0 ;
  wire \wr_state[0]_i_2_n_0 ;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:18]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hD5AA)) 
    FSM_sequential_rd_state_i_1
       (.I0(rd_en),
        .I1(empty_INST_0_i_1_n_0),
        .I2(mem_reg_i_4_n_0),
        .I3(rd_state),
        .O(FSM_sequential_rd_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDEL:0,READ:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_rd_state_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(FSM_sequential_rd_state_i_1_n_0),
        .Q(rd_state),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h82000082)) 
    empty_INST_0
       (.I0(empty_INST_0_i_1_n_0),
        .I1(rd_pointer_reg[4]),
        .I2(\wr_pointer_reg_n_0_[4] ),
        .I3(rd_pointer_reg[3]),
        .I4(\wr_pointer_reg_n_0_[3] ),
        .O(empty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_INST_0_i_1
       (.I0(rd_pointer_reg[0]),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(rd_pointer_reg[2]),
        .I3(\wr_pointer_reg_n_0_[2] ),
        .I4(rd_pointer_reg[1]),
        .I5(\wr_pointer_reg_n_0_[1] ),
        .O(empty_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0440800880084004)) 
    full_INST_0
       (.I0(rd_pointer_reg[3]),
        .I1(full_INST_0_i_1_n_0),
        .I2(rd_pointer_reg[4]),
        .I3(\wr_pointer_reg_n_0_[4] ),
        .I4(\wr_pointer_reg_n_0_[3] ),
        .I5(full_INST_0_i_2_n_0),
        .O(full));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    full_INST_0_i_1
       (.I0(rd_pointer_reg[0]),
        .I1(rd_pointer_reg[2]),
        .I2(\wr_pointer_reg_n_0_[2] ),
        .I3(\wr_pointer_reg_n_0_[1] ),
        .I4(\wr_pointer_reg_n_0_[0] ),
        .I5(rd_pointer_reg[1]),
        .O(full_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h80)) 
    full_INST_0_i_2
       (.I0(\wr_pointer_reg_n_0_[2] ),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(\wr_pointer_reg_n_0_[1] ),
        .O(full_INST_0_i_2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d50" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d50" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1600" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "49" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "480" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "49" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,rd_pointer_reg,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,\wr_pointer_reg_n_0_[4] ,\wr_pointer_reg_n_0_[3] ,\wr_pointer_reg_n_0_[2] ,\wr_pointer_reg_n_0_[1] ,\wr_pointer_reg_n_0_[0] ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(rd_clk),
        .CLKBWRCLK(wr_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(wr_data[31:0]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,wr_data[49:36],wr_data[39:36]}),
        .DIPADIP({1'b1,1'b1,1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(rd_data[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:18],rd_data[49:32]}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_i_1_n_0),
        .ENBWREN(wr_pointer0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0}));
  LUT5 #(
    .INIT(32'h00002A00)) 
    mem_reg_i_1
       (.I0(rd_en),
        .I1(mem_reg_i_4_n_0),
        .I2(empty_INST_0_i_1_n_0),
        .I3(rd_state),
        .I4(rst),
        .O(mem_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h28AAAAAAAAAA28AA)) 
    mem_reg_i_2
       (.I0(wr_en),
        .I1(\wr_pointer[4]_i_2_n_0 ),
        .I2(rd_pointer_reg[4]),
        .I3(full_INST_0_i_1_n_0),
        .I4(rd_pointer_reg[3]),
        .I5(\wr_pointer[3]_i_1_n_0 ),
        .O(wr_pointer0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_3
       (.I0(wr_ready),
        .I1(rst),
        .O(mem_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    mem_reg_i_4
       (.I0(\wr_pointer_reg_n_0_[3] ),
        .I1(rd_pointer_reg[3]),
        .I2(\wr_pointer_reg_n_0_[4] ),
        .I3(rd_pointer_reg[4]),
        .O(mem_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'h2A00)) 
    \rd_pointer[0]_i_1 
       (.I0(rd_state),
        .I1(empty_INST_0_i_1_n_0),
        .I2(mem_reg_i_4_n_0),
        .I3(rd_en),
        .O(rd_pointer));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_pointer[0]_i_2 
       (.I0(rd_pointer_reg[0]),
        .O(\rd_pointer[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pointer[1]_i_1 
       (.I0(rd_pointer_reg[0]),
        .I1(rd_pointer_reg[1]),
        .O(\rd_pointer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_pointer[2]_i_1 
       (.I0(rd_pointer_reg[0]),
        .I1(rd_pointer_reg[1]),
        .I2(rd_pointer_reg[2]),
        .O(\rd_pointer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_pointer[3]_i_1 
       (.I0(rd_pointer_reg[1]),
        .I1(rd_pointer_reg[0]),
        .I2(rd_pointer_reg[2]),
        .I3(rd_pointer_reg[3]),
        .O(\rd_pointer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_pointer[4]_i_1 
       (.I0(rd_pointer_reg[2]),
        .I1(rd_pointer_reg[0]),
        .I2(rd_pointer_reg[1]),
        .I3(rd_pointer_reg[3]),
        .I4(rd_pointer_reg[4]),
        .O(\rd_pointer[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[0] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[0]_i_2_n_0 ),
        .Q(rd_pointer_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[1] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[1]_i_1_n_0 ),
        .Q(rd_pointer_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[2] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[2]_i_1_n_0 ),
        .Q(rd_pointer_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[3] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[3]_i_1_n_0 ),
        .Q(rd_pointer_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[4] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[4]_i_1_n_0 ),
        .Q(rd_pointer_reg[4]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    rd_ready_INST_0
       (.I0(rd_state),
        .O(rd_ready));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_pointer[0]_i_1 
       (.I0(\wr_pointer_reg_n_0_[0] ),
        .O(\wr_pointer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pointer[1]_i_1 
       (.I0(\wr_pointer_reg_n_0_[0] ),
        .I1(\wr_pointer_reg_n_0_[1] ),
        .O(\wr_pointer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_pointer[2]_i_1 
       (.I0(\wr_pointer_reg_n_0_[0] ),
        .I1(\wr_pointer_reg_n_0_[1] ),
        .I2(\wr_pointer_reg_n_0_[2] ),
        .O(\wr_pointer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_pointer[3]_i_1 
       (.I0(\wr_pointer_reg_n_0_[1] ),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(\wr_pointer_reg_n_0_[2] ),
        .I3(\wr_pointer_reg_n_0_[3] ),
        .O(\wr_pointer[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28AAAAAA00000000)) 
    \wr_pointer[4]_i_1 
       (.I0(wr_ready),
        .I1(\wr_pointer[3]_i_1_n_0 ),
        .I2(rd_pointer_reg[3]),
        .I3(full_INST_0_i_1_n_0),
        .I4(\wr_state[0]_i_2_n_0 ),
        .I5(wr_en),
        .O(\wr_pointer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_pointer[4]_i_2 
       (.I0(\wr_pointer_reg_n_0_[2] ),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(\wr_pointer_reg_n_0_[1] ),
        .I3(\wr_pointer_reg_n_0_[3] ),
        .I4(\wr_pointer_reg_n_0_[4] ),
        .O(\wr_pointer[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[0] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[0]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[1] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[1]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[2] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[2]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[3] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[3]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[4] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[4]_i_2_n_0 ),
        .Q(\wr_pointer_reg_n_0_[4] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hD7555555AAAAAAAA)) 
    \wr_state[0]_i_1 
       (.I0(wr_en),
        .I1(\wr_pointer[3]_i_1_n_0 ),
        .I2(rd_pointer_reg[3]),
        .I3(full_INST_0_i_1_n_0),
        .I4(\wr_state[0]_i_2_n_0 ),
        .I5(wr_ready),
        .O(\wr_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \wr_state[0]_i_2 
       (.I0(rd_pointer_reg[4]),
        .I1(\wr_pointer_reg_n_0_[4] ),
        .I2(\wr_pointer_reg_n_0_[3] ),
        .I3(\wr_pointer_reg_n_0_[1] ),
        .I4(\wr_pointer_reg_n_0_[0] ),
        .I5(\wr_pointer_reg_n_0_[2] ),
        .O(\wr_state[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\wr_state[0]_i_1_n_0 ),
        .Q(wr_ready),
        .R(rst));
endmodule

(* BYTES = "6" *) (* BYTE_POINTER_WIDTH = "8" *) (* COUNTER_WIDTH = "5" *) 
(* DATA_WIDTH = "50" *) (* DEPTH = "32" *) (* IDEL = "2'b00" *) 
(* ORIG_REF_NAME = "FIFO" *) (* READ = "2'b10" *) (* WRITE = "2'b01" *) 
module FIFO__1
   (rst,
    wr_clk,
    wr_en,
    wr_data,
    wr_ready,
    rd_clk,
    rd_en,
    rd_data,
    rd_ready,
    full,
    empty);
  input rst;
  input wr_clk;
  input wr_en;
  input [49:0]wr_data;
  output wr_ready;
  input rd_clk;
  input rd_en;
  output [49:0]rd_data;
  output rd_ready;
  output full;
  output empty;

  wire FSM_sequential_rd_state_i_1_n_0;
  wire empty;
  wire empty_INST_0_i_1_n_0;
  wire full;
  wire full_INST_0_i_1_n_0;
  wire full_INST_0_i_2_n_0;
  wire mem_reg_i_1_n_0;
  wire mem_reg_i_3_n_0;
  wire mem_reg_i_4_n_0;
  wire rd_clk;
  wire [49:0]rd_data;
  wire rd_en;
  wire rd_pointer;
  wire \rd_pointer[0]_i_2_n_0 ;
  wire \rd_pointer[1]_i_1_n_0 ;
  wire \rd_pointer[2]_i_1_n_0 ;
  wire \rd_pointer[3]_i_1_n_0 ;
  wire \rd_pointer[4]_i_1_n_0 ;
  wire [4:0]rd_pointer_reg;
  wire rd_ready;
  wire rd_state;
  wire rst;
  wire wr_clk;
  wire [49:0]wr_data;
  wire wr_en;
  wire wr_pointer0;
  wire \wr_pointer[0]_i_1_n_0 ;
  wire \wr_pointer[1]_i_1_n_0 ;
  wire \wr_pointer[2]_i_1_n_0 ;
  wire \wr_pointer[3]_i_1_n_0 ;
  wire \wr_pointer[4]_i_1_n_0 ;
  wire \wr_pointer[4]_i_2_n_0 ;
  wire \wr_pointer_reg_n_0_[0] ;
  wire \wr_pointer_reg_n_0_[1] ;
  wire \wr_pointer_reg_n_0_[2] ;
  wire \wr_pointer_reg_n_0_[3] ;
  wire \wr_pointer_reg_n_0_[4] ;
  wire wr_ready;
  wire \wr_state[0]_i_1_n_0 ;
  wire \wr_state[0]_i_2_n_0 ;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:18]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hD5AA)) 
    FSM_sequential_rd_state_i_1
       (.I0(rd_en),
        .I1(empty_INST_0_i_1_n_0),
        .I2(mem_reg_i_4_n_0),
        .I3(rd_state),
        .O(FSM_sequential_rd_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDEL:0,READ:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_rd_state_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(FSM_sequential_rd_state_i_1_n_0),
        .Q(rd_state),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h82000082)) 
    empty_INST_0
       (.I0(empty_INST_0_i_1_n_0),
        .I1(rd_pointer_reg[4]),
        .I2(\wr_pointer_reg_n_0_[4] ),
        .I3(rd_pointer_reg[3]),
        .I4(\wr_pointer_reg_n_0_[3] ),
        .O(empty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_INST_0_i_1
       (.I0(rd_pointer_reg[0]),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(rd_pointer_reg[2]),
        .I3(\wr_pointer_reg_n_0_[2] ),
        .I4(rd_pointer_reg[1]),
        .I5(\wr_pointer_reg_n_0_[1] ),
        .O(empty_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0440800880084004)) 
    full_INST_0
       (.I0(rd_pointer_reg[3]),
        .I1(full_INST_0_i_1_n_0),
        .I2(rd_pointer_reg[4]),
        .I3(\wr_pointer_reg_n_0_[4] ),
        .I4(\wr_pointer_reg_n_0_[3] ),
        .I5(full_INST_0_i_2_n_0),
        .O(full));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    full_INST_0_i_1
       (.I0(rd_pointer_reg[0]),
        .I1(rd_pointer_reg[2]),
        .I2(\wr_pointer_reg_n_0_[2] ),
        .I3(\wr_pointer_reg_n_0_[1] ),
        .I4(\wr_pointer_reg_n_0_[0] ),
        .I5(rd_pointer_reg[1]),
        .O(full_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    full_INST_0_i_2
       (.I0(\wr_pointer_reg_n_0_[2] ),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(\wr_pointer_reg_n_0_[1] ),
        .O(full_INST_0_i_2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d50" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d50" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1600" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "49" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "480" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "49" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,rd_pointer_reg,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,\wr_pointer_reg_n_0_[4] ,\wr_pointer_reg_n_0_[3] ,\wr_pointer_reg_n_0_[2] ,\wr_pointer_reg_n_0_[1] ,\wr_pointer_reg_n_0_[0] ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(rd_clk),
        .CLKBWRCLK(wr_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(wr_data[31:0]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,wr_data[49:36],wr_data[39:36]}),
        .DIPADIP({1'b1,1'b1,1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(rd_data[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:18],rd_data[49:32]}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_i_1_n_0),
        .ENBWREN(wr_pointer0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0}));
  LUT5 #(
    .INIT(32'h00002A00)) 
    mem_reg_i_1
       (.I0(rd_en),
        .I1(mem_reg_i_4_n_0),
        .I2(empty_INST_0_i_1_n_0),
        .I3(rd_state),
        .I4(rst),
        .O(mem_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h28AAAAAAAAAA28AA)) 
    mem_reg_i_2
       (.I0(wr_en),
        .I1(\wr_pointer[4]_i_2_n_0 ),
        .I2(rd_pointer_reg[4]),
        .I3(full_INST_0_i_1_n_0),
        .I4(rd_pointer_reg[3]),
        .I5(\wr_pointer[3]_i_1_n_0 ),
        .O(wr_pointer0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_3
       (.I0(wr_ready),
        .I1(rst),
        .O(mem_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    mem_reg_i_4
       (.I0(\wr_pointer_reg_n_0_[3] ),
        .I1(rd_pointer_reg[3]),
        .I2(\wr_pointer_reg_n_0_[4] ),
        .I3(rd_pointer_reg[4]),
        .O(mem_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'h2A00)) 
    \rd_pointer[0]_i_1 
       (.I0(rd_state),
        .I1(empty_INST_0_i_1_n_0),
        .I2(mem_reg_i_4_n_0),
        .I3(rd_en),
        .O(rd_pointer));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_pointer[0]_i_2 
       (.I0(rd_pointer_reg[0]),
        .O(\rd_pointer[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pointer[1]_i_1 
       (.I0(rd_pointer_reg[0]),
        .I1(rd_pointer_reg[1]),
        .O(\rd_pointer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_pointer[2]_i_1 
       (.I0(rd_pointer_reg[0]),
        .I1(rd_pointer_reg[1]),
        .I2(rd_pointer_reg[2]),
        .O(\rd_pointer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_pointer[3]_i_1 
       (.I0(rd_pointer_reg[1]),
        .I1(rd_pointer_reg[0]),
        .I2(rd_pointer_reg[2]),
        .I3(rd_pointer_reg[3]),
        .O(\rd_pointer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_pointer[4]_i_1 
       (.I0(rd_pointer_reg[2]),
        .I1(rd_pointer_reg[0]),
        .I2(rd_pointer_reg[1]),
        .I3(rd_pointer_reg[3]),
        .I4(rd_pointer_reg[4]),
        .O(\rd_pointer[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[0] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[0]_i_2_n_0 ),
        .Q(rd_pointer_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[1] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[1]_i_1_n_0 ),
        .Q(rd_pointer_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[2] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[2]_i_1_n_0 ),
        .Q(rd_pointer_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[3] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[3]_i_1_n_0 ),
        .Q(rd_pointer_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[4] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[4]_i_1_n_0 ),
        .Q(rd_pointer_reg[4]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    rd_ready_INST_0
       (.I0(rd_state),
        .O(rd_ready));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_pointer[0]_i_1 
       (.I0(\wr_pointer_reg_n_0_[0] ),
        .O(\wr_pointer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pointer[1]_i_1 
       (.I0(\wr_pointer_reg_n_0_[0] ),
        .I1(\wr_pointer_reg_n_0_[1] ),
        .O(\wr_pointer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_pointer[2]_i_1 
       (.I0(\wr_pointer_reg_n_0_[0] ),
        .I1(\wr_pointer_reg_n_0_[1] ),
        .I2(\wr_pointer_reg_n_0_[2] ),
        .O(\wr_pointer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_pointer[3]_i_1 
       (.I0(\wr_pointer_reg_n_0_[1] ),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(\wr_pointer_reg_n_0_[2] ),
        .I3(\wr_pointer_reg_n_0_[3] ),
        .O(\wr_pointer[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28AAAAAA00000000)) 
    \wr_pointer[4]_i_1 
       (.I0(wr_ready),
        .I1(\wr_pointer[3]_i_1_n_0 ),
        .I2(rd_pointer_reg[3]),
        .I3(full_INST_0_i_1_n_0),
        .I4(\wr_state[0]_i_2_n_0 ),
        .I5(wr_en),
        .O(\wr_pointer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_pointer[4]_i_2 
       (.I0(\wr_pointer_reg_n_0_[2] ),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(\wr_pointer_reg_n_0_[1] ),
        .I3(\wr_pointer_reg_n_0_[3] ),
        .I4(\wr_pointer_reg_n_0_[4] ),
        .O(\wr_pointer[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[0] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[0]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[1] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[1]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[2] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[2]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[3] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[3]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[4] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[4]_i_2_n_0 ),
        .Q(\wr_pointer_reg_n_0_[4] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hD7555555AAAAAAAA)) 
    \wr_state[0]_i_1 
       (.I0(wr_en),
        .I1(\wr_pointer[3]_i_1_n_0 ),
        .I2(rd_pointer_reg[3]),
        .I3(full_INST_0_i_1_n_0),
        .I4(\wr_state[0]_i_2_n_0 ),
        .I5(wr_ready),
        .O(\wr_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \wr_state[0]_i_2 
       (.I0(rd_pointer_reg[4]),
        .I1(\wr_pointer_reg_n_0_[4] ),
        .I2(\wr_pointer_reg_n_0_[3] ),
        .I3(\wr_pointer_reg_n_0_[1] ),
        .I4(\wr_pointer_reg_n_0_[0] ),
        .I5(\wr_pointer_reg_n_0_[2] ),
        .O(\wr_state[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\wr_state[0]_i_1_n_0 ),
        .Q(wr_ready),
        .R(rst));
endmodule

(* BYTES = "9" *) (* BYTE_POINTER_WIDTH = "8" *) (* COUNTER_WIDTH = "5" *) 
(* DATA_WIDTH = "72" *) (* DEPTH = "32" *) (* IDEL = "2'b00" *) 
(* ORIG_REF_NAME = "FIFO" *) (* READ = "2'b10" *) (* WRITE = "2'b01" *) 
module FIFO__parameterized0
   (rst,
    wr_clk,
    wr_en,
    wr_data,
    wr_ready,
    rd_clk,
    rd_en,
    rd_data,
    rd_ready,
    full,
    empty);
  input rst;
  input wr_clk;
  input wr_en;
  input [71:0]wr_data;
  output wr_ready;
  input rd_clk;
  input rd_en;
  output [71:0]rd_data;
  output rd_ready;
  output full;
  output empty;

  wire \<const0> ;
  wire FSM_sequential_rd_state_i_1_n_0;
  wire empty;
  wire empty_INST_0_i_1_n_0;
  wire full;
  wire full_INST_0_i_1_n_0;
  wire full_INST_0_i_2_n_0;
  wire mem_reg_i_1_n_0;
  wire mem_reg_i_3_n_0;
  wire mem_reg_i_4_n_0;
  wire rd_clk;
  wire [71:0]rd_data;
  wire rd_en;
  wire rd_pointer;
  wire \rd_pointer[0]_i_2_n_0 ;
  wire \rd_pointer[1]_i_1_n_0 ;
  wire \rd_pointer[2]_i_1_n_0 ;
  wire \rd_pointer[3]_i_1_n_0 ;
  wire \rd_pointer[4]_i_1_n_0 ;
  wire [4:0]rd_pointer_reg;
  wire rd_state;
  wire rst;
  wire wr_clk;
  wire [71:0]wr_data;
  wire wr_en;
  wire wr_pointer0;
  wire \wr_pointer[0]_i_1_n_0 ;
  wire \wr_pointer[1]_i_1_n_0 ;
  wire \wr_pointer[2]_i_1_n_0 ;
  wire \wr_pointer[3]_i_1_n_0 ;
  wire \wr_pointer[4]_i_1_n_0 ;
  wire \wr_pointer[4]_i_2_n_0 ;
  wire \wr_pointer_reg_n_0_[0] ;
  wire \wr_pointer_reg_n_0_[1] ;
  wire \wr_pointer_reg_n_0_[2] ;
  wire \wr_pointer_reg_n_0_[3] ;
  wire \wr_pointer_reg_n_0_[4] ;
  wire wr_ready;
  wire \wr_state[0]_i_1_n_0 ;
  wire \wr_state[0]_i_2_n_0 ;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  assign rd_ready = \<const0> ;
  LUT4 #(
    .INIT(16'hD5AA)) 
    FSM_sequential_rd_state_i_1
       (.I0(rd_en),
        .I1(empty_INST_0_i_1_n_0),
        .I2(mem_reg_i_4_n_0),
        .I3(rd_state),
        .O(FSM_sequential_rd_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDEL:0,READ:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_rd_state_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(FSM_sequential_rd_state_i_1_n_0),
        .Q(rd_state),
        .R(rst));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h82000082)) 
    empty_INST_0
       (.I0(empty_INST_0_i_1_n_0),
        .I1(rd_pointer_reg[4]),
        .I2(\wr_pointer_reg_n_0_[4] ),
        .I3(rd_pointer_reg[3]),
        .I4(\wr_pointer_reg_n_0_[3] ),
        .O(empty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_INST_0_i_1
       (.I0(rd_pointer_reg[0]),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(rd_pointer_reg[2]),
        .I3(\wr_pointer_reg_n_0_[2] ),
        .I4(rd_pointer_reg[1]),
        .I5(\wr_pointer_reg_n_0_[1] ),
        .O(empty_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0082820028000082)) 
    full_INST_0
       (.I0(full_INST_0_i_1_n_0),
        .I1(rd_pointer_reg[4]),
        .I2(\wr_pointer_reg_n_0_[4] ),
        .I3(\wr_pointer_reg_n_0_[3] ),
        .I4(full_INST_0_i_2_n_0),
        .I5(rd_pointer_reg[3]),
        .O(full));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    full_INST_0_i_1
       (.I0(rd_pointer_reg[0]),
        .I1(rd_pointer_reg[2]),
        .I2(\wr_pointer_reg_n_0_[2] ),
        .I3(\wr_pointer_reg_n_0_[1] ),
        .I4(\wr_pointer_reg_n_0_[0] ),
        .I5(rd_pointer_reg[1]),
        .O(full_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    full_INST_0_i_2
       (.I0(\wr_pointer_reg_n_0_[2] ),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(\wr_pointer_reg_n_0_[1] ),
        .O(full_INST_0_i_2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2304" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "71" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "480" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,rd_pointer_reg,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,\wr_pointer_reg_n_0_[4] ,\wr_pointer_reg_n_0_[3] ,\wr_pointer_reg_n_0_[2] ,\wr_pointer_reg_n_0_[1] ,\wr_pointer_reg_n_0_[0] ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(rd_clk),
        .CLKBWRCLK(wr_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(wr_data[31:0]),
        .DIBDI(wr_data[31:0]),
        .DIPADIP(wr_data[67:64]),
        .DIPBDIP(wr_data[71:68]),
        .DOADO(rd_data[31:0]),
        .DOBDO(rd_data[63:32]),
        .DOPADOP(rd_data[67:64]),
        .DOPBDOP(rd_data[71:68]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_i_1_n_0),
        .ENBWREN(wr_pointer0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0}));
  LUT5 #(
    .INIT(32'h00002A00)) 
    mem_reg_i_1
       (.I0(rd_en),
        .I1(mem_reg_i_4_n_0),
        .I2(empty_INST_0_i_1_n_0),
        .I3(rd_state),
        .I4(rst),
        .O(mem_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h28AAAA28AAAAAAAA)) 
    mem_reg_i_2
       (.I0(wr_en),
        .I1(\wr_pointer[3]_i_1_n_0 ),
        .I2(rd_pointer_reg[3]),
        .I3(\wr_pointer[4]_i_2_n_0 ),
        .I4(rd_pointer_reg[4]),
        .I5(full_INST_0_i_1_n_0),
        .O(wr_pointer0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_3
       (.I0(wr_ready),
        .I1(rst),
        .O(mem_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    mem_reg_i_4
       (.I0(\wr_pointer_reg_n_0_[3] ),
        .I1(rd_pointer_reg[3]),
        .I2(\wr_pointer_reg_n_0_[4] ),
        .I3(rd_pointer_reg[4]),
        .O(mem_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'h2A00)) 
    \rd_pointer[0]_i_1 
       (.I0(rd_state),
        .I1(empty_INST_0_i_1_n_0),
        .I2(mem_reg_i_4_n_0),
        .I3(rd_en),
        .O(rd_pointer));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_pointer[0]_i_2 
       (.I0(rd_pointer_reg[0]),
        .O(\rd_pointer[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pointer[1]_i_1 
       (.I0(rd_pointer_reg[0]),
        .I1(rd_pointer_reg[1]),
        .O(\rd_pointer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_pointer[2]_i_1 
       (.I0(rd_pointer_reg[0]),
        .I1(rd_pointer_reg[1]),
        .I2(rd_pointer_reg[2]),
        .O(\rd_pointer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_pointer[3]_i_1 
       (.I0(rd_pointer_reg[1]),
        .I1(rd_pointer_reg[0]),
        .I2(rd_pointer_reg[2]),
        .I3(rd_pointer_reg[3]),
        .O(\rd_pointer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_pointer[4]_i_1 
       (.I0(rd_pointer_reg[2]),
        .I1(rd_pointer_reg[0]),
        .I2(rd_pointer_reg[1]),
        .I3(rd_pointer_reg[3]),
        .I4(rd_pointer_reg[4]),
        .O(\rd_pointer[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[0] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[0]_i_2_n_0 ),
        .Q(rd_pointer_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[1] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[1]_i_1_n_0 ),
        .Q(rd_pointer_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[2] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[2]_i_1_n_0 ),
        .Q(rd_pointer_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[3] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[3]_i_1_n_0 ),
        .Q(rd_pointer_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[4] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[4]_i_1_n_0 ),
        .Q(rd_pointer_reg[4]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_pointer[0]_i_1 
       (.I0(\wr_pointer_reg_n_0_[0] ),
        .O(\wr_pointer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pointer[1]_i_1 
       (.I0(\wr_pointer_reg_n_0_[0] ),
        .I1(\wr_pointer_reg_n_0_[1] ),
        .O(\wr_pointer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_pointer[2]_i_1 
       (.I0(\wr_pointer_reg_n_0_[0] ),
        .I1(\wr_pointer_reg_n_0_[1] ),
        .I2(\wr_pointer_reg_n_0_[2] ),
        .O(\wr_pointer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_pointer[3]_i_1 
       (.I0(\wr_pointer_reg_n_0_[1] ),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(\wr_pointer_reg_n_0_[2] ),
        .I3(\wr_pointer_reg_n_0_[3] ),
        .O(\wr_pointer[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAA2A00000000)) 
    \wr_pointer[4]_i_1 
       (.I0(wr_ready),
        .I1(full_INST_0_i_1_n_0),
        .I2(\wr_state[0]_i_2_n_0 ),
        .I3(rd_pointer_reg[3]),
        .I4(\wr_pointer[3]_i_1_n_0 ),
        .I5(wr_en),
        .O(\wr_pointer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_pointer[4]_i_2 
       (.I0(\wr_pointer_reg_n_0_[2] ),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(\wr_pointer_reg_n_0_[1] ),
        .I3(\wr_pointer_reg_n_0_[3] ),
        .I4(\wr_pointer_reg_n_0_[4] ),
        .O(\wr_pointer[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[0] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[0]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[1] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[1]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[2] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[2]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[3] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[3]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[4] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[4]_i_2_n_0 ),
        .Q(\wr_pointer_reg_n_0_[4] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hD55555D5AAAAAAAA)) 
    \wr_state[0]_i_1 
       (.I0(wr_en),
        .I1(full_INST_0_i_1_n_0),
        .I2(\wr_state[0]_i_2_n_0 ),
        .I3(rd_pointer_reg[3]),
        .I4(\wr_pointer[3]_i_1_n_0 ),
        .I5(wr_ready),
        .O(\wr_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \wr_state[0]_i_2 
       (.I0(rd_pointer_reg[4]),
        .I1(\wr_pointer_reg_n_0_[4] ),
        .I2(\wr_pointer_reg_n_0_[3] ),
        .I3(\wr_pointer_reg_n_0_[1] ),
        .I4(\wr_pointer_reg_n_0_[0] ),
        .I5(\wr_pointer_reg_n_0_[2] ),
        .O(\wr_state[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\wr_state[0]_i_1_n_0 ),
        .Q(wr_ready),
        .R(rst));
endmodule

(* BYTES = "8" *) (* BYTE_POINTER_WIDTH = "8" *) (* COUNTER_WIDTH = "5" *) 
(* DATA_WIDTH = "71" *) (* DEPTH = "32" *) (* IDEL = "2'b00" *) 
(* ORIG_REF_NAME = "FIFO" *) (* READ = "2'b10" *) (* WRITE = "2'b01" *) 
module FIFO__parameterized1
   (rst,
    wr_clk,
    wr_en,
    wr_data,
    wr_ready,
    rd_clk,
    rd_en,
    rd_data,
    rd_ready,
    full,
    empty);
  input rst;
  input wr_clk;
  input wr_en;
  input [70:0]wr_data;
  output wr_ready;
  input rd_clk;
  input rd_en;
  output [70:0]rd_data;
  output rd_ready;
  output full;
  output empty;

  wire FSM_sequential_rd_state_i_1_n_0;
  wire empty;
  wire empty_INST_0_i_1_n_0;
  wire full;
  wire full_INST_0_i_1_n_0;
  wire full_INST_0_i_2_n_0;
  wire mem_reg_i_1_n_0;
  wire mem_reg_i_3_n_0;
  wire mem_reg_i_4_n_0;
  wire rd_clk;
  wire [70:0]rd_data;
  wire rd_pointer;
  wire \rd_pointer[0]_i_2_n_0 ;
  wire \rd_pointer[1]_i_1_n_0 ;
  wire \rd_pointer[2]_i_1_n_0 ;
  wire \rd_pointer[3]_i_1_n_0 ;
  wire \rd_pointer[4]_i_1_n_0 ;
  wire [4:0]rd_pointer_reg;
  wire rd_ready;
  wire rd_state;
  wire rst;
  wire wr_clk;
  wire [70:0]wr_data;
  wire wr_en;
  wire wr_pointer0;
  wire \wr_pointer[0]_i_1_n_0 ;
  wire \wr_pointer[1]_i_1_n_0 ;
  wire \wr_pointer[2]_i_1_n_0 ;
  wire \wr_pointer[3]_i_1_n_0 ;
  wire \wr_pointer[4]_i_1_n_0 ;
  wire \wr_pointer[4]_i_2_n_0 ;
  wire \wr_pointer_reg_n_0_[0] ;
  wire \wr_pointer_reg_n_0_[1] ;
  wire \wr_pointer_reg_n_0_[2] ;
  wire \wr_pointer_reg_n_0_[3] ;
  wire \wr_pointer_reg_n_0_[4] ;
  wire wr_ready;
  wire \wr_state[0]_i_1_n_0 ;
  wire \wr_state[0]_i_2_n_0 ;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:3]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hD5AA)) 
    FSM_sequential_rd_state_i_1
       (.I0(wr_en),
        .I1(empty_INST_0_i_1_n_0),
        .I2(mem_reg_i_4_n_0),
        .I3(rd_state),
        .O(FSM_sequential_rd_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDEL:0,READ:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_rd_state_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(FSM_sequential_rd_state_i_1_n_0),
        .Q(rd_state),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h82000082)) 
    empty_INST_0
       (.I0(empty_INST_0_i_1_n_0),
        .I1(rd_pointer_reg[4]),
        .I2(\wr_pointer_reg_n_0_[4] ),
        .I3(rd_pointer_reg[3]),
        .I4(\wr_pointer_reg_n_0_[3] ),
        .O(empty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_INST_0_i_1
       (.I0(rd_pointer_reg[0]),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(rd_pointer_reg[2]),
        .I3(\wr_pointer_reg_n_0_[2] ),
        .I4(rd_pointer_reg[1]),
        .I5(\wr_pointer_reg_n_0_[1] ),
        .O(empty_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0082820028000082)) 
    full_INST_0
       (.I0(full_INST_0_i_1_n_0),
        .I1(rd_pointer_reg[4]),
        .I2(\wr_pointer_reg_n_0_[4] ),
        .I3(\wr_pointer_reg_n_0_[3] ),
        .I4(full_INST_0_i_2_n_0),
        .I5(rd_pointer_reg[3]),
        .O(full));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    full_INST_0_i_1
       (.I0(rd_pointer_reg[0]),
        .I1(rd_pointer_reg[2]),
        .I2(\wr_pointer_reg_n_0_[2] ),
        .I3(\wr_pointer_reg_n_0_[1] ),
        .I4(\wr_pointer_reg_n_0_[0] ),
        .I5(rd_pointer_reg[1]),
        .O(full_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    full_INST_0_i_2
       (.I0(\wr_pointer_reg_n_0_[2] ),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(\wr_pointer_reg_n_0_[1] ),
        .O(full_INST_0_i_2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p7_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p7_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2272" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "70" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "480" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "70" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,rd_pointer_reg,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,\wr_pointer_reg_n_0_[4] ,\wr_pointer_reg_n_0_[3] ,\wr_pointer_reg_n_0_[2] ,\wr_pointer_reg_n_0_[1] ,\wr_pointer_reg_n_0_[0] ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(rd_clk),
        .CLKBWRCLK(wr_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(wr_data[31:0]),
        .DIBDI(wr_data[63:32]),
        .DIPADIP(wr_data[67:64]),
        .DIPBDIP({1'b1,wr_data[70:68]}),
        .DOADO(rd_data[31:0]),
        .DOBDO(rd_data[63:32]),
        .DOPADOP(rd_data[67:64]),
        .DOPBDOP({NLW_mem_reg_DOPBDOP_UNCONNECTED[3],rd_data[70:68]}),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_i_1_n_0),
        .ENBWREN(wr_pointer0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0,mem_reg_i_3_n_0}));
  LUT5 #(
    .INIT(32'h00002A00)) 
    mem_reg_i_1
       (.I0(wr_en),
        .I1(mem_reg_i_4_n_0),
        .I2(empty_INST_0_i_1_n_0),
        .I3(rd_state),
        .I4(rst),
        .O(mem_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h28AAAA28AAAAAAAA)) 
    mem_reg_i_2
       (.I0(wr_en),
        .I1(\wr_pointer[3]_i_1_n_0 ),
        .I2(rd_pointer_reg[3]),
        .I3(\wr_pointer[4]_i_2_n_0 ),
        .I4(rd_pointer_reg[4]),
        .I5(full_INST_0_i_1_n_0),
        .O(wr_pointer0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_3
       (.I0(wr_ready),
        .I1(rst),
        .O(mem_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    mem_reg_i_4
       (.I0(\wr_pointer_reg_n_0_[3] ),
        .I1(rd_pointer_reg[3]),
        .I2(\wr_pointer_reg_n_0_[4] ),
        .I3(rd_pointer_reg[4]),
        .O(mem_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'h2A00)) 
    \rd_pointer[0]_i_1 
       (.I0(rd_state),
        .I1(empty_INST_0_i_1_n_0),
        .I2(mem_reg_i_4_n_0),
        .I3(wr_en),
        .O(rd_pointer));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_pointer[0]_i_2 
       (.I0(rd_pointer_reg[0]),
        .O(\rd_pointer[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pointer[1]_i_1 
       (.I0(rd_pointer_reg[0]),
        .I1(rd_pointer_reg[1]),
        .O(\rd_pointer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_pointer[2]_i_1 
       (.I0(rd_pointer_reg[0]),
        .I1(rd_pointer_reg[1]),
        .I2(rd_pointer_reg[2]),
        .O(\rd_pointer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_pointer[3]_i_1 
       (.I0(rd_pointer_reg[1]),
        .I1(rd_pointer_reg[0]),
        .I2(rd_pointer_reg[2]),
        .I3(rd_pointer_reg[3]),
        .O(\rd_pointer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_pointer[4]_i_1 
       (.I0(rd_pointer_reg[2]),
        .I1(rd_pointer_reg[0]),
        .I2(rd_pointer_reg[1]),
        .I3(rd_pointer_reg[3]),
        .I4(rd_pointer_reg[4]),
        .O(\rd_pointer[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[0] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[0]_i_2_n_0 ),
        .Q(rd_pointer_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[1] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[1]_i_1_n_0 ),
        .Q(rd_pointer_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[2] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[2]_i_1_n_0 ),
        .Q(rd_pointer_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[3] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[3]_i_1_n_0 ),
        .Q(rd_pointer_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[4] 
       (.C(rd_clk),
        .CE(rd_pointer),
        .D(\rd_pointer[4]_i_1_n_0 ),
        .Q(rd_pointer_reg[4]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    rd_ready_INST_0
       (.I0(rd_state),
        .O(rd_ready));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_pointer[0]_i_1 
       (.I0(\wr_pointer_reg_n_0_[0] ),
        .O(\wr_pointer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pointer[1]_i_1 
       (.I0(\wr_pointer_reg_n_0_[0] ),
        .I1(\wr_pointer_reg_n_0_[1] ),
        .O(\wr_pointer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_pointer[2]_i_1 
       (.I0(\wr_pointer_reg_n_0_[0] ),
        .I1(\wr_pointer_reg_n_0_[1] ),
        .I2(\wr_pointer_reg_n_0_[2] ),
        .O(\wr_pointer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_pointer[3]_i_1 
       (.I0(\wr_pointer_reg_n_0_[1] ),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(\wr_pointer_reg_n_0_[2] ),
        .I3(\wr_pointer_reg_n_0_[3] ),
        .O(\wr_pointer[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAA2A00000000)) 
    \wr_pointer[4]_i_1 
       (.I0(wr_ready),
        .I1(full_INST_0_i_1_n_0),
        .I2(\wr_state[0]_i_2_n_0 ),
        .I3(rd_pointer_reg[3]),
        .I4(\wr_pointer[3]_i_1_n_0 ),
        .I5(wr_en),
        .O(\wr_pointer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_pointer[4]_i_2 
       (.I0(\wr_pointer_reg_n_0_[2] ),
        .I1(\wr_pointer_reg_n_0_[0] ),
        .I2(\wr_pointer_reg_n_0_[1] ),
        .I3(\wr_pointer_reg_n_0_[3] ),
        .I4(\wr_pointer_reg_n_0_[4] ),
        .O(\wr_pointer[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[0] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[0]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[1] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[1]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[2] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[2]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[3] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[3]_i_1_n_0 ),
        .Q(\wr_pointer_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[4] 
       (.C(wr_clk),
        .CE(\wr_pointer[4]_i_1_n_0 ),
        .D(\wr_pointer[4]_i_2_n_0 ),
        .Q(\wr_pointer_reg_n_0_[4] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hD55555D5AAAAAAAA)) 
    \wr_state[0]_i_1 
       (.I0(wr_en),
        .I1(full_INST_0_i_1_n_0),
        .I2(\wr_state[0]_i_2_n_0 ),
        .I3(rd_pointer_reg[3]),
        .I4(\wr_pointer[3]_i_1_n_0 ),
        .I5(wr_ready),
        .O(\wr_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \wr_state[0]_i_2 
       (.I0(rd_pointer_reg[4]),
        .I1(\wr_pointer_reg_n_0_[4] ),
        .I2(\wr_pointer_reg_n_0_[3] ),
        .I3(\wr_pointer_reg_n_0_[1] ),
        .I4(\wr_pointer_reg_n_0_[0] ),
        .I5(\wr_pointer_reg_n_0_[2] ),
        .O(\wr_state[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\wr_state[0]_i_1_n_0 ),
        .Q(wr_ready),
        .R(rst));
endmodule

(* ADDR_WIDTH = "32" *) (* AR_DEPTH = "32" *) (* DATA_WIDTH = "64" *) 
(* ID_WIDTH = "4" *) (* LEN_WIDTH = "8" *) (* RESPONSE_WIDTH = "3" *) 
(* R_DEPTH = "32" *) (* SIZE_WIDTH = "4" *) 
module READ_BUFFER
   (aclk,
    areset,
    arvalid,
    araddr,
    arid,
    arsize,
    arburst,
    arlen,
    arready,
    rd_clk,
    ar_addr_read,
    ar_read_ready,
    arfull,
    arempty,
    ar_addr_out,
    rvalid,
    rdata,
    rid,
    rlast,
    rresp,
    rready,
    r_fifo_wr_clk,
    wr_r_fifo_data,
    wr_r_fifo_en,
    wr_r_fifo_ready,
    r_full,
    r_empty);
  input aclk;
  input areset;
  input arvalid;
  input [31:0]araddr;
  input [3:0]arid;
  input [3:0]arsize;
  input [1:0]arburst;
  input [7:0]arlen;
  output arready;
  input rd_clk;
  input ar_addr_read;
  output ar_read_ready;
  output arfull;
  output arempty;
  output [49:0]ar_addr_out;
  output rvalid;
  output [63:0]rdata;
  output [3:0]rid;
  output rlast;
  output [2:0]rresp;
  input rready;
  input r_fifo_wr_clk;
  input [70:0]wr_r_fifo_data;
  input wr_r_fifo_en;
  output wr_r_fifo_ready;
  output r_full;
  output r_empty;

  wire aclk;
  wire [49:0]ar_addr_out;
  wire ar_addr_read;
  wire ar_read_ready;
  wire [31:0]araddr;
  wire [1:0]arburst;
  wire arempty;
  wire areset;
  wire arfull;
  wire [3:0]arid;
  wire [7:0]arlen;
  wire arready;
  wire arvalid;
  wire r_empty;
  wire r_full;
  wire rd_clk;
  wire [63:0]rdata;
  wire [3:0]rid;
  wire rlast;
  wire rready;
  wire [2:0]rresp;
  wire rvalid;
  wire [70:0]wr_r_fifo_data;
  wire wr_r_fifo_en;
  wire wr_r_fifo_ready;

  (* ADDR_WIDTH = "32" *) 
  (* AR_DEPTH = "32" *) 
  (* AR_FIFO_WIDTH = "50" *) 
  (* DATA_WIDTH = "64" *) 
  (* ID_WIDTH = "4" *) 
  (* LEN_WIDTH = "8" *) 
  (* RESPONSE_WIDTH = "3" *) 
  (* SIZE_WIDTH = "4" *) 
  AR_FIFO AR_FIFO_INST_READ_BUFFER
       (.aclk(aclk),
        .ar_addr_out(ar_addr_out),
        .ar_addr_read(ar_addr_read),
        .ar_read_ready(ar_read_ready),
        .araddr(araddr),
        .arburst(arburst),
        .arempty(arempty),
        .areset(areset),
        .arfull(arfull),
        .arid(arid),
        .arlen(arlen),
        .arready(arready),
        .arsize({1'b0,1'b0,1'b0,1'b0}),
        .arvalid(arvalid),
        .rd_clk(rd_clk));
  (* ADDR_WIDTH = "32" *) 
  (* DATA_WIDTH = "64" *) 
  (* IDEL = "2'b00" *) 
  (* ID_WIDTH = "4" *) 
  (* LEN_WIDTH = "8" *) 
  (* READ = "2'b01" *) 
  (* RESPONSE_WIDTH = "3" *) 
  (* R_DATA_FIFO_WIDTH = "71" *) 
  (* R_DEPTH = "32" *) 
  (* SEND = "2'b11" *) 
  (* SIZE_WIDTH = "4" *) 
  (* SYNCRONIZE = "2'b10" *) 
  R_FIFO r_fifo_inst
       (.aclk(aclk),
        .areset(areset),
        .r_empty(r_empty),
        .r_fifo_wr_clk(rd_clk),
        .r_full(r_full),
        .rdata(rdata),
        .rid(rid),
        .rlast(rlast),
        .rready(rready),
        .rresp(rresp),
        .rvalid(rvalid),
        .wr_r_fifo_data(wr_r_fifo_data),
        .wr_r_fifo_en(wr_r_fifo_en),
        .wr_r_fifo_ready(wr_r_fifo_ready));
endmodule

(* ADDR_WIDTH = "32" *) (* DATA_WIDTH = "64" *) (* IDEL = "2'b00" *) 
(* ID_WIDTH = "4" *) (* LEN_WIDTH = "8" *) (* READ = "2'b01" *) 
(* RESPONSE_WIDTH = "3" *) (* R_DATA_FIFO_WIDTH = "71" *) (* R_DEPTH = "32" *) 
(* SEND = "2'b11" *) (* SIZE_WIDTH = "4" *) (* SYNCRONIZE = "2'b10" *) 
module R_FIFO
   (r_fifo_wr_clk,
    wr_r_fifo_data,
    wr_r_fifo_en,
    wr_r_fifo_ready,
    r_full,
    r_empty,
    aclk,
    areset,
    rvalid,
    rdata,
    rid,
    rlast,
    rresp,
    rready);
  input r_fifo_wr_clk;
  input [70:0]wr_r_fifo_data;
  input wr_r_fifo_en;
  output wr_r_fifo_ready;
  output r_full;
  output r_empty;
  input aclk;
  input areset;
  output rvalid;
  output [63:0]rdata;
  output [3:0]rid;
  output rlast;
  output [2:0]rresp;
  input rready;

  wire \FSM_onehot_r_fifo_state[0]_i_1_n_0 ;
  wire \FSM_onehot_r_fifo_state[1]_i_1_n_0 ;
  wire \FSM_onehot_r_fifo_state[3]_i_1_n_0 ;
  wire \FSM_onehot_r_fifo_state_reg_n_0_[0] ;
  wire \FSM_onehot_r_fifo_state_reg_n_0_[1] ;
  wire aclk;
  wire areset;
  wire [70:0]out_rdata;
  wire [63:0]p_0_in;
  wire r_empty;
  wire r_fifo_wr_clk;
  wire r_full;
  wire rd_ready;
  wire [63:0]rdata;
  wire \rdata[63]_i_1_n_0 ;
  wire [3:0]rid;
  wire rlast;
  wire rlast1;
  wire rlast_INST_0_i_10_n_0;
  wire rlast_INST_0_i_10_n_1;
  wire rlast_INST_0_i_10_n_2;
  wire rlast_INST_0_i_10_n_3;
  wire rlast_INST_0_i_11_n_0;
  wire rlast_INST_0_i_12_n_0;
  wire rlast_INST_0_i_13_n_0;
  wire rlast_INST_0_i_14_n_0;
  wire rlast_INST_0_i_15_n_0;
  wire rlast_INST_0_i_15_n_1;
  wire rlast_INST_0_i_15_n_2;
  wire rlast_INST_0_i_15_n_3;
  wire rlast_INST_0_i_16_n_0;
  wire rlast_INST_0_i_17_n_0;
  wire rlast_INST_0_i_18_n_0;
  wire rlast_INST_0_i_19_n_0;
  wire rlast_INST_0_i_1_n_0;
  wire rlast_INST_0_i_1_n_1;
  wire rlast_INST_0_i_1_n_2;
  wire rlast_INST_0_i_1_n_3;
  wire rlast_INST_0_i_20_n_0;
  wire rlast_INST_0_i_20_n_1;
  wire rlast_INST_0_i_20_n_2;
  wire rlast_INST_0_i_20_n_3;
  wire rlast_INST_0_i_21_n_0;
  wire rlast_INST_0_i_22_n_0;
  wire rlast_INST_0_i_23_n_0;
  wire rlast_INST_0_i_24_n_0;
  wire rlast_INST_0_i_25_n_0;
  wire rlast_INST_0_i_26_n_0;
  wire rlast_INST_0_i_27_n_0;
  wire rlast_INST_0_i_28_n_0;
  wire rlast_INST_0_i_2_n_0;
  wire rlast_INST_0_i_3_n_0;
  wire rlast_INST_0_i_4_n_0;
  wire rlast_INST_0_i_5_n_0;
  wire rlast_INST_0_i_5_n_1;
  wire rlast_INST_0_i_5_n_2;
  wire rlast_INST_0_i_5_n_3;
  wire rlast_INST_0_i_6_n_0;
  wire rlast_INST_0_i_7_n_0;
  wire rlast_INST_0_i_8_n_0;
  wire rlast_INST_0_i_9_n_0;
  wire rlast_INST_0_n_2;
  wire rlast_INST_0_n_3;
  wire rready;
  wire [2:0]rresp;
  wire rvalid;
  wire \sync1[70]_i_1_n_0 ;
  wire [70:0]sync1__0;
  wire sync2;
  wire \sync2[70]_i_1_n_0 ;
  wire \sync2_reg_n_0_[0] ;
  wire \sync2_reg_n_0_[1] ;
  wire \sync2_reg_n_0_[2] ;
  wire \sync2_reg_n_0_[67] ;
  wire \sync2_reg_n_0_[68] ;
  wire \sync2_reg_n_0_[69] ;
  wire \sync2_reg_n_0_[70] ;
  wire [70:0]wr_r_fifo_data;
  wire wr_r_fifo_en;
  wire wr_r_fifo_ready;
  wire [3:3]NLW_rlast_INST_0_CO_UNCONNECTED;
  wire [2:0]NLW_rlast_INST_0_O_UNCONNECTED;
  wire [3:0]NLW_rlast_INST_0_i_1_O_UNCONNECTED;
  wire [3:0]NLW_rlast_INST_0_i_10_O_UNCONNECTED;
  wire [3:0]NLW_rlast_INST_0_i_15_O_UNCONNECTED;
  wire [3:0]NLW_rlast_INST_0_i_20_O_UNCONNECTED;
  wire [3:0]NLW_rlast_INST_0_i_5_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_r_fifo_state[0]_i_1 
       (.I0(rvalid),
        .I1(r_empty),
        .I2(\FSM_onehot_r_fifo_state_reg_n_0_[0] ),
        .O(\FSM_onehot_r_fifo_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_r_fifo_state[1]_i_1 
       (.I0(\FSM_onehot_r_fifo_state_reg_n_0_[0] ),
        .I1(r_empty),
        .O(\FSM_onehot_r_fifo_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEEEFFFFFEEE)) 
    \FSM_onehot_r_fifo_state[3]_i_1 
       (.I0(\FSM_onehot_r_fifo_state_reg_n_0_[0] ),
        .I1(sync2),
        .I2(rready),
        .I3(rvalid),
        .I4(\FSM_onehot_r_fifo_state_reg_n_0_[1] ),
        .I5(rd_ready),
        .O(\FSM_onehot_r_fifo_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "SYNCRONIZE:0100,SEND:1000,IDEL:0001,READ:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_r_fifo_state_reg[0] 
       (.C(aclk),
        .CE(\FSM_onehot_r_fifo_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_r_fifo_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_r_fifo_state_reg_n_0_[0] ),
        .S(areset));
  (* FSM_ENCODED_STATES = "SYNCRONIZE:0100,SEND:1000,IDEL:0001,READ:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_fifo_state_reg[1] 
       (.C(aclk),
        .CE(\FSM_onehot_r_fifo_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_r_fifo_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_r_fifo_state_reg_n_0_[1] ),
        .R(areset));
  (* FSM_ENCODED_STATES = "SYNCRONIZE:0100,SEND:1000,IDEL:0001,READ:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_fifo_state_reg[2] 
       (.C(aclk),
        .CE(\FSM_onehot_r_fifo_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_r_fifo_state_reg_n_0_[1] ),
        .Q(sync2),
        .R(areset));
  (* FSM_ENCODED_STATES = "SYNCRONIZE:0100,SEND:1000,IDEL:0001,READ:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_fifo_state_reg[3] 
       (.C(aclk),
        .CE(\FSM_onehot_r_fifo_state[3]_i_1_n_0 ),
        .D(sync2),
        .Q(rvalid),
        .R(areset));
  (* BYTES = "8" *) 
  (* BYTE_POINTER_WIDTH = "8" *) 
  (* COUNTER_WIDTH = "5" *) 
  (* DATA_WIDTH = "71" *) 
  (* DEPTH = "32" *) 
  (* IDEL = "2'b00" *) 
  (* READ = "2'b10" *) 
  (* WRITE = "2'b01" *) 
  FIFO__parameterized1 R_FIFO_INST
       (.empty(r_empty),
        .full(r_full),
        .rd_clk(aclk),
        .rd_data(out_rdata),
        .rd_en(1'b0),
        .rd_ready(rd_ready),
        .rst(areset),
        .wr_clk(r_fifo_wr_clk),
        .wr_data(wr_r_fifo_data),
        .wr_en(wr_r_fifo_en),
        .wr_ready(wr_r_fifo_ready));
  LUT3 #(
    .INIT(8'h08)) 
    \rdata[63]_i_1 
       (.I0(rvalid),
        .I1(rready),
        .I2(areset),
        .O(\rdata[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[0] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(rdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[10] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(rdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[11] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(rdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[12] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(rdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[13] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(rdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[14] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(rdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[15] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(rdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[16] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[16]),
        .Q(rdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[17] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[17]),
        .Q(rdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[18] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[18]),
        .Q(rdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[19] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[19]),
        .Q(rdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[1] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(rdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[20] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[20]),
        .Q(rdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[21] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[21]),
        .Q(rdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[22] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[22]),
        .Q(rdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[23] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[23]),
        .Q(rdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[24] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[24]),
        .Q(rdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[25] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[25]),
        .Q(rdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[26] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[26]),
        .Q(rdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[27] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[27]),
        .Q(rdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[28] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[28]),
        .Q(rdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[29] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[29]),
        .Q(rdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[2] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(rdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[30] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[30]),
        .Q(rdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[31] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[31]),
        .Q(rdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[32] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[32]),
        .Q(rdata[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[33] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[33]),
        .Q(rdata[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[34] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[34]),
        .Q(rdata[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[35] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[35]),
        .Q(rdata[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[36] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[36]),
        .Q(rdata[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[37] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[37]),
        .Q(rdata[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[38] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[38]),
        .Q(rdata[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[39] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[39]),
        .Q(rdata[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[3] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(rdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[40] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[40]),
        .Q(rdata[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[41] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[41]),
        .Q(rdata[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[42] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[42]),
        .Q(rdata[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[43] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[43]),
        .Q(rdata[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[44] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[44]),
        .Q(rdata[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[45] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[45]),
        .Q(rdata[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[46] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[46]),
        .Q(rdata[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[47] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[47]),
        .Q(rdata[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[48] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[48]),
        .Q(rdata[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[49] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[49]),
        .Q(rdata[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[4] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(rdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[50] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[50]),
        .Q(rdata[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[51] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[51]),
        .Q(rdata[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[52] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[52]),
        .Q(rdata[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[53] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[53]),
        .Q(rdata[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[54] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[54]),
        .Q(rdata[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[55] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[55]),
        .Q(rdata[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[56] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[56]),
        .Q(rdata[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[57] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[57]),
        .Q(rdata[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[58] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[58]),
        .Q(rdata[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[59] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[59]),
        .Q(rdata[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[5] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(rdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[60] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[60]),
        .Q(rdata[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[61] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[61]),
        .Q(rdata[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[62] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[62]),
        .Q(rdata[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[63] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[63]),
        .Q(rdata[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[6] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(rdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[7] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(rdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[8] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(rdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[9] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(rdata[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rid_reg[0] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(\sync2_reg_n_0_[67] ),
        .Q(rid[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rid_reg[1] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(\sync2_reg_n_0_[68] ),
        .Q(rid[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rid_reg[2] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(\sync2_reg_n_0_[69] ),
        .Q(rid[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rid_reg[3] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(\sync2_reg_n_0_[70] ),
        .Q(rid[3]),
        .R(1'b0));
  CARRY4 rlast_INST_0
       (.CI(rlast_INST_0_i_1_n_0),
        .CO({NLW_rlast_INST_0_CO_UNCONNECTED[3],rlast1,rlast_INST_0_n_2,rlast_INST_0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({rlast,NLW_rlast_INST_0_O_UNCONNECTED[2:0]}),
        .S({1'b1,rlast_INST_0_i_2_n_0,rlast_INST_0_i_3_n_0,rlast_INST_0_i_4_n_0}));
  CARRY4 rlast_INST_0_i_1
       (.CI(rlast_INST_0_i_5_n_0),
        .CO({rlast_INST_0_i_1_n_0,rlast_INST_0_i_1_n_1,rlast_INST_0_i_1_n_2,rlast_INST_0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rlast_INST_0_i_1_O_UNCONNECTED[3:0]),
        .S({rlast_INST_0_i_6_n_0,rlast_INST_0_i_7_n_0,rlast_INST_0_i_8_n_0,rlast_INST_0_i_9_n_0}));
  CARRY4 rlast_INST_0_i_10
       (.CI(rlast_INST_0_i_15_n_0),
        .CO({rlast_INST_0_i_10_n_0,rlast_INST_0_i_10_n_1,rlast_INST_0_i_10_n_2,rlast_INST_0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rlast_INST_0_i_10_O_UNCONNECTED[3:0]),
        .S({rlast_INST_0_i_16_n_0,rlast_INST_0_i_17_n_0,rlast_INST_0_i_18_n_0,rlast_INST_0_i_19_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_11
       (.I0(p_0_in[46]),
        .I1(out_rdata[49]),
        .I2(out_rdata[51]),
        .I3(p_0_in[48]),
        .I4(out_rdata[50]),
        .I5(p_0_in[47]),
        .O(rlast_INST_0_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_12
       (.I0(p_0_in[43]),
        .I1(out_rdata[46]),
        .I2(out_rdata[48]),
        .I3(p_0_in[45]),
        .I4(out_rdata[47]),
        .I5(p_0_in[44]),
        .O(rlast_INST_0_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_13
       (.I0(p_0_in[40]),
        .I1(out_rdata[43]),
        .I2(out_rdata[45]),
        .I3(p_0_in[42]),
        .I4(out_rdata[44]),
        .I5(p_0_in[41]),
        .O(rlast_INST_0_i_13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_14
       (.I0(p_0_in[37]),
        .I1(out_rdata[40]),
        .I2(out_rdata[42]),
        .I3(p_0_in[39]),
        .I4(out_rdata[41]),
        .I5(p_0_in[38]),
        .O(rlast_INST_0_i_14_n_0));
  CARRY4 rlast_INST_0_i_15
       (.CI(rlast_INST_0_i_20_n_0),
        .CO({rlast_INST_0_i_15_n_0,rlast_INST_0_i_15_n_1,rlast_INST_0_i_15_n_2,rlast_INST_0_i_15_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rlast_INST_0_i_15_O_UNCONNECTED[3:0]),
        .S({rlast_INST_0_i_21_n_0,rlast_INST_0_i_22_n_0,rlast_INST_0_i_23_n_0,rlast_INST_0_i_24_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_16
       (.I0(p_0_in[34]),
        .I1(out_rdata[37]),
        .I2(out_rdata[39]),
        .I3(p_0_in[36]),
        .I4(out_rdata[38]),
        .I5(p_0_in[35]),
        .O(rlast_INST_0_i_16_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_17
       (.I0(p_0_in[31]),
        .I1(out_rdata[34]),
        .I2(out_rdata[36]),
        .I3(p_0_in[33]),
        .I4(out_rdata[35]),
        .I5(p_0_in[32]),
        .O(rlast_INST_0_i_17_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_18
       (.I0(p_0_in[28]),
        .I1(out_rdata[31]),
        .I2(out_rdata[33]),
        .I3(p_0_in[30]),
        .I4(out_rdata[32]),
        .I5(p_0_in[29]),
        .O(rlast_INST_0_i_18_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_19
       (.I0(p_0_in[25]),
        .I1(out_rdata[28]),
        .I2(out_rdata[30]),
        .I3(p_0_in[27]),
        .I4(out_rdata[29]),
        .I5(p_0_in[26]),
        .O(rlast_INST_0_i_19_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rlast_INST_0_i_2
       (.I0(out_rdata[70]),
        .I1(\sync2_reg_n_0_[70] ),
        .O(rlast_INST_0_i_2_n_0));
  CARRY4 rlast_INST_0_i_20
       (.CI(1'b0),
        .CO({rlast_INST_0_i_20_n_0,rlast_INST_0_i_20_n_1,rlast_INST_0_i_20_n_2,rlast_INST_0_i_20_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rlast_INST_0_i_20_O_UNCONNECTED[3:0]),
        .S({rlast_INST_0_i_25_n_0,rlast_INST_0_i_26_n_0,rlast_INST_0_i_27_n_0,rlast_INST_0_i_28_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_21
       (.I0(p_0_in[22]),
        .I1(out_rdata[25]),
        .I2(out_rdata[27]),
        .I3(p_0_in[24]),
        .I4(out_rdata[26]),
        .I5(p_0_in[23]),
        .O(rlast_INST_0_i_21_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_22
       (.I0(p_0_in[19]),
        .I1(out_rdata[22]),
        .I2(out_rdata[24]),
        .I3(p_0_in[21]),
        .I4(out_rdata[23]),
        .I5(p_0_in[20]),
        .O(rlast_INST_0_i_22_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_23
       (.I0(p_0_in[16]),
        .I1(out_rdata[19]),
        .I2(out_rdata[21]),
        .I3(p_0_in[18]),
        .I4(out_rdata[20]),
        .I5(p_0_in[17]),
        .O(rlast_INST_0_i_23_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_24
       (.I0(p_0_in[13]),
        .I1(out_rdata[16]),
        .I2(out_rdata[18]),
        .I3(p_0_in[15]),
        .I4(out_rdata[17]),
        .I5(p_0_in[14]),
        .O(rlast_INST_0_i_24_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_25
       (.I0(p_0_in[10]),
        .I1(out_rdata[13]),
        .I2(out_rdata[15]),
        .I3(p_0_in[12]),
        .I4(out_rdata[14]),
        .I5(p_0_in[11]),
        .O(rlast_INST_0_i_25_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_26
       (.I0(p_0_in[7]),
        .I1(out_rdata[10]),
        .I2(out_rdata[12]),
        .I3(p_0_in[9]),
        .I4(out_rdata[11]),
        .I5(p_0_in[8]),
        .O(rlast_INST_0_i_26_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_27
       (.I0(p_0_in[4]),
        .I1(out_rdata[7]),
        .I2(out_rdata[9]),
        .I3(p_0_in[6]),
        .I4(out_rdata[8]),
        .I5(p_0_in[5]),
        .O(rlast_INST_0_i_27_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_28
       (.I0(p_0_in[1]),
        .I1(out_rdata[4]),
        .I2(out_rdata[6]),
        .I3(p_0_in[3]),
        .I4(out_rdata[5]),
        .I5(p_0_in[2]),
        .O(rlast_INST_0_i_28_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_3
       (.I0(\sync2_reg_n_0_[67] ),
        .I1(out_rdata[67]),
        .I2(out_rdata[69]),
        .I3(\sync2_reg_n_0_[69] ),
        .I4(out_rdata[68]),
        .I5(\sync2_reg_n_0_[68] ),
        .O(rlast_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_4
       (.I0(p_0_in[61]),
        .I1(out_rdata[64]),
        .I2(out_rdata[66]),
        .I3(p_0_in[63]),
        .I4(out_rdata[65]),
        .I5(p_0_in[62]),
        .O(rlast_INST_0_i_4_n_0));
  CARRY4 rlast_INST_0_i_5
       (.CI(rlast_INST_0_i_10_n_0),
        .CO({rlast_INST_0_i_5_n_0,rlast_INST_0_i_5_n_1,rlast_INST_0_i_5_n_2,rlast_INST_0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rlast_INST_0_i_5_O_UNCONNECTED[3:0]),
        .S({rlast_INST_0_i_11_n_0,rlast_INST_0_i_12_n_0,rlast_INST_0_i_13_n_0,rlast_INST_0_i_14_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_6
       (.I0(p_0_in[58]),
        .I1(out_rdata[61]),
        .I2(out_rdata[63]),
        .I3(p_0_in[60]),
        .I4(out_rdata[62]),
        .I5(p_0_in[59]),
        .O(rlast_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_7
       (.I0(p_0_in[55]),
        .I1(out_rdata[58]),
        .I2(out_rdata[60]),
        .I3(p_0_in[57]),
        .I4(out_rdata[59]),
        .I5(p_0_in[56]),
        .O(rlast_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_8
       (.I0(p_0_in[52]),
        .I1(out_rdata[55]),
        .I2(out_rdata[57]),
        .I3(p_0_in[54]),
        .I4(out_rdata[56]),
        .I5(p_0_in[53]),
        .O(rlast_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rlast_INST_0_i_9
       (.I0(p_0_in[49]),
        .I1(out_rdata[52]),
        .I2(out_rdata[54]),
        .I3(p_0_in[51]),
        .I4(out_rdata[53]),
        .I5(p_0_in[50]),
        .O(rlast_INST_0_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rresp_reg[0] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(\sync2_reg_n_0_[0] ),
        .Q(rresp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rresp_reg[1] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(\sync2_reg_n_0_[1] ),
        .Q(rresp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rresp_reg[2] 
       (.C(aclk),
        .CE(\rdata[63]_i_1_n_0 ),
        .D(\sync2_reg_n_0_[2] ),
        .Q(rresp[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \sync1[70]_i_1 
       (.I0(rd_ready),
        .I1(\FSM_onehot_r_fifo_state_reg_n_0_[1] ),
        .I2(areset),
        .O(\sync1[70]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[0] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[0]),
        .Q(sync1__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[10] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[10]),
        .Q(sync1__0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[11] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[11]),
        .Q(sync1__0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[12] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[12]),
        .Q(sync1__0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[13] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[13]),
        .Q(sync1__0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[14] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[14]),
        .Q(sync1__0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[15] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[15]),
        .Q(sync1__0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[16] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[16]),
        .Q(sync1__0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[17] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[17]),
        .Q(sync1__0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[18] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[18]),
        .Q(sync1__0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[19] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[19]),
        .Q(sync1__0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[1] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[1]),
        .Q(sync1__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[20] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[20]),
        .Q(sync1__0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[21] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[21]),
        .Q(sync1__0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[22] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[22]),
        .Q(sync1__0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[23] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[23]),
        .Q(sync1__0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[24] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[24]),
        .Q(sync1__0[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[25] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[25]),
        .Q(sync1__0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[26] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[26]),
        .Q(sync1__0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[27] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[27]),
        .Q(sync1__0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[28] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[28]),
        .Q(sync1__0[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[29] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[29]),
        .Q(sync1__0[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[2] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[2]),
        .Q(sync1__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[30] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[30]),
        .Q(sync1__0[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[31] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[31]),
        .Q(sync1__0[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[32] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[32]),
        .Q(sync1__0[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[33] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[33]),
        .Q(sync1__0[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[34] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[34]),
        .Q(sync1__0[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[35] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[35]),
        .Q(sync1__0[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[36] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[36]),
        .Q(sync1__0[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[37] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[37]),
        .Q(sync1__0[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[38] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[38]),
        .Q(sync1__0[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[39] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[39]),
        .Q(sync1__0[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[3] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[3]),
        .Q(sync1__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[40] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[40]),
        .Q(sync1__0[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[41] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[41]),
        .Q(sync1__0[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[42] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[42]),
        .Q(sync1__0[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[43] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[43]),
        .Q(sync1__0[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[44] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[44]),
        .Q(sync1__0[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[45] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[45]),
        .Q(sync1__0[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[46] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[46]),
        .Q(sync1__0[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[47] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[47]),
        .Q(sync1__0[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[48] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[48]),
        .Q(sync1__0[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[49] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[49]),
        .Q(sync1__0[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[4] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[4]),
        .Q(sync1__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[50] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[50]),
        .Q(sync1__0[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[51] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[51]),
        .Q(sync1__0[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[52] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[52]),
        .Q(sync1__0[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[53] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[53]),
        .Q(sync1__0[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[54] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[54]),
        .Q(sync1__0[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[55] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[55]),
        .Q(sync1__0[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[56] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[56]),
        .Q(sync1__0[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[57] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[57]),
        .Q(sync1__0[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[58] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[58]),
        .Q(sync1__0[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[59] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[59]),
        .Q(sync1__0[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[5] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[5]),
        .Q(sync1__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[60] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[60]),
        .Q(sync1__0[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[61] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[61]),
        .Q(sync1__0[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[62] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[62]),
        .Q(sync1__0[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[63] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[63]),
        .Q(sync1__0[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[64] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[64]),
        .Q(sync1__0[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[65] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[65]),
        .Q(sync1__0[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[66] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[66]),
        .Q(sync1__0[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[67] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[67]),
        .Q(sync1__0[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[68] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[68]),
        .Q(sync1__0[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[69] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[69]),
        .Q(sync1__0[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[6] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[6]),
        .Q(sync1__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[70] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[70]),
        .Q(sync1__0[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[7] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[7]),
        .Q(sync1__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[8] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[8]),
        .Q(sync1__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync1_reg[9] 
       (.C(aclk),
        .CE(\sync1[70]_i_1_n_0 ),
        .D(out_rdata[9]),
        .Q(sync1__0[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \sync2[70]_i_1 
       (.I0(sync2),
        .I1(areset),
        .O(\sync2[70]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[0] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[0]),
        .Q(\sync2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[10] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[10]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[11] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[11]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[12] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[12]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[13] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[13]),
        .Q(p_0_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[14] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[14]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[15] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[15]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[16] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[16]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[17] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[17]),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[18] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[18]),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[19] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[19]),
        .Q(p_0_in[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[1] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[1]),
        .Q(\sync2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[20] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[20]),
        .Q(p_0_in[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[21] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[21]),
        .Q(p_0_in[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[22] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[22]),
        .Q(p_0_in[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[23] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[23]),
        .Q(p_0_in[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[24] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[24]),
        .Q(p_0_in[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[25] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[25]),
        .Q(p_0_in[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[26] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[26]),
        .Q(p_0_in[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[27] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[27]),
        .Q(p_0_in[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[28] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[28]),
        .Q(p_0_in[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[29] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[29]),
        .Q(p_0_in[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[2] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[2]),
        .Q(\sync2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[30] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[30]),
        .Q(p_0_in[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[31] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[31]),
        .Q(p_0_in[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[32] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[32]),
        .Q(p_0_in[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[33] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[33]),
        .Q(p_0_in[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[34] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[34]),
        .Q(p_0_in[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[35] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[35]),
        .Q(p_0_in[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[36] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[36]),
        .Q(p_0_in[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[37] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[37]),
        .Q(p_0_in[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[38] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[38]),
        .Q(p_0_in[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[39] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[39]),
        .Q(p_0_in[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[3] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[3]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[40] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[40]),
        .Q(p_0_in[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[41] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[41]),
        .Q(p_0_in[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[42] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[42]),
        .Q(p_0_in[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[43] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[43]),
        .Q(p_0_in[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[44] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[44]),
        .Q(p_0_in[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[45] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[45]),
        .Q(p_0_in[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[46] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[46]),
        .Q(p_0_in[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[47] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[47]),
        .Q(p_0_in[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[48] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[48]),
        .Q(p_0_in[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[49] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[49]),
        .Q(p_0_in[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[4] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[4]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[50] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[50]),
        .Q(p_0_in[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[51] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[51]),
        .Q(p_0_in[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[52] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[52]),
        .Q(p_0_in[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[53] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[53]),
        .Q(p_0_in[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[54] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[54]),
        .Q(p_0_in[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[55] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[55]),
        .Q(p_0_in[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[56] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[56]),
        .Q(p_0_in[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[57] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[57]),
        .Q(p_0_in[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[58] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[58]),
        .Q(p_0_in[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[59] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[59]),
        .Q(p_0_in[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[5] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[5]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[60] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[60]),
        .Q(p_0_in[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[61] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[61]),
        .Q(p_0_in[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[62] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[62]),
        .Q(p_0_in[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[63] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[63]),
        .Q(p_0_in[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[64] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[64]),
        .Q(p_0_in[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[65] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[65]),
        .Q(p_0_in[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[66] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[66]),
        .Q(p_0_in[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[67] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[67]),
        .Q(\sync2_reg_n_0_[67] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[68] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[68]),
        .Q(\sync2_reg_n_0_[68] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[69] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[69]),
        .Q(\sync2_reg_n_0_[69] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[6] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[6]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[70] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[70]),
        .Q(\sync2_reg_n_0_[70] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[7] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[7]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[8] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[8]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sync2_reg[9] 
       (.C(aclk),
        .CE(\sync2[70]_i_1_n_0 ),
        .D(sync1__0[9]),
        .Q(p_0_in[6]),
        .R(1'b0));
endmodule

(* ADDR_WIDTH = "32" *) (* AW_DEPTH = "32" *) (* DATA_WIDTH = "64" *) 
(* ID_WIDTH = "4" *) (* LEN_WIDTH = "8" *) (* RESPONSE_WIDTH = "3" *) 
(* SIZE_WIDTH = "4" *) (* W_DEPTH = "32" *) 
module WRITE_BUFFER
   (Aclk,
    areset,
    awvalid,
    awaddr,
    awsize,
    awlen,
    awburst,
    awid,
    awready,
    awfull,
    awempty,
    rd_clk,
    addr_read,
    out_addr,
    addr_read_ready,
    wvalid,
    wdata,
    wstrb,
    wlast,
    wready,
    read_wdata,
    out_wdata_ready,
    w_full,
    w_empty,
    out_wdata);
  input Aclk;
  input areset;
  input awvalid;
  input [31:0]awaddr;
  input [3:0]awsize;
  input [7:0]awlen;
  input [1:0]awburst;
  input [3:0]awid;
  output awready;
  output awfull;
  output awempty;
  input rd_clk;
  input addr_read;
  output [49:0]out_addr;
  output addr_read_ready;
  input wvalid;
  input [63:0]wdata;
  input [7:0]wstrb;
  input wlast;
  output wready;
  input read_wdata;
  output out_wdata_ready;
  output w_full;
  output w_empty;
  output [71:0]out_wdata;

  wire \<const0> ;
  wire Aclk;
  wire addr_read;
  wire addr_read_ready;
  wire areset;
  wire [31:0]awaddr;
  wire [1:0]awburst;
  wire awempty;
  wire awfull;
  wire [3:0]awid;
  wire [7:0]awlen;
  wire awready;
  wire awvalid;
  wire [49:0]out_addr;
  wire [71:0]out_wdata;
  wire rd_clk;
  wire read_wdata;
  wire w_empty;
  wire w_full;
  wire [63:0]wdata;
  wire wready;
  wire [7:0]wstrb;
  wire wvalid;
  wire NLW_W_FIFO_INST_out_data_ready_UNCONNECTED;

  assign out_wdata_ready = \<const0> ;
  (* ADDR_WIDTH = "32" *) 
  (* AW_DEPTH = "32" *) 
  (* AW_FIFO_WIDTH = "50" *) 
  (* DATA_WIDTH = "64" *) 
  (* ID_WIDTH = "4" *) 
  (* LEN_WIDTH = "8" *) 
  (* RESPONSE_WIDTH = "3" *) 
  (* SIZE_WIDTH = "4" *) 
  AW_FIFO AW_FIFO_INST
       (.Aclk(Aclk),
        .addr_read(addr_read),
        .addr_read_ready(addr_read_ready),
        .areset(areset),
        .awaddr(awaddr),
        .awburst(awburst),
        .awempty(awempty),
        .awfull(awfull),
        .awid(awid),
        .awlen(awlen),
        .awready(awready),
        .awsize({1'b0,1'b0,1'b0,1'b0}),
        .awvalid(awvalid),
        .out_addr(out_addr),
        .rd_clk(rd_clk));
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH = "32" *) 
  (* DATA_WIDTH = "64" *) 
  (* ID_WIDTH = "4" *) 
  (* LEN_WIDTH = "8" *) 
  (* RESPONSE_WIDTH = "3" *) 
  (* SIZE_WIDTH = "4" *) 
  (* WDATA_FIFO_WIDTH = "72" *) 
  (* W_DEPTH = "32" *) 
  W_FIFO W_FIFO_INST
       (.aclk(Aclk),
        .areset(areset),
        .out_data_ready(NLW_W_FIFO_INST_out_data_ready_UNCONNECTED),
        .out_wdata(out_wdata),
        .rd_clk(rd_clk),
        .read_wdata(read_wdata),
        .w_empty(w_empty),
        .w_full(w_full),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wdata[31:0]}),
        .wlast(1'b0),
        .wready(wready),
        .wstrb(wstrb),
        .wvalid(wvalid));
endmodule

(* ADDR_WIDTH = "32" *) (* DATA_WIDTH = "64" *) (* ID_WIDTH = "4" *) 
(* LEN_WIDTH = "8" *) (* RESPONSE_WIDTH = "3" *) (* SIZE_WIDTH = "4" *) 
(* WDATA_FIFO_WIDTH = "72" *) (* W_DEPTH = "32" *) 
module W_FIFO
   (aclk,
    areset,
    wvalid,
    wdata,
    wstrb,
    wlast,
    wready,
    rd_clk,
    read_wdata,
    out_data_ready,
    w_full,
    w_empty,
    out_wdata);
  input aclk;
  input areset;
  input wvalid;
  input [63:0]wdata;
  input [7:0]wstrb;
  input wlast;
  output wready;
  input rd_clk;
  input read_wdata;
  output out_data_ready;
  output w_full;
  output w_empty;
  output [71:0]out_wdata;

  wire \<const0> ;
  wire aclk;
  wire areset;
  wire [71:0]out_wdata;
  wire rd_clk;
  wire read_wdata;
  wire w_empty;
  wire w_full;
  wire [63:0]wdata;
  wire wready;
  wire [7:0]wstrb;
  wire wvalid;
  wire NLW_W_FIFO_INST_rd_ready_UNCONNECTED;

  assign out_data_ready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* BYTES = "9" *) 
  (* BYTE_POINTER_WIDTH = "8" *) 
  (* COUNTER_WIDTH = "5" *) 
  (* DATA_WIDTH = "72" *) 
  (* DEPTH = "32" *) 
  (* IDEL = "2'b00" *) 
  (* READ = "2'b10" *) 
  (* WRITE = "2'b01" *) 
  FIFO__parameterized0 W_FIFO_INST
       (.empty(w_empty),
        .full(w_full),
        .rd_clk(rd_clk),
        .rd_data(out_wdata),
        .rd_en(read_wdata),
        .rd_ready(NLW_W_FIFO_INST_rd_ready_UNCONNECTED),
        .rst(areset),
        .wr_clk(aclk),
        .wr_data({wstrb,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wdata[31:0]}),
        .wr_en(wvalid),
        .wr_ready(wready));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
