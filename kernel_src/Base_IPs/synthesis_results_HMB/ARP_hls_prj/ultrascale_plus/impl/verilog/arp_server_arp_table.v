// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module arp_server_arp_table (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        myIpAddress_dout,
        myIpAddress_empty_n,
        myIpAddress_read,
        macIpEncode_i_dout,
        macIpEncode_i_empty_n,
        macIpEncode_i_read,
        arpTableInsertFifo_dout,
        arpTableInsertFifo_empty_n,
        arpTableInsertFifo_read,
        macIpEncode_rsp_i_din,
        macIpEncode_rsp_i_full_n,
        macIpEncode_rsp_i_write,
        arpRequestFifo_din,
        arpRequestFifo_full_n,
        arpRequestFifo_write,
        arpTable_macAddress_address0,
        arpTable_macAddress_ce0,
        arpTable_macAddress_we0,
        arpTable_macAddress_d0,
        arpTable_macAddress_q0,
        arpTable_ipAddress_address0,
        arpTable_ipAddress_ce0,
        arpTable_ipAddress_we0,
        arpTable_ipAddress_d0,
        arpTable_valid_address0,
        arpTable_valid_ce0,
        arpTable_valid_we0,
        arpTable_valid_d0,
        arpTable_valid_q0,
        p_read,
        p_read1
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] myIpAddress_dout;
input   myIpAddress_empty_n;
output   myIpAddress_read;
input  [31:0] macIpEncode_i_dout;
input   macIpEncode_i_empty_n;
output   macIpEncode_i_read;
input  [127:0] arpTableInsertFifo_dout;
input   arpTableInsertFifo_empty_n;
output   arpTableInsertFifo_read;
output  [127:0] macIpEncode_rsp_i_din;
input   macIpEncode_rsp_i_full_n;
output   macIpEncode_rsp_i_write;
output  [31:0] arpRequestFifo_din;
input   arpRequestFifo_full_n;
output   arpRequestFifo_write;
output  [7:0] arpTable_macAddress_address0;
output   arpTable_macAddress_ce0;
output  [7:0] arpTable_macAddress_we0;
output  [63:0] arpTable_macAddress_d0;
input  [63:0] arpTable_macAddress_q0;
output  [7:0] arpTable_ipAddress_address0;
output   arpTable_ipAddress_ce0;
output   arpTable_ipAddress_we0;
output  [31:0] arpTable_ipAddress_d0;
output  [7:0] arpTable_valid_address0;
output   arpTable_valid_ce0;
output   arpTable_valid_we0;
output  [7:0] arpTable_valid_d0;
input  [7:0] arpTable_valid_q0;
input  [31:0] p_read;
input  [31:0] p_read1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg myIpAddress_read;
reg macIpEncode_i_read;
reg arpTableInsertFifo_read;
reg macIpEncode_rsp_i_write;
reg arpRequestFifo_write;
reg[7:0] arpTable_macAddress_address0;
reg arpTable_macAddress_ce0;
reg[7:0] arpTable_macAddress_we0;
reg arpTable_ipAddress_ce0;
reg arpTable_ipAddress_we0;
reg[7:0] arpTable_valid_address0;
reg arpTable_valid_ce0;
reg arpTable_valid_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [0:0] tmp_i_nbreadreq_fu_118_p3;
wire   [0:0] tmp_7_i_nbreadreq_fu_126_p3;
reg    ap_predicate_op36_read_state1;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_i_reg_337;
reg   [0:0] tmp_7_i_reg_341;
reg    ap_predicate_op68_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] tmp_i_reg_337_pp0_iter1_reg;
reg   [0:0] tmp_7_i_reg_341_pp0_iter1_reg;
reg   [0:0] currEntry_valid_V_reg_380;
reg    ap_predicate_op71_write_state3;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
reg    myIpAddress_blk_n;
wire    ap_block_pp0_stage0;
reg    arpTableInsertFifo_blk_n;
reg    macIpEncode_i_blk_n;
reg    arpRequestFifo_blk_n;
reg    macIpEncode_rsp_i_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] query_ip_V_reg_345;
reg   [31:0] query_ip_V_reg_345_pp0_iter1_reg;
reg   [31:0] currEntry_ipAddress_V_reg_365;
reg   [31:0] currEntry_ipAddress_V_reg_365_pp0_iter1_reg;
wire   [63:0] zext_ln708_fu_308_p1;
reg   [63:0] zext_ln708_reg_370;
reg   [63:0] zext_ln708_reg_370_pp0_iter1_reg;
wire   [0:0] currEntry_valid_V_fu_318_p1;
wire   [63:0] zext_ln708_1_fu_260_p1;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] xor_ln1049_fu_214_p2;
wire   [31:0] and_ln1049_fu_220_p2;
wire   [0:0] icmp_ln1049_fu_226_p2;
wire   [7:0] tmp_6_i_fu_232_p4;
wire   [7:0] tmp_8_i_fu_242_p4;
wire   [7:0] select_ln232_fu_252_p3;
wire   [47:0] currEntry_macAddress_V_fu_266_p1;
wire   [0:0] tmp_fu_285_p3;
wire   [7:0] p_Result_i_fu_298_p4;
wire   [47:0] currEntry_macAddress_V_1_fu_314_p1;
wire   [64:0] tmp_9_i_fu_322_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
reg    ap_block_pp0;
reg    ap_enable_operation_60;
reg    ap_enable_state1_pp0_iter0_stage0;
reg    ap_predicate_op47_load_state1;
reg    ap_enable_operation_47;
reg    ap_predicate_op63_load_state2;
reg    ap_enable_operation_63;
reg    ap_enable_state2_pp0_iter1_stage0;
reg    ap_predicate_op45_load_state1;
reg    ap_enable_operation_45;
reg    ap_predicate_op61_load_state2;
reg    ap_enable_operation_61;
reg    ap_enable_operation_58;
reg    ap_enable_operation_70;
wire    ap_enable_pp0;
reg    ap_condition_140;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_118_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        currEntry_ipAddress_V_reg_365 <= {{arpTableInsertFifo_dout[95:64]}};
        zext_ln708_reg_370[7 : 0] <= zext_ln708_fu_308_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        currEntry_ipAddress_V_reg_365_pp0_iter1_reg <= currEntry_ipAddress_V_reg_365;
        query_ip_V_reg_345_pp0_iter1_reg <= query_ip_V_reg_345;
        tmp_7_i_reg_341_pp0_iter1_reg <= tmp_7_i_reg_341;
        tmp_i_reg_337 <= tmp_i_nbreadreq_fu_118_p3;
        tmp_i_reg_337_pp0_iter1_reg <= tmp_i_reg_337;
        zext_ln708_reg_370_pp0_iter1_reg[7 : 0] <= zext_ln708_reg_370[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_7_i_reg_341 == 1'd1) & (tmp_i_reg_337 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        currEntry_valid_V_reg_380 <= currEntry_valid_V_fu_318_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op36_read_state1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        query_ip_V_reg_345 <= macIpEncode_i_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_118_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_7_i_reg_341 <= tmp_7_i_nbreadreq_fu_126_p3;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op71_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        arpRequestFifo_blk_n = arpRequestFifo_full_n;
    end else begin
        arpRequestFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op71_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        arpRequestFifo_write = 1'b1;
    end else begin
        arpRequestFifo_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b0) & (tmp_i_nbreadreq_fu_118_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        arpTableInsertFifo_blk_n = arpTableInsertFifo_empty_n;
    end else begin
        arpTableInsertFifo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_i_nbreadreq_fu_118_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        arpTableInsertFifo_read = 1'b1;
    end else begin
        arpTableInsertFifo_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        arpTable_ipAddress_ce0 = 1'b1;
    end else begin
        arpTable_ipAddress_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_reg_337_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        arpTable_ipAddress_we0 = 1'b1;
    end else begin
        arpTable_ipAddress_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_140)) begin
        if ((tmp_i_nbreadreq_fu_118_p3 == 1'd1)) begin
            arpTable_macAddress_address0 = zext_ln708_fu_308_p1;
        end else if (((tmp_7_i_nbreadreq_fu_126_p3 == 1'd1) & (tmp_i_nbreadreq_fu_118_p3 == 1'd0))) begin
            arpTable_macAddress_address0 = zext_ln708_1_fu_260_p1;
        end else begin
            arpTable_macAddress_address0 = 'bx;
        end
    end else begin
        arpTable_macAddress_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_i_nbreadreq_fu_118_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_7_i_nbreadreq_fu_126_p3 == 1'd1) & (tmp_i_nbreadreq_fu_118_p3 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        arpTable_macAddress_ce0 = 1'b1;
    end else begin
        arpTable_macAddress_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_nbreadreq_fu_118_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        arpTable_macAddress_we0 = 8'd63;
    end else begin
        arpTable_macAddress_we0 = 8'd0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_140)) begin
        if ((tmp_i_nbreadreq_fu_118_p3 == 1'd1)) begin
            arpTable_valid_address0 = zext_ln708_fu_308_p1;
        end else if (((tmp_7_i_nbreadreq_fu_126_p3 == 1'd1) & (tmp_i_nbreadreq_fu_118_p3 == 1'd0))) begin
            arpTable_valid_address0 = zext_ln708_1_fu_260_p1;
        end else begin
            arpTable_valid_address0 = 'bx;
        end
    end else begin
        arpTable_valid_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((tmp_i_nbreadreq_fu_118_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_7_i_nbreadreq_fu_126_p3 == 1'd1) & (tmp_i_nbreadreq_fu_118_p3 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        arpTable_valid_ce0 = 1'b1;
    end else begin
        arpTable_valid_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_nbreadreq_fu_118_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        arpTable_valid_we0 = 1'b1;
    end else begin
        arpTable_valid_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b0) & (ap_predicate_op36_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        macIpEncode_i_blk_n = macIpEncode_i_empty_n;
    end else begin
        macIpEncode_i_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op36_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        macIpEncode_i_read = 1'b1;
    end else begin
        macIpEncode_i_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op68_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        macIpEncode_rsp_i_blk_n = macIpEncode_rsp_i_full_n;
    end else begin
        macIpEncode_rsp_i_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op68_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        macIpEncode_rsp_i_write = 1'b1;
    end else begin
        macIpEncode_rsp_i_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        myIpAddress_blk_n = myIpAddress_empty_n;
    end else begin
        myIpAddress_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        myIpAddress_read = 1'b1;
    end else begin
        myIpAddress_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln1049_fu_220_p2 = (xor_ln1049_fu_214_p2 & p_read1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_pp0 = ((ap_ST_fsm_pp0_stage0 == ap_CS_fsm) & (1'b1 == ap_block_pp0_stage0_subdone));
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_predicate_op71_write_state3 == 1'b1) & (arpRequestFifo_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_predicate_op68_write_state2 == 1'b1) & (macIpEncode_rsp_i_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | (myIpAddress_empty_n == 1'b0) | ((arpTableInsertFifo_empty_n == 1'b0) & (tmp_i_nbreadreq_fu_118_p3 == 1'd1)) | ((ap_predicate_op36_read_state1 == 1'b1) & (macIpEncode_i_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_predicate_op71_write_state3 == 1'b1) & (arpRequestFifo_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_predicate_op68_write_state2 == 1'b1) & (macIpEncode_rsp_i_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | (myIpAddress_empty_n == 1'b0) | ((arpTableInsertFifo_empty_n == 1'b0) & (tmp_i_nbreadreq_fu_118_p3 == 1'd1)) | ((ap_predicate_op36_read_state1 == 1'b1) & (macIpEncode_i_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_predicate_op71_write_state3 == 1'b1) & (arpRequestFifo_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_predicate_op68_write_state2 == 1'b1) & (macIpEncode_rsp_i_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | (myIpAddress_empty_n == 1'b0) | ((arpTableInsertFifo_empty_n == 1'b0) & (tmp_i_nbreadreq_fu_118_p3 == 1'd1)) | ((ap_predicate_op36_read_state1 == 1'b1) & (macIpEncode_i_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | (myIpAddress_empty_n == 1'b0) | ((arpTableInsertFifo_empty_n == 1'b0) & (tmp_i_nbreadreq_fu_118_p3 == 1'd1)) | ((ap_predicate_op36_read_state1 == 1'b1) & (macIpEncode_i_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((ap_predicate_op68_write_state2 == 1'b1) & (macIpEncode_rsp_i_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((ap_predicate_op71_write_state3 == 1'b1) & (arpRequestFifo_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_140 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0));
end

always @ (*) begin
    ap_enable_operation_45 = (ap_predicate_op45_load_state1 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_47 = (ap_predicate_op47_load_state1 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_58 = (tmp_i_nbreadreq_fu_118_p3 == 1'd1);
end

always @ (*) begin
    ap_enable_operation_60 = (tmp_i_nbreadreq_fu_118_p3 == 1'd1);
end

always @ (*) begin
    ap_enable_operation_61 = (ap_predicate_op61_load_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_63 = (ap_predicate_op63_load_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_70 = (tmp_i_reg_337 == 1'd1);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_enable_state1_pp0_iter0_stage0 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state2_pp0_iter1_stage0 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_predicate_op36_read_state1 = ((tmp_7_i_nbreadreq_fu_126_p3 == 1'd1) & (tmp_i_nbreadreq_fu_118_p3 == 1'd0));
end

always @ (*) begin
    ap_predicate_op45_load_state1 = ((tmp_7_i_nbreadreq_fu_126_p3 == 1'd1) & (tmp_i_nbreadreq_fu_118_p3 == 1'd0));
end

always @ (*) begin
    ap_predicate_op47_load_state1 = ((tmp_7_i_nbreadreq_fu_126_p3 == 1'd1) & (tmp_i_nbreadreq_fu_118_p3 == 1'd0));
end

always @ (*) begin
    ap_predicate_op61_load_state2 = ((tmp_7_i_reg_341 == 1'd1) & (tmp_i_reg_337 == 1'd0));
end

always @ (*) begin
    ap_predicate_op63_load_state2 = ((tmp_7_i_reg_341 == 1'd1) & (tmp_i_reg_337 == 1'd0));
end

always @ (*) begin
    ap_predicate_op68_write_state2 = ((tmp_7_i_reg_341 == 1'd1) & (tmp_i_reg_337 == 1'd0));
end

always @ (*) begin
    ap_predicate_op71_write_state3 = ((currEntry_valid_V_reg_380 == 1'd0) & (tmp_7_i_reg_341_pp0_iter1_reg == 1'd1) & (tmp_i_reg_337_pp0_iter1_reg == 1'd0));
end

assign arpRequestFifo_din = query_ip_V_reg_345_pp0_iter1_reg;

assign arpTable_ipAddress_address0 = zext_ln708_reg_370_pp0_iter1_reg;

assign arpTable_ipAddress_d0 = currEntry_ipAddress_V_reg_365_pp0_iter1_reg;

assign arpTable_macAddress_d0 = currEntry_macAddress_V_fu_266_p1;

assign arpTable_valid_d0 = tmp_fu_285_p3;

assign currEntry_macAddress_V_1_fu_314_p1 = arpTable_macAddress_q0[47:0];

assign currEntry_macAddress_V_fu_266_p1 = arpTableInsertFifo_dout[47:0];

assign currEntry_valid_V_fu_318_p1 = arpTable_valid_q0[0:0];

assign icmp_ln1049_fu_226_p2 = ((and_ln1049_fu_220_p2 == 32'd0) ? 1'b1 : 1'b0);

assign macIpEncode_rsp_i_din = tmp_9_i_fu_322_p4;

assign p_Result_i_fu_298_p4 = {{arpTableInsertFifo_dout[95:88]}};

assign select_ln232_fu_252_p3 = ((icmp_ln1049_fu_226_p2[0:0] == 1'b1) ? tmp_6_i_fu_232_p4 : tmp_8_i_fu_242_p4);

assign tmp_6_i_fu_232_p4 = {{macIpEncode_i_dout[31:24]}};

assign tmp_7_i_nbreadreq_fu_126_p3 = macIpEncode_i_empty_n;

assign tmp_8_i_fu_242_p4 = {{p_read[31:24]}};

assign tmp_9_i_fu_322_p4 = {{{currEntry_valid_V_fu_318_p1}, {16'd0}}, {currEntry_macAddress_V_1_fu_314_p1}};

assign tmp_fu_285_p3 = arpTableInsertFifo_dout[32'd96];

assign tmp_i_nbreadreq_fu_118_p3 = arpTableInsertFifo_empty_n;

assign xor_ln1049_fu_214_p2 = (myIpAddress_dout ^ macIpEncode_i_dout);

assign zext_ln708_1_fu_260_p1 = select_ln232_fu_252_p3;

assign zext_ln708_fu_308_p1 = p_Result_i_fu_298_p4;

always @ (posedge ap_clk) begin
    zext_ln708_reg_370[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln708_reg_370_pp0_iter1_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end

endmodule //arp_server_arp_table
