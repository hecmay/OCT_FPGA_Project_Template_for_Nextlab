// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ethernet_header_inserter_handle_output (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        no_ip_header_out_dout,
        no_ip_header_out_empty_n,
        no_ip_header_out_read,
        ip_header_checksum_dout,
        ip_header_checksum_empty_n,
        ip_header_checksum_read,
        arpTableReplay_V_TVALID,
        dataOut_TREADY,
        arpTableReplay_V_TDATA,
        arpTableReplay_V_TREADY,
        myMacAddress,
        dataOut_TDATA,
        dataOut_TVALID,
        dataOut_TKEEP,
        dataOut_TSTRB,
        dataOut_TLAST
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [1023:0] no_ip_header_out_dout;
input   no_ip_header_out_empty_n;
output   no_ip_header_out_read;
input  [1023:0] ip_header_checksum_dout;
input   ip_header_checksum_empty_n;
output   ip_header_checksum_read;
input   arpTableReplay_V_TVALID;
input   dataOut_TREADY;
input  [127:0] arpTableReplay_V_TDATA;
output   arpTableReplay_V_TREADY;
input  [47:0] myMacAddress;
output  [511:0] dataOut_TDATA;
output   dataOut_TVALID;
output  [63:0] dataOut_TKEEP;
output  [63:0] dataOut_TSTRB;
output  [0:0] dataOut_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg no_ip_header_out_read;
reg ip_header_checksum_read;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [2:0] mw_state_load_load_fu_243_p1;
wire   [0:0] grp_nbreadreq_fu_112_p3;
reg    ap_predicate_op22_read_state1;
wire   [0:0] grp_nbreadreq_fu_126_p3;
reg    ap_predicate_op40_read_state1;
reg    ap_predicate_op60_read_state1;
reg    ap_predicate_op69_read_state1;
wire   [0:0] tmp_i_nbreadreq_fu_140_p3;
reg    ap_predicate_op77_read_state1;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [2:0] mw_state_load_reg_513;
reg   [0:0] tmp_4_i_reg_531;
reg    ap_predicate_op99_write_state2;
reg   [0:0] tmp_3_i_reg_551;
reg    ap_predicate_op103_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
reg   [2:0] mw_state_load_reg_513_pp0_iter1_reg;
reg   [0:0] tmp_4_i_reg_531_pp0_iter1_reg;
reg    ap_predicate_op106_write_state3;
reg   [0:0] tmp_3_i_reg_551_pp0_iter1_reg;
reg    ap_predicate_op108_write_state3;
wire    regslice_both_dataOut_V_data_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_subdone;
reg   [2:0] mw_state;
reg   [111:0] previous_word_data_V;
reg   [13:0] previous_word_keep_V;
reg    arpTableReplay_V_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    dataOut_TDATA_blk_n;
reg    ip_header_checksum_blk_n;
reg    no_ip_header_out_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [111:0] previous_word_data_V_load_reg_517;
reg   [13:0] previous_word_keep_V_load_reg_524;
wire   [399:0] trunc_ln674_1_fu_261_p1;
reg   [399:0] trunc_ln674_1_reg_538;
reg   [49:0] p_Result_8_i_reg_543;
wire   [399:0] trunc_ln674_fu_327_p1;
reg   [399:0] trunc_ln674_reg_558;
reg   [49:0] p_Result_2_i_reg_563;
wire   [511:0] p_Result_11_fu_469_p3;
wire   [63:0] p_Result_12_fu_477_p3;
wire   [511:0] p_Result_9_fu_485_p3;
wire   [63:0] p_Result_10_fu_492_p3;
wire   [511:0] p_Result_7_fu_499_p3;
wire   [63:0] p_Result_8_fu_506_p3;
reg   [1:0] ap_phi_mux_storemerge1_i_phi_fu_181_p4;
wire   [1:0] ap_phi_reg_pp0_iter0_storemerge1_i_reg_178;
wire   [0:0] reply_hit_fu_423_p3;
wire   [0:0] ap_phi_reg_pp0_iter0_sendWord_last_V_1_reg_189;
reg   [0:0] ap_phi_reg_pp0_iter1_sendWord_last_V_1_reg_189;
wire   [0:0] grp_fu_227_p3;
wire   [0:0] tmp_8_fu_307_p3;
wire   [0:0] ap_phi_reg_pp0_iter0_sendWord_last_V_reg_208;
reg   [0:0] ap_phi_reg_pp0_iter1_sendWord_last_V_reg_208;
wire   [0:0] grp_fu_235_p3;
wire   [0:0] tmp_7_fu_379_p3;
wire   [2:0] select_ln132_fu_405_p3;
wire   [2:0] zext_ln121_fu_453_p1;
wire   [111:0] p_Result_s_fu_431_p4;
reg    ap_block_pp0_stage0_01001;
wire   [47:0] reply_macAddress_V_fu_419_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_arpTableReplay_V_U_apdone_blk;
wire   [127:0] arpTableReplay_V_TDATA_int_regslice;
wire    arpTableReplay_V_TVALID_int_regslice;
reg    arpTableReplay_V_TREADY_int_regslice;
wire    regslice_both_arpTableReplay_V_U_ack_in;
reg   [511:0] dataOut_TDATA_int_regslice;
reg    dataOut_TVALID_int_regslice;
wire    dataOut_TREADY_int_regslice;
wire    regslice_both_dataOut_V_data_V_U_vld_out;
wire    regslice_both_dataOut_V_keep_V_U_apdone_blk;
reg   [63:0] dataOut_TKEEP_int_regslice;
wire    regslice_both_dataOut_V_keep_V_U_ack_in_dummy;
wire    regslice_both_dataOut_V_keep_V_U_vld_out;
wire    regslice_both_dataOut_V_strb_V_U_apdone_blk;
wire    regslice_both_dataOut_V_strb_V_U_ack_in_dummy;
wire    regslice_both_dataOut_V_strb_V_U_vld_out;
wire    regslice_both_dataOut_V_last_V_U_apdone_blk;
reg   [0:0] dataOut_TLAST_int_regslice;
wire    regslice_both_dataOut_V_last_V_U_ack_in_dummy;
wire    regslice_both_dataOut_V_last_V_U_vld_out;
reg    ap_condition_351;
reg    ap_condition_257;
reg    ap_condition_222;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 mw_state = 3'd0;
#0 previous_word_data_V = 112'd0;
#0 previous_word_keep_V = 14'd0;
end

