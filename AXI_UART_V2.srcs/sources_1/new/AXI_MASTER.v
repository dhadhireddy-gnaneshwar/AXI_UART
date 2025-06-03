`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 10:49:48
// Design Name: 
// Module Name: AXI_MASTER
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


module AXI_MASTER #(parameter ADDR_WIDTH=32, 
    parameter DATA_WIDTH=64,
    parameter ID_WIDTH = 4,
    parameter SIZE_WIDTH=4,
    parameter LEN_WIDTH=8,
    parameter RESPONSE_WIDTH=3)(
    input trigger,
    input r_trigger,
    input [ADDR_WIDTH-1:0] in_addr,
    input [ID_WIDTH-1:0] in_id,
    input [LEN_WIDTH-1:0] in_len,
    input [1:0] burst_type,
    input [(DATA_WIDTH/8)-1:0] in_strb,
    input [DATA_WIDTH-1:0] in_data,
    //AXI DEFAULT PORTS
    input aclk,
    input areset,
    //AW CHANNEL PORTS
    input awready,
    output [(ADDR_WIDTH-1):0] awaddr,
    output [ID_WIDTH-1:0] awid,
    output [SIZE_WIDTH-1:0] awsize,
    output [1:0] awburst,
    output [LEN_WIDTH-1:0] awlen,
    output awvalid,
    
    //W - CHANNEL
    output wvalid,
    input wready,
    output [DATA_WIDTH-1:0] wdata,
    output [(DATA_WIDTH/8)-1:0] wstrb,
    output wlast,
    
    //B - CHANNEL
    input bvalid,
    input [RESPONSE_WIDTH-1:0] bresp,
    input [ID_WIDTH-1:0] bid,
    output bready,
    
    //AR - CHANNEL
    input arready,
    output [ADDR_WIDTH-1:0] araddr,
    output [ID_WIDTH-1:0] arid,
    output [SIZE_WIDTH-1:0] arsize,
    output [1:0] arburst,
    output [LEN_WIDTH-1:0] arlen,
    output arvalid,
    
    // R - CHANNEL
    output rready,
    input rvalid,
    input [DATA_WIDTH-1:0] rdata,
    input [ID_WIDTH-1:0] rid,
    input rlast,
    input [RESPONSE_WIDTH-1:0] rresp,
    output [DATA_WIDTH-1:0] read_data_out,
    output [RESPONSE_WIDTH-1:0] read_resp,
    output [ID_WIDTH-1:0] read_id
    );
    
    
    reg [1:0] aw_state,w_state,b_state,ar_state,r_state;
    reg [1:0] aw_next_state,w_next_state,b_next_state,ar_next_state,r_next_state;
    reg [LEN_WIDTH-1:0] r_awlen,r_arlen;
    reg [LEN_WIDTH-1:0] beat_counter;
    parameter IDEL= 2'b00, START=2'b01,DATA = 2'b10;
    
    initial
        begin
            {aw_state,w_state,b_state,ar_state,r_state}=10'h0;
            {aw_next_state,w_next_state,b_next_state,ar_next_state,r_next_state}=10'h0;
        end
//     assign r_awlen = (((aw_state==START)&& awvalid) ) ? in_len : r_awlen;
//     assign r_arlen = (((ar_state==START)&& arvalid)  ) ? in_len : r_awlen;
    //-----------AW CHANNEL PORT ASSIGNMENTS BEGIN------------------------\\
    assign awvalid = (aw_state == START);
    assign awaddr  = ((aw_state==START)&& awvalid ) ? in_addr : 0;
    assign awid    = ((aw_state==START)&& awvalid ) ? in_id : 0;
    assign awsize  = ((aw_state==START)&& awvalid ) ? in_len[SIZE_WIDTH-1:0] : 0;
    assign awlen   = ((aw_state==START)&& awvalid ) ? in_len : 0;
    assign awburst = ((aw_state==START)&& awvalid ) ? burst_type : 0;
    //-----------AW CHANNEL PORT ASSIGNMENTS END ------------------------\\
    //-------------------------------------------------------------------\\
    //-----------W CHANNEL PORT ASSIGNMENTS BEGIN------------------------\\
     assign wvalid = (w_state==START);
     assign wlast  = ((w_state==START) && wvalid && beat_counter == r_awlen)?1:0;
     assign wdata  = in_data;
     assign wstrb  = ((w_state==START) && wvalid) ? in_strb : 0;
     //-----------W CHANNEL PORT ASSIGNMENTS END ------------------------ \\
     //-------------------------------------------------------------------\\
     //-----------B CHANNEL PORT ASSIGNMENTS BEGIN------------------------\\
     assign bready = ((b_state==START && bvalid))? 1 : 0;
     //-----------B CHANNEL PORT ASSIGNMENTS END -------------------------\\
     //-------------------------------------------------------------------\\
     //-----------AR CHANNEL PORT ASSIGNMENTS BEGIN------------------------\\
     assign arvalid = (ar_state == START);
     assign araddr  = ((ar_state==START)&& arvalid ) ? in_addr : 0;
     assign arid    = ((ar_state==START)&& arvalid ) ? in_id   : 0;
     assign arsize  = ((ar_state==START)&& arvalid ) ? in_len  : 0;
     assign arlen   = ((ar_state==START)&& arvalid ) ? in_len  : 0;
     assign arburst = ((ar_state==START)&& arvalid ) ? burst_type : 0;
     //-----------AR CHANNEL PORT ASSIGNMENTS BEGIN------------------------\\
     //-------------------------------------------------------------------\\
     //-----------AR CHANNEL PORT ASSIGNMENTS BEGIN------------------------\\
     assign rready = (r_state == START);
     //-----------AR CHANNEL PORT ASSIGNMENTS BEGIN------------------------\\
     //-------------------------------------------------------------------\\
      assign read_data_out = (r_state == START) ? rdata : 0;
      assign read_id = (r_state == START) ?rid : 0;
      assign read_resp = (r_state == START)?rresp:0;
    always@(posedge aclk)
        begin
            if(areset)
                begin
                    {aw_state,w_state,b_state,ar_state,r_state}<=10'h0;
                    {aw_next_state,w_next_state,b_next_state,ar_next_state,r_next_state}<=10'h0;
                    beat_counter<=0;
                end
            else
                begin
                //----------AW CHANNEL STATE STATE MACHINE-------\\
                    case(aw_state)
                    
                        IDEL:
                            begin
                                if(trigger)
                                    begin
                                       aw_state<= START;
                                       r_awlen <= in_len;
                                    end
                            end
                        START:
                            begin
                                if(awvalid && awready)
                                    begin
                                        aw_state <= IDEL;
                                       
                                        
                                    end
                            end
                    endcase
                    
                    
                    //----------W CHANNEL STATE STATE MACHINE-------\\
                    case(w_state)
                    
                        IDEL:
                            begin
                                if(awvalid && awready)
                                    begin
                                       w_state<= START;
                                       
                                    end
                            end
                        START:
                            begin
                                if(beat_counter == r_awlen+1)
                                    begin
                                        w_state <= IDEL; 
                                        beat_counter <= 0;
                                    end
                                else if(wvalid && wready)
                                    begin
                                        w_state <= DATA;
                                    end
                            end
                        DATA :
                            begin
                                beat_counter <= beat_counter+1;
                                w_state <=START;
                            end
                    endcase
                    
                    //----------B CHANNEL STATE STATE MACHINE-------\\
                    case(b_state)
                    
                        IDEL:
                            begin
                                if(bvalid)
                                    begin
                                       b_state<= START;
                                    end
                            end
                        START:
                            begin
                                if(bvalid && bready)
                                    begin
                                        b_state <= IDEL; 
                                    end
                            end
                    endcase
                    
                    
                    //----------AR CHANNEL STATE STATE MACHINE-------\\
                    case(ar_state)
                    
                        IDEL:
                            begin
                                if(r_trigger)
                                    begin
                                       ar_state<= START;
                                       r_arlen <= in_len; 
                                    end
                            end
                        START:
                            begin
                                if(arvalid && arready )
                                    begin
                                        ar_state <= IDEL;
                                        
                                    end
                            end
                    endcase
                    
                    
                    //----------B CHANNEL STATE STATE MACHINE-------\\
                    case(r_state)
                    
                        IDEL:
                            begin
                                if(rvalid)
                                    begin
                                       r_state<= START;
                                    end
                            end
                        START:
                            begin
                                if(rvalid && rready && rlast)
                                    begin
                                        r_state <= IDEL;
                                    end
                            end
                    endcase
                end
        end
endmodule
