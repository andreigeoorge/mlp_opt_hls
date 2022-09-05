// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _d_sigmoid_HH_
#define _d_sigmoid_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "d_sigmoid_dsub_64bkb.h"
#include "d_sigmoid_dmul_64cud.h"

namespace ap_rtl {

struct d_sigmoid : public sc_module {
    // Port declarations 23
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<3> > layer_input_address0;
    sc_out< sc_logic > layer_input_ce0;
    sc_out< sc_logic > layer_input_we0;
    sc_out< sc_lv<64> > layer_input_d0;
    sc_in< sc_lv<64> > layer_input_q0;
    sc_out< sc_lv<3> > layer_input_address1;
    sc_out< sc_logic > layer_input_ce1;
    sc_out< sc_logic > layer_input_we1;
    sc_out< sc_lv<64> > layer_input_d1;
    sc_in< sc_lv<64> > layer_input_q1;
    sc_out< sc_lv<3> > layer_output_address0;
    sc_out< sc_logic > layer_output_ce0;
    sc_in< sc_lv<64> > layer_output_q0;
    sc_out< sc_lv<3> > layer_derivative_address0;
    sc_out< sc_logic > layer_derivative_ce0;
    sc_out< sc_logic > layer_derivative_we0;
    sc_out< sc_lv<64> > layer_derivative_d0;
    sc_signal< sc_logic > ap_var_for_const1;
    sc_signal< sc_lv<64> > ap_var_for_const0;


    // Module declarations
    d_sigmoid(sc_module_name name);
    SC_HAS_PROCESS(d_sigmoid);

    ~d_sigmoid();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    d_sigmoid_dsub_64bkb<1,5,64,64,64>* d_sigmoid_dsub_64bkb_U1;
    d_sigmoid_dmul_64cud<1,5,64,64,64>* d_sigmoid_dmul_64cud_U2;
    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > i_fu_84_p2;
    sc_signal< sc_lv<4> > i_reg_103;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln11_fu_78_p2;
    sc_signal< sc_lv<64> > layer_output_load_reg_113;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > grp_fu_68_p2;
    sc_signal< sc_lv<64> > tmp_reg_119;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<64> > grp_fu_74_p2;
    sc_signal< sc_lv<64> > tmp_1_reg_124;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<4> > i_0_reg_56;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<64> > zext_ln12_fu_90_p1;
    sc_signal< sc_lv<64> > zext_ln12_1_fu_95_p1;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<13> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<13> ap_ST_fsm_state1;
    static const sc_lv<13> ap_ST_fsm_state2;
    static const sc_lv<13> ap_ST_fsm_state3;
    static const sc_lv<13> ap_ST_fsm_state4;
    static const sc_lv<13> ap_ST_fsm_state5;
    static const sc_lv<13> ap_ST_fsm_state6;
    static const sc_lv<13> ap_ST_fsm_state7;
    static const sc_lv<13> ap_ST_fsm_state8;
    static const sc_lv<13> ap_ST_fsm_state9;
    static const sc_lv<13> ap_ST_fsm_state10;
    static const sc_lv<13> ap_ST_fsm_state11;
    static const sc_lv<13> ap_ST_fsm_state12;
    static const sc_lv<13> ap_ST_fsm_state13;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<64> ap_const_lv64_3FF0000000000000;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_i_fu_84_p2();
    void thread_icmp_ln11_fu_78_p2();
    void thread_layer_derivative_address0();
    void thread_layer_derivative_ce0();
    void thread_layer_derivative_d0();
    void thread_layer_derivative_we0();
    void thread_layer_input_address0();
    void thread_layer_input_address1();
    void thread_layer_input_ce0();
    void thread_layer_input_ce1();
    void thread_layer_input_d0();
    void thread_layer_input_d1();
    void thread_layer_input_we0();
    void thread_layer_input_we1();
    void thread_layer_output_address0();
    void thread_layer_output_ce0();
    void thread_zext_ln12_1_fu_95_p1();
    void thread_zext_ln12_fu_90_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