ethernet_header_inserter_regslice_both #(
    .DataWidth( 128 ))
regslice_both_arpTableReplay_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(arpTableReplay_V_TDATA),
    .vld_in(arpTableReplay_V_TVALID),
    .ack_in(regslice_both_arpTableReplay_V_U_ack_in),
    .data_out(arpTableReplay_V_TDATA_int_regslice),
    .vld_out(arpTableReplay_V_TVALID_int_regslice),
    .ack_out(arpTableReplay_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_arpTableReplay_V_U_apdone_blk)
);

ethernet_header_inserter_regslice_both #(
    .DataWidth( 512 ))
regslice_both_dataOut_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(dataOut_TDATA_int_regslice),
    .vld_in(dataOut_TVALID_int_regslice),
    .ack_in(dataOut_TREADY_int_regslice),
    .data_out(dataOut_TDATA),
    .vld_out(regslice_both_dataOut_V_data_V_U_vld_out),
    .ack_out(dataOut_TREADY),
    .apdone_blk(regslice_both_dataOut_V_data_V_U_apdone_blk)
);

ethernet_header_inserter_regslice_both #(
    .DataWidth( 64 ))
regslice_both_dataOut_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(dataOut_TKEEP_int_regslice),
    .vld_in(dataOut_TVALID_int_regslice),
    .ack_in(regslice_both_dataOut_V_keep_V_U_ack_in_dummy),
    .data_out(dataOut_TKEEP),
    .vld_out(regslice_both_dataOut_V_keep_V_U_vld_out),
    .ack_out(dataOut_TREADY),
    .apdone_blk(regslice_both_dataOut_V_keep_V_U_apdone_blk)
);

