// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu May 15 11:55:56 2025
// Host        : GNANESHWAR running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/demon/INTERNSHIP/src_sim_vivado/AXI_UART_V2/AXI_UART_V2.sim/sim_1/synth/func/xsim/AXI_MASTER_tb_func_synth.v
// Design      : AXI_MASTER_WRAPPER
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AXI_MASTER
   (awburst_OBUF,
    awvalid_OBUF,
    awid_OBUF,
    awlen_OBUF,
    awaddr_OBUF,
    arburst_OBUF,
    arvalid_OBUF,
    arid_OBUF,
    arlen_OBUF,
    araddr_OBUF,
    wdata_OBUF,
    wvalid_OBUF,
    wlast_OBUF,
    wstrb_OBUF,
    bready_OBUF,
    rready_OBUF,
    burst_type_IBUF,
    in_id_IBUF,
    D,
    in_addr_IBUF,
    aclk_IBUF_BUFG,
    areset_IBUF,
    awready_IBUF,
    wready_IBUF,
    in_strb_IBUF,
    bvalid_IBUF,
    trigger_IBUF,
    r_trigger_IBUF,
    arready_IBUF,
    rlast_IBUF,
    rvalid_IBUF);
  output [1:0]awburst_OBUF;
  output awvalid_OBUF;
  output [3:0]awid_OBUF;
  output [7:0]awlen_OBUF;
  output [31:0]awaddr_OBUF;
  output [1:0]arburst_OBUF;
  output arvalid_OBUF;
  output [3:0]arid_OBUF;
  output [7:0]arlen_OBUF;
  output [31:0]araddr_OBUF;
  output [31:0]wdata_OBUF;
  output wvalid_OBUF;
  output wlast_OBUF;
  output [3:0]wstrb_OBUF;
  output bready_OBUF;
  output rready_OBUF;
  input [1:0]burst_type_IBUF;
  input [3:0]in_id_IBUF;
  input [7:0]D;
  input [31:0]in_addr_IBUF;
  input aclk_IBUF_BUFG;
  input areset_IBUF;
  input awready_IBUF;
  input wready_IBUF;
  input [3:0]in_strb_IBUF;
  input bvalid_IBUF;
  input trigger_IBUF;
  input r_trigger_IBUF;
  input arready_IBUF;
  input rlast_IBUF;
  input rvalid_IBUF;

  wire [7:0]D;
  wire FSM_sequential_ar_state_i_1_n_0;
  wire FSM_sequential_aw_state_i_1_n_0;
  wire FSM_sequential_b_state_i_1_n_0;
  wire FSM_sequential_b_state_reg_n_0;
  wire FSM_sequential_r_state_i_1_n_0;
  wire FSM_sequential_w_state_i_1_n_0;
  wire aclk_IBUF_BUFG;
  wire \ar_state[0]_i_1_n_0 ;
  wire [31:0]araddr_OBUF;
  wire [1:0]arburst_OBUF;
  wire areset_IBUF;
  wire [3:0]arid_OBUF;
  wire [7:0]arlen_OBUF;
  wire arready_IBUF;
  wire arvalid_OBUF;
  wire \aw_state[0]_i_1_n_0 ;
  wire [31:0]awaddr_OBUF;
  wire [1:0]awburst_OBUF;
  wire [3:0]awid_OBUF;
  wire [7:0]awlen_OBUF;
  wire awready_IBUF;
  wire awvalid_OBUF;
  wire beat_counter;
  wire \beat_counter[0]_i_1_n_0 ;
  wire \beat_counter[1]_i_1_n_0 ;
  wire \beat_counter[2]_i_1_n_0 ;
  wire \beat_counter[3]_i_1_n_0 ;
  wire \beat_counter[4]_i_1_n_0 ;
  wire \beat_counter[5]_i_1_n_0 ;
  wire \beat_counter[5]_i_2_n_0 ;
  wire \beat_counter[6]_i_1_n_0 ;
  wire \beat_counter[7]_i_2_n_0 ;
  wire \beat_counter[7]_i_3_n_0 ;
  wire [7:0]beat_counter_reg;
  wire bready_OBUF;
  wire [1:0]burst_type_IBUF;
  wire bvalid_IBUF;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [31:0]in_addr_IBUF;
  wire [3:0]in_id_IBUF;
  wire [3:0]in_strb_IBUF;
  wire [0:0]p_0_in;
  wire [0:0]p_0_in__0;
  wire [7:0]r_awlen;
  wire \r_awlen[7]_i_1_n_0 ;
  wire r_trigger_IBUF;
  wire rlast_IBUF;
  wire rready_OBUF;
  wire rvalid_IBUF;
  wire trigger_IBUF;
  wire \w_state0_inferred__0/i__carry_n_0 ;
  wire \w_state0_inferred__0/i__carry_n_1 ;
  wire \w_state0_inferred__0/i__carry_n_2 ;
  wire \w_state0_inferred__0/i__carry_n_3 ;
  wire [31:0]wdata_OBUF;
  wire wlast_OBUF;
  wire wlast_OBUF_inst_i_2_n_0;
  wire wlast_OBUF_inst_i_3_n_0;
  wire wlast_OBUF_inst_i_4_n_0;
  wire wready_IBUF;
  wire [3:0]wstrb_OBUF;
  wire wvalid_OBUF;
  wire [3:0]\NLW_w_state0_inferred__0/i__carry_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    FSM_sequential_ar_state_i_1
       (.I0(r_trigger_IBUF),
        .I1(arready_IBUF),
        .I2(arvalid_OBUF),
        .O(FSM_sequential_ar_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDEL:0,START:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_ar_state_reg
       (.C(aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(FSM_sequential_ar_state_i_1_n_0),
        .Q(arvalid_OBUF),
        .R(areset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    FSM_sequential_aw_state_i_1
       (.I0(trigger_IBUF),
        .I1(awready_IBUF),
        .I2(awvalid_OBUF),
        .O(FSM_sequential_aw_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDEL:0,START:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_aw_state_reg
       (.C(aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(FSM_sequential_aw_state_i_1_n_0),
        .Q(awvalid_OBUF),
        .R(areset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    FSM_sequential_b_state_i_1
       (.I0(bvalid_IBUF),
        .I1(FSM_sequential_b_state_reg_n_0),
        .O(FSM_sequential_b_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDEL:0,START:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_b_state_reg
       (.C(aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(FSM_sequential_b_state_i_1_n_0),
        .Q(FSM_sequential_b_state_reg_n_0),
        .R(areset_IBUF));
  LUT4 #(
    .INIT(16'h3FAA)) 
    FSM_sequential_r_state_i_1
       (.I0(arvalid_OBUF),
        .I1(rlast_IBUF),
        .I2(rvalid_IBUF),
        .I3(rready_OBUF),
        .O(FSM_sequential_r_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDEL:0,START:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_r_state_reg
       (.C(aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(FSM_sequential_r_state_i_1_n_0),
        .Q(rready_OBUF),
        .R(areset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0F88)) 
    FSM_sequential_w_state_i_1
       (.I0(awready_IBUF),
        .I1(awvalid_OBUF),
        .I2(\w_state0_inferred__0/i__carry_n_0 ),
        .I3(wvalid_OBUF),
        .O(FSM_sequential_w_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDEL:0,START:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_w_state_reg
       (.C(aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(FSM_sequential_w_state_i_1_n_0),
        .Q(wvalid_OBUF),
        .R(areset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1DE2)) 
    \ar_state[0]_i_1 
       (.I0(r_trigger_IBUF),
        .I1(arvalid_OBUF),
        .I2(arready_IBUF),
        .I3(p_0_in__0),
        .O(\ar_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ar_state_reg[0] 
       (.C(aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ar_state[0]_i_1_n_0 ),
        .Q(p_0_in__0),
        .R(areset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[0]_inst_i_1 
       (.I0(in_addr_IBUF[0]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[10]_inst_i_1 
       (.I0(in_addr_IBUF[10]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[11]_inst_i_1 
       (.I0(in_addr_IBUF[11]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[12]_inst_i_1 
       (.I0(in_addr_IBUF[12]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[13]_inst_i_1 
       (.I0(in_addr_IBUF[13]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[14]_inst_i_1 
       (.I0(in_addr_IBUF[14]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[15]_inst_i_1 
       (.I0(in_addr_IBUF[15]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[16]_inst_i_1 
       (.I0(in_addr_IBUF[16]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[16]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[17]_inst_i_1 
       (.I0(in_addr_IBUF[17]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[17]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[18]_inst_i_1 
       (.I0(in_addr_IBUF[18]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[18]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[19]_inst_i_1 
       (.I0(in_addr_IBUF[19]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[19]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[1]_inst_i_1 
       (.I0(in_addr_IBUF[1]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[20]_inst_i_1 
       (.I0(in_addr_IBUF[20]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[20]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[21]_inst_i_1 
       (.I0(in_addr_IBUF[21]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[21]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[22]_inst_i_1 
       (.I0(in_addr_IBUF[22]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[22]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[23]_inst_i_1 
       (.I0(in_addr_IBUF[23]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[23]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[24]_inst_i_1 
       (.I0(in_addr_IBUF[24]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[24]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[25]_inst_i_1 
       (.I0(in_addr_IBUF[25]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[25]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[26]_inst_i_1 
       (.I0(in_addr_IBUF[26]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[26]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[27]_inst_i_1 
       (.I0(in_addr_IBUF[27]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[27]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[28]_inst_i_1 
       (.I0(in_addr_IBUF[28]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[28]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[29]_inst_i_1 
       (.I0(in_addr_IBUF[29]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[29]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[2]_inst_i_1 
       (.I0(in_addr_IBUF[2]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[30]_inst_i_1 
       (.I0(in_addr_IBUF[30]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[30]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[31]_inst_i_1 
       (.I0(in_addr_IBUF[31]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[31]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[3]_inst_i_1 
       (.I0(in_addr_IBUF[3]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[4]_inst_i_1 
       (.I0(in_addr_IBUF[4]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[5]_inst_i_1 
       (.I0(in_addr_IBUF[5]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[6]_inst_i_1 
       (.I0(in_addr_IBUF[6]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[7]_inst_i_1 
       (.I0(in_addr_IBUF[7]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[8]_inst_i_1 
       (.I0(in_addr_IBUF[8]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \araddr_OBUF[9]_inst_i_1 
       (.I0(in_addr_IBUF[9]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(araddr_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \arburst_OBUF[0]_inst_i_1 
       (.I0(burst_type_IBUF[0]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(arburst_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \arburst_OBUF[1]_inst_i_1 
       (.I0(burst_type_IBUF[1]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(arburst_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \arid_OBUF[0]_inst_i_1 
       (.I0(in_id_IBUF[0]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(arid_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \arid_OBUF[1]_inst_i_1 
       (.I0(in_id_IBUF[1]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(arid_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \arid_OBUF[2]_inst_i_1 
       (.I0(in_id_IBUF[2]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(arid_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \arid_OBUF[3]_inst_i_1 
       (.I0(in_id_IBUF[3]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(arid_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \arlen_OBUF[4]_inst_i_1 
       (.I0(D[4]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(arlen_OBUF[4]));
  LUT3 #(
    .INIT(8'h80)) 
    \arlen_OBUF[5]_inst_i_1 
       (.I0(D[5]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(arlen_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \arlen_OBUF[6]_inst_i_1 
       (.I0(D[6]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(arlen_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \arlen_OBUF[7]_inst_i_1 
       (.I0(D[7]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(arlen_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \arsize_OBUF[0]_inst_i_1 
       (.I0(D[0]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(arlen_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \arsize_OBUF[1]_inst_i_1 
       (.I0(D[1]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(arlen_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \arsize_OBUF[2]_inst_i_1 
       (.I0(D[2]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(arlen_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \arsize_OBUF[3]_inst_i_1 
       (.I0(D[3]),
        .I1(p_0_in__0),
        .I2(arvalid_OBUF),
        .O(arlen_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1DE2)) 
    \aw_state[0]_i_1 
       (.I0(trigger_IBUF),
        .I1(awvalid_OBUF),
        .I2(awready_IBUF),
        .I3(p_0_in),
        .O(\aw_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aw_state_reg[0] 
       (.C(aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\aw_state[0]_i_1_n_0 ),
        .Q(p_0_in),
        .R(areset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[0]_inst_i_1 
       (.I0(in_addr_IBUF[0]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[10]_inst_i_1 
       (.I0(in_addr_IBUF[10]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[11]_inst_i_1 
       (.I0(in_addr_IBUF[11]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[12]_inst_i_1 
       (.I0(in_addr_IBUF[12]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[13]_inst_i_1 
       (.I0(in_addr_IBUF[13]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[14]_inst_i_1 
       (.I0(in_addr_IBUF[14]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[15]_inst_i_1 
       (.I0(in_addr_IBUF[15]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[16]_inst_i_1 
       (.I0(in_addr_IBUF[16]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[17]_inst_i_1 
       (.I0(in_addr_IBUF[17]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[18]_inst_i_1 
       (.I0(in_addr_IBUF[18]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[19]_inst_i_1 
       (.I0(in_addr_IBUF[19]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[19]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[1]_inst_i_1 
       (.I0(in_addr_IBUF[1]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[20]_inst_i_1 
       (.I0(in_addr_IBUF[20]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[21]_inst_i_1 
       (.I0(in_addr_IBUF[21]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[22]_inst_i_1 
       (.I0(in_addr_IBUF[22]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[23]_inst_i_1 
       (.I0(in_addr_IBUF[23]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[24]_inst_i_1 
       (.I0(in_addr_IBUF[24]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[25]_inst_i_1 
       (.I0(in_addr_IBUF[25]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[25]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[26]_inst_i_1 
       (.I0(in_addr_IBUF[26]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[26]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[27]_inst_i_1 
       (.I0(in_addr_IBUF[27]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[27]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[28]_inst_i_1 
       (.I0(in_addr_IBUF[28]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[28]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[29]_inst_i_1 
       (.I0(in_addr_IBUF[29]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[29]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[2]_inst_i_1 
       (.I0(in_addr_IBUF[2]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[30]_inst_i_1 
       (.I0(in_addr_IBUF[30]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[30]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[31]_inst_i_1 
       (.I0(in_addr_IBUF[31]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[31]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[3]_inst_i_1 
       (.I0(in_addr_IBUF[3]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[4]_inst_i_1 
       (.I0(in_addr_IBUF[4]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[5]_inst_i_1 
       (.I0(in_addr_IBUF[5]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[6]_inst_i_1 
       (.I0(in_addr_IBUF[6]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[7]_inst_i_1 
       (.I0(in_addr_IBUF[7]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[8]_inst_i_1 
       (.I0(in_addr_IBUF[8]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awaddr_OBUF[9]_inst_i_1 
       (.I0(in_addr_IBUF[9]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awaddr_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awburst_OBUF[0]_inst_i_1 
       (.I0(burst_type_IBUF[0]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awburst_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awburst_OBUF[1]_inst_i_1 
       (.I0(burst_type_IBUF[1]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awburst_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awid_OBUF[0]_inst_i_1 
       (.I0(in_id_IBUF[0]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awid_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awid_OBUF[1]_inst_i_1 
       (.I0(in_id_IBUF[1]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awid_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awid_OBUF[2]_inst_i_1 
       (.I0(in_id_IBUF[2]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awid_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awid_OBUF[3]_inst_i_1 
       (.I0(in_id_IBUF[3]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awid_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awlen_OBUF[4]_inst_i_1 
       (.I0(D[4]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awlen_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awlen_OBUF[5]_inst_i_1 
       (.I0(D[5]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awlen_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awlen_OBUF[6]_inst_i_1 
       (.I0(D[6]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awlen_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awlen_OBUF[7]_inst_i_1 
       (.I0(D[7]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awlen_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awsize_OBUF[0]_inst_i_1 
       (.I0(D[0]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awlen_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awsize_OBUF[1]_inst_i_1 
       (.I0(D[1]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awlen_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awsize_OBUF[2]_inst_i_1 
       (.I0(D[2]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awlen_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \awsize_OBUF[3]_inst_i_1 
       (.I0(D[3]),
        .I1(p_0_in),
        .I2(awvalid_OBUF),
        .O(awlen_OBUF[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \beat_counter[0]_i_1 
       (.I0(beat_counter_reg[0]),
        .I1(\w_state0_inferred__0/i__carry_n_0 ),
        .O(\beat_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \beat_counter[1]_i_1 
       (.I0(beat_counter_reg[1]),
        .I1(beat_counter_reg[0]),
        .I2(\w_state0_inferred__0/i__carry_n_0 ),
        .O(\beat_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \beat_counter[2]_i_1 
       (.I0(beat_counter_reg[2]),
        .I1(beat_counter_reg[1]),
        .I2(beat_counter_reg[0]),
        .I3(\w_state0_inferred__0/i__carry_n_0 ),
        .O(\beat_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \beat_counter[3]_i_1 
       (.I0(beat_counter_reg[3]),
        .I1(beat_counter_reg[2]),
        .I2(beat_counter_reg[0]),
        .I3(beat_counter_reg[1]),
        .I4(\w_state0_inferred__0/i__carry_n_0 ),
        .O(\beat_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \beat_counter[4]_i_1 
       (.I0(beat_counter_reg[4]),
        .I1(beat_counter_reg[3]),
        .I2(beat_counter_reg[1]),
        .I3(beat_counter_reg[0]),
        .I4(beat_counter_reg[2]),
        .I5(\w_state0_inferred__0/i__carry_n_0 ),
        .O(\beat_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \beat_counter[5]_i_1 
       (.I0(beat_counter_reg[5]),
        .I1(\beat_counter[5]_i_2_n_0 ),
        .I2(\w_state0_inferred__0/i__carry_n_0 ),
        .O(\beat_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \beat_counter[5]_i_2 
       (.I0(beat_counter_reg[4]),
        .I1(beat_counter_reg[2]),
        .I2(beat_counter_reg[0]),
        .I3(beat_counter_reg[1]),
        .I4(beat_counter_reg[3]),
        .O(\beat_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \beat_counter[6]_i_1 
       (.I0(beat_counter_reg[6]),
        .I1(\beat_counter[7]_i_3_n_0 ),
        .I2(\w_state0_inferred__0/i__carry_n_0 ),
        .O(\beat_counter[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \beat_counter[7]_i_1 
       (.I0(wvalid_OBUF),
        .I1(wready_IBUF),
        .I2(\w_state0_inferred__0/i__carry_n_0 ),
        .O(beat_counter));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \beat_counter[7]_i_2 
       (.I0(beat_counter_reg[7]),
        .I1(beat_counter_reg[6]),
        .I2(\beat_counter[7]_i_3_n_0 ),
        .I3(\w_state0_inferred__0/i__carry_n_0 ),
        .O(\beat_counter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \beat_counter[7]_i_3 
       (.I0(beat_counter_reg[5]),
        .I1(beat_counter_reg[3]),
        .I2(beat_counter_reg[1]),
        .I3(beat_counter_reg[0]),
        .I4(beat_counter_reg[2]),
        .I5(beat_counter_reg[4]),
        .O(\beat_counter[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[0] 
       (.C(aclk_IBUF_BUFG),
        .CE(beat_counter),
        .D(\beat_counter[0]_i_1_n_0 ),
        .Q(beat_counter_reg[0]),
        .R(areset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[1] 
       (.C(aclk_IBUF_BUFG),
        .CE(beat_counter),
        .D(\beat_counter[1]_i_1_n_0 ),
        .Q(beat_counter_reg[1]),
        .R(areset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[2] 
       (.C(aclk_IBUF_BUFG),
        .CE(beat_counter),
        .D(\beat_counter[2]_i_1_n_0 ),
        .Q(beat_counter_reg[2]),
        .R(areset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[3] 
       (.C(aclk_IBUF_BUFG),
        .CE(beat_counter),
        .D(\beat_counter[3]_i_1_n_0 ),
        .Q(beat_counter_reg[3]),
        .R(areset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[4] 
       (.C(aclk_IBUF_BUFG),
        .CE(beat_counter),
        .D(\beat_counter[4]_i_1_n_0 ),
        .Q(beat_counter_reg[4]),
        .R(areset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[5] 
       (.C(aclk_IBUF_BUFG),
        .CE(beat_counter),
        .D(\beat_counter[5]_i_1_n_0 ),
        .Q(beat_counter_reg[5]),
        .R(areset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[6] 
       (.C(aclk_IBUF_BUFG),
        .CE(beat_counter),
        .D(\beat_counter[6]_i_1_n_0 ),
        .Q(beat_counter_reg[6]),
        .R(areset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[7] 
       (.C(aclk_IBUF_BUFG),
        .CE(beat_counter),
        .D(\beat_counter[7]_i_2_n_0 ),
        .Q(beat_counter_reg[7]),
        .R(areset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bready_OBUF_inst_i_1
       (.I0(FSM_sequential_b_state_reg_n_0),
        .I1(bvalid_IBUF),
        .O(bready_OBUF));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(beat_counter_reg[6]),
        .I1(r_awlen[6]),
        .I2(r_awlen[7]),
        .I3(beat_counter_reg[7]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(beat_counter_reg[4]),
        .I1(r_awlen[4]),
        .I2(r_awlen[5]),
        .I3(beat_counter_reg[5]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(beat_counter_reg[2]),
        .I1(r_awlen[2]),
        .I2(r_awlen[3]),
        .I3(beat_counter_reg[3]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(beat_counter_reg[0]),
        .I1(r_awlen[0]),
        .I2(r_awlen[1]),
        .I3(beat_counter_reg[1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(r_awlen[7]),
        .I1(beat_counter_reg[7]),
        .I2(r_awlen[6]),
        .I3(beat_counter_reg[6]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(beat_counter_reg[4]),
        .I1(r_awlen[4]),
        .I2(beat_counter_reg[5]),
        .I3(r_awlen[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(beat_counter_reg[2]),
        .I1(r_awlen[2]),
        .I2(beat_counter_reg[3]),
        .I3(r_awlen[3]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(beat_counter_reg[0]),
        .I1(r_awlen[0]),
        .I2(beat_counter_reg[1]),
        .I3(r_awlen[1]),
        .O(i__carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \r_awlen[7]_i_1 
       (.I0(awvalid_OBUF),
        .I1(awready_IBUF),
        .I2(areset_IBUF),
        .O(\r_awlen[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[0] 
       (.C(aclk_IBUF_BUFG),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(D[0]),
        .Q(r_awlen[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[1] 
       (.C(aclk_IBUF_BUFG),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(D[1]),
        .Q(r_awlen[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[2] 
       (.C(aclk_IBUF_BUFG),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(D[2]),
        .Q(r_awlen[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[3] 
       (.C(aclk_IBUF_BUFG),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(D[3]),
        .Q(r_awlen[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[4] 
       (.C(aclk_IBUF_BUFG),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(D[4]),
        .Q(r_awlen[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[5] 
       (.C(aclk_IBUF_BUFG),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(D[5]),
        .Q(r_awlen[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[6] 
       (.C(aclk_IBUF_BUFG),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(D[6]),
        .Q(r_awlen[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_awlen_reg[7] 
       (.C(aclk_IBUF_BUFG),
        .CE(\r_awlen[7]_i_1_n_0 ),
        .D(D[7]),
        .Q(r_awlen[7]),
        .R(1'b0));
  CARRY4 \w_state0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\w_state0_inferred__0/i__carry_n_0 ,\w_state0_inferred__0/i__carry_n_1 ,\w_state0_inferred__0/i__carry_n_2 ,\w_state0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_w_state0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[0]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[0]),
        .O(wdata_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[10]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[10]),
        .O(wdata_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[11]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[11]),
        .O(wdata_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[12]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[12]),
        .O(wdata_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[13]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[13]),
        .O(wdata_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[14]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[14]),
        .O(wdata_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[15]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[15]),
        .O(wdata_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[16]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[16]),
        .O(wdata_OBUF[16]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[17]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[17]),
        .O(wdata_OBUF[17]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[18]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[18]),
        .O(wdata_OBUF[18]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[19]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[19]),
        .O(wdata_OBUF[19]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[1]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[1]),
        .O(wdata_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[20]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[20]),
        .O(wdata_OBUF[20]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[21]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[21]),
        .O(wdata_OBUF[21]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[22]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[22]),
        .O(wdata_OBUF[22]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[23]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[23]),
        .O(wdata_OBUF[23]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[24]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[24]),
        .O(wdata_OBUF[24]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[25]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[25]),
        .O(wdata_OBUF[25]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[26]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[26]),
        .O(wdata_OBUF[26]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[27]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[27]),
        .O(wdata_OBUF[27]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[28]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[28]),
        .O(wdata_OBUF[28]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[29]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[29]),
        .O(wdata_OBUF[29]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[2]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[2]),
        .O(wdata_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[30]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[30]),
        .O(wdata_OBUF[30]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[31]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[31]),
        .O(wdata_OBUF[31]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[3]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[3]),
        .O(wdata_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[4]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[4]),
        .O(wdata_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[5]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[5]),
        .O(wdata_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[6]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[6]),
        .O(wdata_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[7]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[7]),
        .O(wdata_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[8]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[8]),
        .O(wdata_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_OBUF[9]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_addr_IBUF[9]),
        .O(wdata_OBUF[9]));
  LUT6 #(
    .INIT(64'h0000000080000080)) 
    wlast_OBUF_inst_i_1
       (.I0(wvalid_OBUF),
        .I1(wlast_OBUF_inst_i_2_n_0),
        .I2(wlast_OBUF_inst_i_3_n_0),
        .I3(r_awlen[3]),
        .I4(beat_counter_reg[3]),
        .I5(wlast_OBUF_inst_i_4_n_0),
        .O(wlast_OBUF));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    wlast_OBUF_inst_i_2
       (.I0(beat_counter_reg[0]),
        .I1(r_awlen[0]),
        .I2(r_awlen[2]),
        .I3(beat_counter_reg[2]),
        .I4(r_awlen[1]),
        .I5(beat_counter_reg[1]),
        .O(wlast_OBUF_inst_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    wlast_OBUF_inst_i_3
       (.I0(beat_counter_reg[4]),
        .I1(r_awlen[4]),
        .I2(beat_counter_reg[5]),
        .I3(r_awlen[5]),
        .O(wlast_OBUF_inst_i_3_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    wlast_OBUF_inst_i_4
       (.I0(beat_counter_reg[6]),
        .I1(r_awlen[6]),
        .I2(beat_counter_reg[7]),
        .I3(r_awlen[7]),
        .O(wlast_OBUF_inst_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wstrb_OBUF[0]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_strb_IBUF[0]),
        .O(wstrb_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wstrb_OBUF[1]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_strb_IBUF[1]),
        .O(wstrb_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wstrb_OBUF[2]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_strb_IBUF[2]),
        .O(wstrb_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wstrb_OBUF[3]_inst_i_1 
       (.I0(wvalid_OBUF),
        .I1(in_strb_IBUF[3]),
        .O(wstrb_OBUF[3]));
endmodule

(* ADDR_WIDTH = "32" *) (* DATA_WIDTH = "64" *) (* ID_WIDTH = "4" *) 
(* LEN_WIDTH = "8" *) (* RESPONSE_WIDTH = "3" *) (* SIZE_WIDTH = "4" *) 
(* NotValidForBitStream *)
module AXI_MASTER_WRAPPER
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
    rresp);
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
  output [3:0]wstrb;
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

  wire aclk;
  wire aclk_IBUF;
  wire aclk_IBUF_BUFG;
  wire [31:0]araddr;
  wire [31:0]araddr_OBUF;
  wire [1:0]arburst;
  wire [1:0]arburst_OBUF;
  wire areset;
  wire areset_IBUF;
  wire [3:0]arid;
  wire [3:0]arid_OBUF;
  wire [7:0]arlen;
  wire [7:0]arlen_OBUF;
  wire arready;
  wire arready_IBUF;
  wire [3:0]arsize;
  wire arvalid;
  wire arvalid_OBUF;
  wire [31:0]awaddr;
  wire [31:0]awaddr_OBUF;
  wire [1:0]awburst;
  wire [1:0]awburst_OBUF;
  wire [3:0]awid;
  wire [3:0]awid_OBUF;
  wire [7:0]awlen;
  wire [7:0]awlen_OBUF;
  wire awready;
  wire awready_IBUF;
  wire [3:0]awsize;
  wire awvalid;
  wire awvalid_OBUF;
  wire bready;
  wire bready_OBUF;
  wire [1:0]burst_type;
  wire [1:0]burst_type_IBUF;
  wire bvalid;
  wire bvalid_IBUF;
  wire [31:0]in_addr;
  wire [31:0]in_addr_IBUF;
  wire [3:0]in_id;
  wire [3:0]in_id_IBUF;
  wire [7:0]in_len;
  wire [7:0]in_len_IBUF;
  wire [7:0]in_strb;
  wire [3:0]in_strb_IBUF;
  wire r_trigger;
  wire r_trigger_IBUF;
  wire rlast;
  wire rlast_IBUF;
  wire rready;
  wire rready_OBUF;
  wire rvalid;
  wire rvalid_IBUF;
  wire trigger;
  wire trigger_IBUF;
  wire [63:0]wdata;
  wire [31:0]wdata_OBUF;
  wire wlast;
  wire wlast_OBUF;
  wire wready;
  wire wready_IBUF;
  wire [3:0]wstrb;
  wire [3:0]wstrb_OBUF;
  wire wvalid;
  wire wvalid_OBUF;

  BUFG aclk_IBUF_BUFG_inst
       (.I(aclk_IBUF),
        .O(aclk_IBUF_BUFG));
  IBUF aclk_IBUF_inst
       (.I(aclk),
        .O(aclk_IBUF));
  OBUF \araddr_OBUF[0]_inst 
       (.I(araddr_OBUF[0]),
        .O(araddr[0]));
  OBUF \araddr_OBUF[10]_inst 
       (.I(araddr_OBUF[10]),
        .O(araddr[10]));
  OBUF \araddr_OBUF[11]_inst 
       (.I(araddr_OBUF[11]),
        .O(araddr[11]));
  OBUF \araddr_OBUF[12]_inst 
       (.I(araddr_OBUF[12]),
        .O(araddr[12]));
  OBUF \araddr_OBUF[13]_inst 
       (.I(araddr_OBUF[13]),
        .O(araddr[13]));
  OBUF \araddr_OBUF[14]_inst 
       (.I(araddr_OBUF[14]),
        .O(araddr[14]));
  OBUF \araddr_OBUF[15]_inst 
       (.I(araddr_OBUF[15]),
        .O(araddr[15]));
  OBUF \araddr_OBUF[16]_inst 
       (.I(araddr_OBUF[16]),
        .O(araddr[16]));
  OBUF \araddr_OBUF[17]_inst 
       (.I(araddr_OBUF[17]),
        .O(araddr[17]));
  OBUF \araddr_OBUF[18]_inst 
       (.I(araddr_OBUF[18]),
        .O(araddr[18]));
  OBUF \araddr_OBUF[19]_inst 
       (.I(araddr_OBUF[19]),
        .O(araddr[19]));
  OBUF \araddr_OBUF[1]_inst 
       (.I(araddr_OBUF[1]),
        .O(araddr[1]));
  OBUF \araddr_OBUF[20]_inst 
       (.I(araddr_OBUF[20]),
        .O(araddr[20]));
  OBUF \araddr_OBUF[21]_inst 
       (.I(araddr_OBUF[21]),
        .O(araddr[21]));
  OBUF \araddr_OBUF[22]_inst 
       (.I(araddr_OBUF[22]),
        .O(araddr[22]));
  OBUF \araddr_OBUF[23]_inst 
       (.I(araddr_OBUF[23]),
        .O(araddr[23]));
  OBUF \araddr_OBUF[24]_inst 
       (.I(araddr_OBUF[24]),
        .O(araddr[24]));
  OBUF \araddr_OBUF[25]_inst 
       (.I(araddr_OBUF[25]),
        .O(araddr[25]));
  OBUF \araddr_OBUF[26]_inst 
       (.I(araddr_OBUF[26]),
        .O(araddr[26]));
  OBUF \araddr_OBUF[27]_inst 
       (.I(araddr_OBUF[27]),
        .O(araddr[27]));
  OBUF \araddr_OBUF[28]_inst 
       (.I(araddr_OBUF[28]),
        .O(araddr[28]));
  OBUF \araddr_OBUF[29]_inst 
       (.I(araddr_OBUF[29]),
        .O(araddr[29]));
  OBUF \araddr_OBUF[2]_inst 
       (.I(araddr_OBUF[2]),
        .O(araddr[2]));
  OBUF \araddr_OBUF[30]_inst 
       (.I(araddr_OBUF[30]),
        .O(araddr[30]));
  OBUF \araddr_OBUF[31]_inst 
       (.I(araddr_OBUF[31]),
        .O(araddr[31]));
  OBUF \araddr_OBUF[3]_inst 
       (.I(araddr_OBUF[3]),
        .O(araddr[3]));
  OBUF \araddr_OBUF[4]_inst 
       (.I(araddr_OBUF[4]),
        .O(araddr[4]));
  OBUF \araddr_OBUF[5]_inst 
       (.I(araddr_OBUF[5]),
        .O(araddr[5]));
  OBUF \araddr_OBUF[6]_inst 
       (.I(araddr_OBUF[6]),
        .O(araddr[6]));
  OBUF \araddr_OBUF[7]_inst 
       (.I(araddr_OBUF[7]),
        .O(araddr[7]));
  OBUF \araddr_OBUF[8]_inst 
       (.I(araddr_OBUF[8]),
        .O(araddr[8]));
  OBUF \araddr_OBUF[9]_inst 
       (.I(araddr_OBUF[9]),
        .O(araddr[9]));
  OBUF \arburst_OBUF[0]_inst 
       (.I(arburst_OBUF[0]),
        .O(arburst[0]));
  OBUF \arburst_OBUF[1]_inst 
       (.I(arburst_OBUF[1]),
        .O(arburst[1]));
  IBUF areset_IBUF_inst
       (.I(areset),
        .O(areset_IBUF));
  OBUF \arid_OBUF[0]_inst 
       (.I(arid_OBUF[0]),
        .O(arid[0]));
  OBUF \arid_OBUF[1]_inst 
       (.I(arid_OBUF[1]),
        .O(arid[1]));
  OBUF \arid_OBUF[2]_inst 
       (.I(arid_OBUF[2]),
        .O(arid[2]));
  OBUF \arid_OBUF[3]_inst 
       (.I(arid_OBUF[3]),
        .O(arid[3]));
  OBUF \arlen_OBUF[0]_inst 
       (.I(arlen_OBUF[0]),
        .O(arlen[0]));
  OBUF \arlen_OBUF[1]_inst 
       (.I(arlen_OBUF[1]),
        .O(arlen[1]));
  OBUF \arlen_OBUF[2]_inst 
       (.I(arlen_OBUF[2]),
        .O(arlen[2]));
  OBUF \arlen_OBUF[3]_inst 
       (.I(arlen_OBUF[3]),
        .O(arlen[3]));
  OBUF \arlen_OBUF[4]_inst 
       (.I(arlen_OBUF[4]),
        .O(arlen[4]));
  OBUF \arlen_OBUF[5]_inst 
       (.I(arlen_OBUF[5]),
        .O(arlen[5]));
  OBUF \arlen_OBUF[6]_inst 
       (.I(arlen_OBUF[6]),
        .O(arlen[6]));
  OBUF \arlen_OBUF[7]_inst 
       (.I(arlen_OBUF[7]),
        .O(arlen[7]));
  IBUF arready_IBUF_inst
       (.I(arready),
        .O(arready_IBUF));
  OBUF \arsize_OBUF[0]_inst 
       (.I(arlen_OBUF[0]),
        .O(arsize[0]));
  OBUF \arsize_OBUF[1]_inst 
       (.I(arlen_OBUF[1]),
        .O(arsize[1]));
  OBUF \arsize_OBUF[2]_inst 
       (.I(arlen_OBUF[2]),
        .O(arsize[2]));
  OBUF \arsize_OBUF[3]_inst 
       (.I(arlen_OBUF[3]),
        .O(arsize[3]));
  OBUF arvalid_OBUF_inst
       (.I(arvalid_OBUF),
        .O(arvalid));
  OBUF \awaddr_OBUF[0]_inst 
       (.I(awaddr_OBUF[0]),
        .O(awaddr[0]));
  OBUF \awaddr_OBUF[10]_inst 
       (.I(awaddr_OBUF[10]),
        .O(awaddr[10]));
  OBUF \awaddr_OBUF[11]_inst 
       (.I(awaddr_OBUF[11]),
        .O(awaddr[11]));
  OBUF \awaddr_OBUF[12]_inst 
       (.I(awaddr_OBUF[12]),
        .O(awaddr[12]));
  OBUF \awaddr_OBUF[13]_inst 
       (.I(awaddr_OBUF[13]),
        .O(awaddr[13]));
  OBUF \awaddr_OBUF[14]_inst 
       (.I(awaddr_OBUF[14]),
        .O(awaddr[14]));
  OBUF \awaddr_OBUF[15]_inst 
       (.I(awaddr_OBUF[15]),
        .O(awaddr[15]));
  OBUF \awaddr_OBUF[16]_inst 
       (.I(awaddr_OBUF[16]),
        .O(awaddr[16]));
  OBUF \awaddr_OBUF[17]_inst 
       (.I(awaddr_OBUF[17]),
        .O(awaddr[17]));
  OBUF \awaddr_OBUF[18]_inst 
       (.I(awaddr_OBUF[18]),
        .O(awaddr[18]));
  OBUF \awaddr_OBUF[19]_inst 
       (.I(awaddr_OBUF[19]),
        .O(awaddr[19]));
  OBUF \awaddr_OBUF[1]_inst 
       (.I(awaddr_OBUF[1]),
        .O(awaddr[1]));
  OBUF \awaddr_OBUF[20]_inst 
       (.I(awaddr_OBUF[20]),
        .O(awaddr[20]));
  OBUF \awaddr_OBUF[21]_inst 
       (.I(awaddr_OBUF[21]),
        .O(awaddr[21]));
  OBUF \awaddr_OBUF[22]_inst 
       (.I(awaddr_OBUF[22]),
        .O(awaddr[22]));
  OBUF \awaddr_OBUF[23]_inst 
       (.I(awaddr_OBUF[23]),
        .O(awaddr[23]));
  OBUF \awaddr_OBUF[24]_inst 
       (.I(awaddr_OBUF[24]),
        .O(awaddr[24]));
  OBUF \awaddr_OBUF[25]_inst 
       (.I(awaddr_OBUF[25]),
        .O(awaddr[25]));
  OBUF \awaddr_OBUF[26]_inst 
       (.I(awaddr_OBUF[26]),
        .O(awaddr[26]));
  OBUF \awaddr_OBUF[27]_inst 
       (.I(awaddr_OBUF[27]),
        .O(awaddr[27]));
  OBUF \awaddr_OBUF[28]_inst 
       (.I(awaddr_OBUF[28]),
        .O(awaddr[28]));
  OBUF \awaddr_OBUF[29]_inst 
       (.I(awaddr_OBUF[29]),
        .O(awaddr[29]));
  OBUF \awaddr_OBUF[2]_inst 
       (.I(awaddr_OBUF[2]),
        .O(awaddr[2]));
  OBUF \awaddr_OBUF[30]_inst 
       (.I(awaddr_OBUF[30]),
        .O(awaddr[30]));
  OBUF \awaddr_OBUF[31]_inst 
       (.I(awaddr_OBUF[31]),
        .O(awaddr[31]));
  OBUF \awaddr_OBUF[3]_inst 
       (.I(awaddr_OBUF[3]),
        .O(awaddr[3]));
  OBUF \awaddr_OBUF[4]_inst 
       (.I(awaddr_OBUF[4]),
        .O(awaddr[4]));
  OBUF \awaddr_OBUF[5]_inst 
       (.I(awaddr_OBUF[5]),
        .O(awaddr[5]));
  OBUF \awaddr_OBUF[6]_inst 
       (.I(awaddr_OBUF[6]),
        .O(awaddr[6]));
  OBUF \awaddr_OBUF[7]_inst 
       (.I(awaddr_OBUF[7]),
        .O(awaddr[7]));
  OBUF \awaddr_OBUF[8]_inst 
       (.I(awaddr_OBUF[8]),
        .O(awaddr[8]));
  OBUF \awaddr_OBUF[9]_inst 
       (.I(awaddr_OBUF[9]),
        .O(awaddr[9]));
  OBUF \awburst_OBUF[0]_inst 
       (.I(awburst_OBUF[0]),
        .O(awburst[0]));
  OBUF \awburst_OBUF[1]_inst 
       (.I(awburst_OBUF[1]),
        .O(awburst[1]));
  OBUF \awid_OBUF[0]_inst 
       (.I(awid_OBUF[0]),
        .O(awid[0]));
  OBUF \awid_OBUF[1]_inst 
       (.I(awid_OBUF[1]),
        .O(awid[1]));
  OBUF \awid_OBUF[2]_inst 
       (.I(awid_OBUF[2]),
        .O(awid[2]));
  OBUF \awid_OBUF[3]_inst 
       (.I(awid_OBUF[3]),
        .O(awid[3]));
  OBUF \awlen_OBUF[0]_inst 
       (.I(awlen_OBUF[0]),
        .O(awlen[0]));
  OBUF \awlen_OBUF[1]_inst 
       (.I(awlen_OBUF[1]),
        .O(awlen[1]));
  OBUF \awlen_OBUF[2]_inst 
       (.I(awlen_OBUF[2]),
        .O(awlen[2]));
  OBUF \awlen_OBUF[3]_inst 
       (.I(awlen_OBUF[3]),
        .O(awlen[3]));
  OBUF \awlen_OBUF[4]_inst 
       (.I(awlen_OBUF[4]),
        .O(awlen[4]));
  OBUF \awlen_OBUF[5]_inst 
       (.I(awlen_OBUF[5]),
        .O(awlen[5]));
  OBUF \awlen_OBUF[6]_inst 
       (.I(awlen_OBUF[6]),
        .O(awlen[6]));
  OBUF \awlen_OBUF[7]_inst 
       (.I(awlen_OBUF[7]),
        .O(awlen[7]));
  IBUF awready_IBUF_inst
       (.I(awready),
        .O(awready_IBUF));
  OBUF \awsize_OBUF[0]_inst 
       (.I(awlen_OBUF[0]),
        .O(awsize[0]));
  OBUF \awsize_OBUF[1]_inst 
       (.I(awlen_OBUF[1]),
        .O(awsize[1]));
  OBUF \awsize_OBUF[2]_inst 
       (.I(awlen_OBUF[2]),
        .O(awsize[2]));
  OBUF \awsize_OBUF[3]_inst 
       (.I(awlen_OBUF[3]),
        .O(awsize[3]));
  OBUF awvalid_OBUF_inst
       (.I(awvalid_OBUF),
        .O(awvalid));
  OBUF bready_OBUF_inst
       (.I(bready_OBUF),
        .O(bready));
  IBUF \burst_type_IBUF[0]_inst 
       (.I(burst_type[0]),
        .O(burst_type_IBUF[0]));
  IBUF \burst_type_IBUF[1]_inst 
       (.I(burst_type[1]),
        .O(burst_type_IBUF[1]));
  IBUF bvalid_IBUF_inst
       (.I(bvalid),
        .O(bvalid_IBUF));
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
  IBUF r_trigger_IBUF_inst
       (.I(r_trigger),
        .O(r_trigger_IBUF));
  IBUF rlast_IBUF_inst
       (.I(rlast),
        .O(rlast_IBUF));
  OBUF rready_OBUF_inst
       (.I(rready_OBUF),
        .O(rready));
  IBUF rvalid_IBUF_inst
       (.I(rvalid),
        .O(rvalid_IBUF));
  IBUF trigger_IBUF_inst
       (.I(trigger),
        .O(trigger_IBUF));
  AXI_MASTER u_axi_master
       (.D(in_len_IBUF),
        .aclk_IBUF_BUFG(aclk_IBUF_BUFG),
        .araddr_OBUF(araddr_OBUF),
        .arburst_OBUF(arburst_OBUF),
        .areset_IBUF(areset_IBUF),
        .arid_OBUF(arid_OBUF),
        .arlen_OBUF(arlen_OBUF),
        .arready_IBUF(arready_IBUF),
        .arvalid_OBUF(arvalid_OBUF),
        .awaddr_OBUF(awaddr_OBUF),
        .awburst_OBUF(awburst_OBUF),
        .awid_OBUF(awid_OBUF),
        .awlen_OBUF(awlen_OBUF),
        .awready_IBUF(awready_IBUF),
        .awvalid_OBUF(awvalid_OBUF),
        .bready_OBUF(bready_OBUF),
        .burst_type_IBUF(burst_type_IBUF),
        .bvalid_IBUF(bvalid_IBUF),
        .in_addr_IBUF(in_addr_IBUF),
        .in_id_IBUF(in_id_IBUF),
        .in_strb_IBUF(in_strb_IBUF),
        .r_trigger_IBUF(r_trigger_IBUF),
        .rlast_IBUF(rlast_IBUF),
        .rready_OBUF(rready_OBUF),
        .rvalid_IBUF(rvalid_IBUF),
        .trigger_IBUF(trigger_IBUF),
        .wdata_OBUF(wdata_OBUF),
        .wlast_OBUF(wlast_OBUF),
        .wready_IBUF(wready_IBUF),
        .wstrb_OBUF(wstrb_OBUF),
        .wvalid_OBUF(wvalid_OBUF));
  OBUF \wdata_OBUF[0]_inst 
       (.I(wdata_OBUF[0]),
        .O(wdata[0]));
  OBUF \wdata_OBUF[10]_inst 
       (.I(wdata_OBUF[10]),
        .O(wdata[10]));
  OBUF \wdata_OBUF[11]_inst 
       (.I(wdata_OBUF[11]),
        .O(wdata[11]));
  OBUF \wdata_OBUF[12]_inst 
       (.I(wdata_OBUF[12]),
        .O(wdata[12]));
  OBUF \wdata_OBUF[13]_inst 
       (.I(wdata_OBUF[13]),
        .O(wdata[13]));
  OBUF \wdata_OBUF[14]_inst 
       (.I(wdata_OBUF[14]),
        .O(wdata[14]));
  OBUF \wdata_OBUF[15]_inst 
       (.I(wdata_OBUF[15]),
        .O(wdata[15]));
  OBUF \wdata_OBUF[16]_inst 
       (.I(wdata_OBUF[16]),
        .O(wdata[16]));
  OBUF \wdata_OBUF[17]_inst 
       (.I(wdata_OBUF[17]),
        .O(wdata[17]));
  OBUF \wdata_OBUF[18]_inst 
       (.I(wdata_OBUF[18]),
        .O(wdata[18]));
  OBUF \wdata_OBUF[19]_inst 
       (.I(wdata_OBUF[19]),
        .O(wdata[19]));
  OBUF \wdata_OBUF[1]_inst 
       (.I(wdata_OBUF[1]),
        .O(wdata[1]));
  OBUF \wdata_OBUF[20]_inst 
       (.I(wdata_OBUF[20]),
        .O(wdata[20]));
  OBUF \wdata_OBUF[21]_inst 
       (.I(wdata_OBUF[21]),
        .O(wdata[21]));
  OBUF \wdata_OBUF[22]_inst 
       (.I(wdata_OBUF[22]),
        .O(wdata[22]));
  OBUF \wdata_OBUF[23]_inst 
       (.I(wdata_OBUF[23]),
        .O(wdata[23]));
  OBUF \wdata_OBUF[24]_inst 
       (.I(wdata_OBUF[24]),
        .O(wdata[24]));
  OBUF \wdata_OBUF[25]_inst 
       (.I(wdata_OBUF[25]),
        .O(wdata[25]));
  OBUF \wdata_OBUF[26]_inst 
       (.I(wdata_OBUF[26]),
        .O(wdata[26]));
  OBUF \wdata_OBUF[27]_inst 
       (.I(wdata_OBUF[27]),
        .O(wdata[27]));
  OBUF \wdata_OBUF[28]_inst 
       (.I(wdata_OBUF[28]),
        .O(wdata[28]));
  OBUF \wdata_OBUF[29]_inst 
       (.I(wdata_OBUF[29]),
        .O(wdata[29]));
  OBUF \wdata_OBUF[2]_inst 
       (.I(wdata_OBUF[2]),
        .O(wdata[2]));
  OBUF \wdata_OBUF[30]_inst 
       (.I(wdata_OBUF[30]),
        .O(wdata[30]));
  OBUF \wdata_OBUF[31]_inst 
       (.I(wdata_OBUF[31]),
        .O(wdata[31]));
  OBUF \wdata_OBUF[32]_inst 
       (.I(1'b0),
        .O(wdata[32]));
  OBUF \wdata_OBUF[33]_inst 
       (.I(1'b0),
        .O(wdata[33]));
  OBUF \wdata_OBUF[34]_inst 
       (.I(1'b0),
        .O(wdata[34]));
  OBUF \wdata_OBUF[35]_inst 
       (.I(1'b0),
        .O(wdata[35]));
  OBUF \wdata_OBUF[36]_inst 
       (.I(1'b0),
        .O(wdata[36]));
  OBUF \wdata_OBUF[37]_inst 
       (.I(1'b0),
        .O(wdata[37]));
  OBUF \wdata_OBUF[38]_inst 
       (.I(1'b0),
        .O(wdata[38]));
  OBUF \wdata_OBUF[39]_inst 
       (.I(1'b0),
        .O(wdata[39]));
  OBUF \wdata_OBUF[3]_inst 
       (.I(wdata_OBUF[3]),
        .O(wdata[3]));
  OBUF \wdata_OBUF[40]_inst 
       (.I(1'b0),
        .O(wdata[40]));
  OBUF \wdata_OBUF[41]_inst 
       (.I(1'b0),
        .O(wdata[41]));
  OBUF \wdata_OBUF[42]_inst 
       (.I(1'b0),
        .O(wdata[42]));
  OBUF \wdata_OBUF[43]_inst 
       (.I(1'b0),
        .O(wdata[43]));
  OBUF \wdata_OBUF[44]_inst 
       (.I(1'b0),
        .O(wdata[44]));
  OBUF \wdata_OBUF[45]_inst 
       (.I(1'b0),
        .O(wdata[45]));
  OBUF \wdata_OBUF[46]_inst 
       (.I(1'b0),
        .O(wdata[46]));
  OBUF \wdata_OBUF[47]_inst 
       (.I(1'b0),
        .O(wdata[47]));
  OBUF \wdata_OBUF[48]_inst 
       (.I(1'b0),
        .O(wdata[48]));
  OBUF \wdata_OBUF[49]_inst 
       (.I(1'b0),
        .O(wdata[49]));
  OBUF \wdata_OBUF[4]_inst 
       (.I(wdata_OBUF[4]),
        .O(wdata[4]));
  OBUF \wdata_OBUF[50]_inst 
       (.I(1'b0),
        .O(wdata[50]));
  OBUF \wdata_OBUF[51]_inst 
       (.I(1'b0),
        .O(wdata[51]));
  OBUF \wdata_OBUF[52]_inst 
       (.I(1'b0),
        .O(wdata[52]));
  OBUF \wdata_OBUF[53]_inst 
       (.I(1'b0),
        .O(wdata[53]));
  OBUF \wdata_OBUF[54]_inst 
       (.I(1'b0),
        .O(wdata[54]));
  OBUF \wdata_OBUF[55]_inst 
       (.I(1'b0),
        .O(wdata[55]));
  OBUF \wdata_OBUF[56]_inst 
       (.I(1'b0),
        .O(wdata[56]));
  OBUF \wdata_OBUF[57]_inst 
       (.I(1'b0),
        .O(wdata[57]));
  OBUF \wdata_OBUF[58]_inst 
       (.I(1'b0),
        .O(wdata[58]));
  OBUF \wdata_OBUF[59]_inst 
       (.I(1'b0),
        .O(wdata[59]));
  OBUF \wdata_OBUF[5]_inst 
       (.I(wdata_OBUF[5]),
        .O(wdata[5]));
  OBUF \wdata_OBUF[60]_inst 
       (.I(1'b0),
        .O(wdata[60]));
  OBUF \wdata_OBUF[61]_inst 
       (.I(1'b0),
        .O(wdata[61]));
  OBUF \wdata_OBUF[62]_inst 
       (.I(1'b0),
        .O(wdata[62]));
  OBUF \wdata_OBUF[63]_inst 
       (.I(1'b0),
        .O(wdata[63]));
  OBUF \wdata_OBUF[6]_inst 
       (.I(wdata_OBUF[6]),
        .O(wdata[6]));
  OBUF \wdata_OBUF[7]_inst 
       (.I(wdata_OBUF[7]),
        .O(wdata[7]));
  OBUF \wdata_OBUF[8]_inst 
       (.I(wdata_OBUF[8]),
        .O(wdata[8]));
  OBUF \wdata_OBUF[9]_inst 
       (.I(wdata_OBUF[9]),
        .O(wdata[9]));
  OBUF wlast_OBUF_inst
       (.I(wlast_OBUF),
        .O(wlast));
  IBUF wready_IBUF_inst
       (.I(wready),
        .O(wready_IBUF));
  OBUF \wstrb_OBUF[0]_inst 
       (.I(wstrb_OBUF[0]),
        .O(wstrb[0]));
  OBUF \wstrb_OBUF[1]_inst 
       (.I(wstrb_OBUF[1]),
        .O(wstrb[1]));
  OBUF \wstrb_OBUF[2]_inst 
       (.I(wstrb_OBUF[2]),
        .O(wstrb[2]));
  OBUF \wstrb_OBUF[3]_inst 
       (.I(wstrb_OBUF[3]),
        .O(wstrb[3]));
  OBUF wvalid_OBUF_inst
       (.I(wvalid_OBUF),
        .O(wvalid));
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
