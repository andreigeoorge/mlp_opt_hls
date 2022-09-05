// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="d_sigmoid,hls_ip_2019_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-3,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.253000,HLS_SYN_LAT=97,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=14,HLS_SYN_FF=958,HLS_SYN_LUT=1816,HLS_VERSION=2019_2}" *)

module d_sigmoid (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        layer_input_address0,
        layer_input_ce0,
        layer_input_we0,
        layer_input_d0,
        layer_input_q0,
        layer_input_address1,
        layer_input_ce1,
        layer_input_we1,
        layer_input_d1,
        layer_input_q1,
        layer_output_address0,
        layer_output_ce0,
        layer_output_q0,
        layer_derivative_address0,
        layer_derivative_ce0,
        layer_derivative_we0,
        layer_derivative_d0
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] layer_input_address0;
output   layer_input_ce0;
output   layer_input_we0;
output  [63:0] layer_input_d0;
input  [63:0] layer_input_q0;
output  [2:0] layer_input_address1;
output   layer_input_ce1;
output   layer_input_we1;
output  [63:0] layer_input_d1;
input  [63:0] layer_input_q1;
output  [2:0] layer_output_address0;
output   layer_output_ce0;
input  [63:0] layer_output_q0;
output  [2:0] layer_derivative_address0;
output   layer_derivative_ce0;
output   layer_derivative_we0;
output  [63:0] layer_derivative_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg layer_output_ce0;
reg layer_derivative_ce0;
reg layer_derivative_we0;

(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] i_fu_84_p2;
reg   [3:0] i_reg_103;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln11_fu_78_p2;
reg   [63:0] layer_output_load_reg_113;
wire    ap_CS_fsm_state3;
wire   [63:0] grp_fu_68_p2;
reg   [63:0] tmp_reg_119;
wire    ap_CS_fsm_state7;
wire   [63:0] grp_fu_74_p2;
reg   [63:0] tmp_1_reg_124;
wire    ap_CS_fsm_state12;
reg   [3:0] i_0_reg_56;
wire    ap_CS_fsm_state13;
wire   [63:0] zext_ln12_fu_90_p1;
wire   [63:0] zext_ln12_1_fu_95_p1;
wire    ap_CS_fsm_state8;
reg   [12:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 13'd1;
end

d_sigmoid_dsub_64bkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
d_sigmoid_dsub_64bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(64'd4607182418800017408),
    .din1(layer_output_q0),
    .ce(1'b1),
    .dout(grp_fu_68_p2)
);

d_sigmoid_dmul_64cud #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
d_sigmoid_dmul_64cud_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(layer_output_load_reg_113),
    .din1(tmp_reg_119),
    .ce(1'b1),
    .dout(grp_fu_74_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i_0_reg_56 <= i_reg_103;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_56 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_103 <= i_fu_84_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        layer_output_load_reg_113 <= layer_output_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp_1_reg_124 <= grp_fu_74_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_reg_119 <= grp_fu_68_p2;
    end
end

always @ (*) begin
    if (((icmp_ln11_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln11_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        layer_derivative_ce0 = 1'b1;
    end else begin
        layer_derivative_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        layer_derivative_we0 = 1'b1;
    end else begin
        layer_derivative_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        layer_output_ce0 = 1'b1;
    end else begin
        layer_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln11_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign i_fu_84_p2 = (i_0_reg_56 + 4'd1);

assign icmp_ln11_fu_78_p2 = ((i_0_reg_56 == 4'd8) ? 1'b1 : 1'b0);

assign layer_derivative_address0 = zext_ln12_1_fu_95_p1;

assign layer_derivative_d0 = tmp_1_reg_124;

assign layer_input_address0 = 3'd0;

assign layer_input_address1 = 3'd0;

assign layer_input_ce0 = 1'b0;

assign layer_input_ce1 = 1'b0;

assign layer_input_d0 = 64'd0;

assign layer_input_d1 = 64'd0;

assign layer_input_we0 = 1'b0;

assign layer_input_we1 = 1'b0;

assign layer_output_address0 = zext_ln12_fu_90_p1;

assign zext_ln12_1_fu_95_p1 = i_0_reg_56;

assign zext_ln12_fu_90_p1 = i_fu_84_p2;

endmodule //d_sigmoid