ethernet_header_inserter_regslice_both #(
    .DataWidth( 64 ))
regslice_both_dataOut_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(64'd0),
    .vld_in(dataOut_TVALID_int_regslice),
    .ack_in(regslice_both_dataOut_V_strb_V_U_ack_in_dummy),
    .data_out(dataOut_TSTRB),
    .vld_out(regslice_both_dataOut_V_strb_V_U_vld_out),
    .ack_out(dataOut_TREADY),
    .apdone_blk(regslice_both_dataOut_V_strb_V_U_apdone_blk)
);

ethernet_header_inserter_regslice_both #(
    .DataWidth( 1 ))
regslice_both_dataOut_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(dataOut_TLAST_int_regslice),
    .vld_in(dataOut_TVALID_int_regslice),
    .ack_in(regslice_both_dataOut_V_last_V_U_ack_in_dummy),
    .data_out(dataOut_TLAST),
    .vld_out(regslice_both_dataOut_V_last_V_U_vld_out),
    .ack_out(dataOut_TREADY),
    .apdone_blk(regslice_both_dataOut_V_last_V_U_apdone_blk)
);

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
    if (((grp_nbreadreq_fu_112_p3 == 1'd1) & (mw_state == 3'd4) & (tmp_8_fu_307_p3 == 1'd0) & (grp_fu_227_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_sendWord_last_V_1_reg_189 <= 1'd1;
    end else if ((((grp_nbreadreq_fu_112_p3 == 1'd1) & (mw_state == 3'd4) & (grp_fu_227_p3 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_112_p3 == 1'd1) & (mw_state == 3'd4) & (tmp_8_fu_307_p3 == 1'd1) & (grp_fu_227_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter1_sendWord_last_V_1_reg_189 <= 1'd0;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_sendWord_last_V_1_reg_189 <= ap_phi_reg_pp0_iter0_sendWord_last_V_1_reg_189;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_126_p3 == 1'd1) & (mw_state == 3'd3) & (tmp_7_fu_379_p3 == 1'd0) & (grp_fu_235_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_sendWord_last_V_reg_208 <= 1'd1;
    end else if ((((grp_nbreadreq_fu_126_p3 == 1'd1) & (mw_state == 3'd3) & (tmp_7_fu_379_p3 == 1'd1) & (grp_fu_235_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_126_p3 == 1'd1) & (mw_state == 3'd3) & (grp_fu_235_p3 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter1_sendWord_last_V_reg_208 <= 1'd0;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_sendWord_last_V_reg_208 <= ap_phi_reg_pp0_iter0_sendWord_last_V_reg_208;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_nbreadreq_fu_140_p3 == 1'd1) & (mw_state == 3'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mw_state <= zext_ln121_fu_453_p1;
    end else if (((grp_nbreadreq_fu_126_p3 == 1'd1) & (mw_state == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mw_state <= select_ln132_fu_405_p3;
    end else if (((grp_nbreadreq_fu_126_p3 == 1'd1) & (mw_state == 3'd3) & (grp_fu_235_p3 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mw_state <= 3'd4;
    end else if ((((grp_nbreadreq_fu_126_p3 == 1'd1) & (mw_state == 3'd3) & (tmp_7_fu_379_p3 == 1'd1) & (grp_fu_235_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_112_p3 == 1'd1) & (mw_state == 3'd4) & (tmp_8_fu_307_p3 == 1'd1) & (grp_fu_227_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        mw_state <= 3'd5;
    end else if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & ((mw_state_load_load_fu_243_p1 == 3'd6) | (mw_state_load_load_fu_243_p1 == 3'd7))) | ((grp_nbreadreq_fu_126_p3 == 1'd1) & (mw_state == 3'd3) & (tmp_7_fu_379_p3 == 1'd0) & (grp_fu_235_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_112_p3 == 1'd1) & (mw_state == 3'd2) & (grp_fu_227_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_112_p3 == 1'd1) & (mw_state == 3'd4) & (tmp_8_fu_307_p3 == 1'd0) & (grp_fu_227_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((mw_state_load_load_fu_243_p1 == 3'd5) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        mw_state <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_222)) begin
        if ((1'b1 == ap_condition_257)) begin
            previous_word_data_V <= p_Result_s_fu_431_p4;
        end else if (((grp_nbreadreq_fu_126_p3 == 1'd1) & (mw_state == 3'd3))) begin
            previous_word_data_V <= {{ip_header_checksum_dout[511:400]}};
        end else if (((grp_nbreadreq_fu_112_p3 == 1'd1) & (mw_state == 3'd4))) begin
            previous_word_data_V <= {{no_ip_header_out_dout[511:400]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_222)) begin
        if ((1'b1 == ap_condition_257)) begin
            previous_word_keep_V <= 14'd16383;
        end else if (((grp_nbreadreq_fu_126_p3 == 1'd1) & (mw_state == 3'd3))) begin
            previous_word_keep_V <= {{ip_header_checksum_dout[575:562]}};
        end else if (((grp_nbreadreq_fu_112_p3 == 1'd1) & (mw_state == 3'd4))) begin
            previous_word_keep_V <= {{no_ip_header_out_dout[575:562]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mw_state_load_reg_513 <= mw_state;
        mw_state_load_reg_513_pp0_iter1_reg <= mw_state_load_reg_513;
        previous_word_data_V_load_reg_517 <= previous_word_data_V;
        previous_word_keep_V_load_reg_524 <= previous_word_keep_V;
        tmp_3_i_reg_551_pp0_iter1_reg <= tmp_3_i_reg_551;
        tmp_4_i_reg_531_pp0_iter1_reg <= tmp_4_i_reg_531;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_126_p3 == 1'd1) & (mw_state == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Result_2_i_reg_563 <= {{ip_header_checksum_dout[561:512]}};
        trunc_ln674_reg_558 <= trunc_ln674_fu_327_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_112_p3 == 1'd1) & (mw_state == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Result_8_i_reg_543 <= {{no_ip_header_out_dout[561:512]}};
        trunc_ln674_1_reg_538 <= trunc_ln674_1_fu_261_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((mw_state == 3'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_3_i_reg_551 <= grp_nbreadreq_fu_126_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((mw_state == 3'd4) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_4_i_reg_531 <= grp_nbreadreq_fu_112_p3;
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
    if (((tmp_i_nbreadreq_fu_140_p3 == 1'd1) & (mw_state == 3'd0))) begin
        if ((reply_hit_fu_423_p3 == 1'd0)) begin
            ap_phi_mux_storemerge1_i_phi_fu_181_p4 = 2'd1;
        end else if ((reply_hit_fu_423_p3 == 1'd1)) begin
            ap_phi_mux_storemerge1_i_phi_fu_181_p4 = 2'd3;
        end else begin
            ap_phi_mux_storemerge1_i_phi_fu_181_p4 = ap_phi_reg_pp0_iter0_storemerge1_i_reg_178;
        end
    end else begin
        ap_phi_mux_storemerge1_i_phi_fu_181_p4 = ap_phi_reg_pp0_iter0_storemerge1_i_reg_178;
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
    if (((ap_done_reg == 1'b0) & (ap_predicate_op77_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        arpTableReplay_V_TDATA_blk_n = arpTableReplay_V_TVALID_int_regslice;
    end else begin
        arpTableReplay_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op77_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        arpTableReplay_V_TREADY_int_regslice = 1'b1;
    end else begin
        arpTableReplay_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((mw_state_load_reg_513 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op108_write_state3 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op106_write_state3 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (mw_state_load_reg_513_pp0_iter1_reg == 3'd5)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op103_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op99_write_state2 == 1'b1)))) begin
        dataOut_TDATA_blk_n = dataOut_TREADY_int_regslice;
    end else begin
        dataOut_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_351)) begin
        if ((ap_predicate_op103_write_state2 == 1'b1)) begin
            dataOut_TDATA_int_regslice = p_Result_7_fu_499_p3;
        end else if ((ap_predicate_op99_write_state2 == 1'b1)) begin
            dataOut_TDATA_int_regslice = p_Result_9_fu_485_p3;
        end else if ((mw_state_load_reg_513 == 3'd5)) begin
            dataOut_TDATA_int_regslice = p_Result_11_fu_469_p3;
        end else begin
            dataOut_TDATA_int_regslice = 'bx;
        end
    end else begin
        dataOut_TDATA_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_351)) begin
        if ((ap_predicate_op103_write_state2 == 1'b1)) begin
            dataOut_TKEEP_int_regslice = p_Result_8_fu_506_p3;
        end else if ((ap_predicate_op99_write_state2 == 1'b1)) begin
            dataOut_TKEEP_int_regslice = p_Result_10_fu_492_p3;
        end else if ((mw_state_load_reg_513 == 3'd5)) begin
            dataOut_TKEEP_int_regslice = p_Result_12_fu_477_p3;
        end else begin
            dataOut_TKEEP_int_regslice = 'bx;
        end
    end else begin
        dataOut_TKEEP_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_351)) begin
        if ((ap_predicate_op103_write_state2 == 1'b1)) begin
            dataOut_TLAST_int_regslice = ap_phi_reg_pp0_iter1_sendWord_last_V_reg_208;
        end else if ((ap_predicate_op99_write_state2 == 1'b1)) begin
            dataOut_TLAST_int_regslice = ap_phi_reg_pp0_iter1_sendWord_last_V_1_reg_189;
        end else if ((mw_state_load_reg_513 == 3'd5)) begin
            dataOut_TLAST_int_regslice = 1'd1;
        end else begin
            dataOut_TLAST_int_regslice = 'bx;
        end
    end else begin
        dataOut_TLAST_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((((mw_state_load_reg_513 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op103_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op99_write_state2 == 1'b1)))) begin
        dataOut_TVALID_int_regslice = 1'b1;
    end else begin
        dataOut_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_done_reg == 1'b0) & (ap_predicate_op69_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_done_reg == 1'b0) & (ap_predicate_op40_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        ip_header_checksum_blk_n = ip_header_checksum_empty_n;
    end else begin
        ip_header_checksum_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op69_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op40_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ip_header_checksum_read = 1'b1;
    end else begin
        ip_header_checksum_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_done_reg == 1'b0) & (ap_predicate_op60_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_done_reg == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        no_ip_header_out_blk_n = no_ip_header_out_empty_n;
    end else begin
        no_ip_header_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op60_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op22_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        no_ip_header_out_read = 1'b1;
    end else begin
        no_ip_header_out_read = 1'b0;
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

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op77_read_state1 == 1'b1) & (arpTableReplay_V_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op69_read_state1 == 1'b1) & (ip_header_checksum_empty_n == 1'b0)) | ((ap_predicate_op60_read_state1 == 1'b1) & (no_ip_header_out_empty_n == 1'b0)) | ((ap_predicate_op40_read_state1 == 1'b1) & (ip_header_checksum_empty_n == 1'b0)) | ((ap_predicate_op22_read_state1 == 1'b1) & (no_ip_header_out_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_dataOut_V_data_V_U_apdone_blk == 1'b1) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op108_write_state3 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op106_write_state3 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (mw_state_load_reg_513_pp0_iter1_reg == 3'd5)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((mw_state_load_reg_513 == 3'd5) & (dataOut_TREADY_int_regslice == 1'b0)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op103_write_state2 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op99_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op77_read_state1 == 1'b1) & (arpTableReplay_V_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op69_read_state1 == 1'b1) & (ip_header_checksum_empty_n == 1'b0)) | ((ap_predicate_op60_read_state1 == 1'b1) & (no_ip_header_out_empty_n == 1'b0)) | ((ap_predicate_op40_read_state1 == 1'b1) & (ip_header_checksum_empty_n == 1'b0)) | ((ap_predicate_op22_read_state1 == 1'b1) & (no_ip_header_out_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state3_io) | (regslice_both_dataOut_V_data_V_U_apdone_blk == 1'b1) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op108_write_state3 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op106_write_state3 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (mw_state_load_reg_513_pp0_iter1_reg == 3'd5)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((mw_state_load_reg_513 == 3'd5) & (dataOut_TREADY_int_regslice == 1'b0)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op103_write_state2 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op99_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op77_read_state1 == 1'b1) & (arpTableReplay_V_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op69_read_state1 == 1'b1) & (ip_header_checksum_empty_n == 1'b0)) | ((ap_predicate_op60_read_state1 == 1'b1) & (no_ip_header_out_empty_n == 1'b0)) | ((ap_predicate_op40_read_state1 == 1'b1) & (ip_header_checksum_empty_n == 1'b0)) | ((ap_predicate_op22_read_state1 == 1'b1) & (no_ip_header_out_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state3_io) | (regslice_both_dataOut_V_data_V_U_apdone_blk == 1'b1) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op108_write_state3 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op106_write_state3 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (mw_state_load_reg_513_pp0_iter1_reg == 3'd5)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((mw_state_load_reg_513 == 3'd5) & (dataOut_TREADY_int_regslice == 1'b0)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op103_write_state2 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op99_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op77_read_state1 == 1'b1) & (arpTableReplay_V_TVALID_int_regslice == 1'b0)) | ((ap_predicate_op69_read_state1 == 1'b1) & (ip_header_checksum_empty_n == 1'b0)) | ((ap_predicate_op60_read_state1 == 1'b1) & (no_ip_header_out_empty_n == 1'b0)) | ((ap_predicate_op40_read_state1 == 1'b1) & (ip_header_checksum_empty_n == 1'b0)) | ((ap_predicate_op22_read_state1 == 1'b1) & (no_ip_header_out_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_io = (((mw_state_load_reg_513 == 3'd5) & (dataOut_TREADY_int_regslice == 1'b0)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op103_write_state2 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op99_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((mw_state_load_reg_513 == 3'd5) & (dataOut_TREADY_int_regslice == 1'b0)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op103_write_state2 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op99_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_block_state3_io = (((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op108_write_state3 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op106_write_state3 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (mw_state_load_reg_513_pp0_iter1_reg == 3'd5)));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((regslice_both_dataOut_V_data_V_U_apdone_blk == 1'b1) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op108_write_state3 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op106_write_state3 == 1'b1)) | ((dataOut_TREADY_int_regslice == 1'b0) & (mw_state_load_reg_513_pp0_iter1_reg == 3'd5)));
end

always @ (*) begin
    ap_condition_222 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_257 = ((tmp_i_nbreadreq_fu_140_p3 == 1'd1) & (mw_state == 3'd0) & (reply_hit_fu_423_p3 == 1'd1));
end

always @ (*) begin
    ap_condition_351 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_sendWord_last_V_1_reg_189 = 'bx;

assign ap_phi_reg_pp0_iter0_sendWord_last_V_reg_208 = 'bx;

assign ap_phi_reg_pp0_iter0_storemerge1_i_reg_178 = 'bx;

always @ (*) begin
    ap_predicate_op103_write_state2 = ((mw_state_load_reg_513 == 3'd3) & (tmp_3_i_reg_551 == 1'd1));
end

always @ (*) begin
    ap_predicate_op106_write_state3 = ((tmp_4_i_reg_531_pp0_iter1_reg == 1'd1) & (mw_state_load_reg_513_pp0_iter1_reg == 3'd4));
end

always @ (*) begin
    ap_predicate_op108_write_state3 = ((tmp_3_i_reg_551_pp0_iter1_reg == 1'd1) & (mw_state_load_reg_513_pp0_iter1_reg == 3'd3));
end

always @ (*) begin
    ap_predicate_op22_read_state1 = ((grp_nbreadreq_fu_112_p3 == 1'd1) & (mw_state == 3'd4));
end

always @ (*) begin
    ap_predicate_op40_read_state1 = ((grp_nbreadreq_fu_126_p3 == 1'd1) & (mw_state == 3'd3));
end

always @ (*) begin
    ap_predicate_op60_read_state1 = ((grp_nbreadreq_fu_112_p3 == 1'd1) & (mw_state == 3'd2));
end

always @ (*) begin
    ap_predicate_op69_read_state1 = ((grp_nbreadreq_fu_126_p3 == 1'd1) & (mw_state == 3'd1));
end

always @ (*) begin
    ap_predicate_op77_read_state1 = ((tmp_i_nbreadreq_fu_140_p3 == 1'd1) & (mw_state == 3'd0));
end

always @ (*) begin
    ap_predicate_op99_write_state2 = ((mw_state_load_reg_513 == 3'd4) & (tmp_4_i_reg_531 == 1'd1));
end

assign arpTableReplay_V_TREADY = regslice_both_arpTableReplay_V_U_ack_in;

assign dataOut_TVALID = regslice_both_dataOut_V_data_V_U_vld_out;

assign grp_fu_227_p3 = no_ip_header_out_dout[32'd576];

assign grp_fu_235_p3 = ip_header_checksum_dout[32'd576];

assign grp_nbreadreq_fu_112_p3 = no_ip_header_out_empty_n;

assign grp_nbreadreq_fu_126_p3 = ip_header_checksum_empty_n;

assign mw_state_load_load_fu_243_p1 = mw_state;

assign p_Result_10_fu_492_p3 = {{p_Result_8_i_reg_543}, {previous_word_keep_V_load_reg_524}};

assign p_Result_11_fu_469_p3 = {{400'd0}, {previous_word_data_V_load_reg_517}};

assign p_Result_12_fu_477_p3 = {{50'd0}, {previous_word_keep_V_load_reg_524}};

assign p_Result_7_fu_499_p3 = {{trunc_ln674_reg_558}, {previous_word_data_V_load_reg_517}};

assign p_Result_8_fu_506_p3 = {{p_Result_2_i_reg_563}, {previous_word_keep_V_load_reg_524}};

assign p_Result_9_fu_485_p3 = {{trunc_ln674_1_reg_538}, {previous_word_data_V_load_reg_517}};

assign p_Result_s_fu_431_p4 = {{{{16'd8}, {myMacAddress}}}, {reply_macAddress_V_fu_419_p1}};

assign reply_hit_fu_423_p3 = arpTableReplay_V_TDATA_int_regslice[32'd64];

assign reply_macAddress_V_fu_419_p1 = arpTableReplay_V_TDATA_int_regslice[47:0];

assign select_ln132_fu_405_p3 = ((grp_fu_235_p3[0:0] == 1'b1) ? 3'd0 : 3'd2);

assign tmp_7_fu_379_p3 = ip_header_checksum_dout[32'd562];

assign tmp_8_fu_307_p3 = no_ip_header_out_dout[32'd562];

assign tmp_i_nbreadreq_fu_140_p3 = arpTableReplay_V_TVALID_int_regslice;

assign trunc_ln674_1_fu_261_p1 = no_ip_header_out_dout[399:0];

assign trunc_ln674_fu_327_p1 = ip_header_checksum_dout[399:0];

assign zext_ln121_fu_453_p1 = ap_phi_mux_storemerge1_i_phi_fu_181_p4;

endmodule //ethernet_header_inserter_handle_output
