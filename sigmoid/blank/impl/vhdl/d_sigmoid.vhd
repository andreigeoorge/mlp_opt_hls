-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity d_sigmoid is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    layer_input_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    layer_input_ce0 : OUT STD_LOGIC;
    layer_input_we0 : OUT STD_LOGIC;
    layer_input_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    layer_input_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    layer_input_address1 : OUT STD_LOGIC_VECTOR (2 downto 0);
    layer_input_ce1 : OUT STD_LOGIC;
    layer_input_we1 : OUT STD_LOGIC;
    layer_input_d1 : OUT STD_LOGIC_VECTOR (63 downto 0);
    layer_input_q1 : IN STD_LOGIC_VECTOR (63 downto 0);
    layer_output_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    layer_output_ce0 : OUT STD_LOGIC;
    layer_output_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    layer_derivative_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    layer_derivative_ce0 : OUT STD_LOGIC;
    layer_derivative_we0 : OUT STD_LOGIC;
    layer_derivative_d0 : OUT STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of d_sigmoid is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "d_sigmoid,hls_ip_2019_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-3,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.253000,HLS_SYN_LAT=97,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=14,HLS_SYN_FF=958,HLS_SYN_LUT=1816,HLS_VERSION=2019_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (12 downto 0) := "0000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (12 downto 0) := "0000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (12 downto 0) := "0000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (12 downto 0) := "0000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (12 downto 0) := "0000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (12 downto 0) := "0000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (12 downto 0) := "0001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (12 downto 0) := "0010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (12 downto 0) := "0100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (12 downto 0) := "1000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv64_3FF0000000000000 : STD_LOGIC_VECTOR (63 downto 0) := "0011111111110000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_fu_84_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_103 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln11_fu_78_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal layer_output_load_reg_113 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_fu_68_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_reg_119 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal grp_fu_74_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_reg_124 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal i_0_reg_56 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal zext_ln12_fu_90_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln12_1_fu_95_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (12 downto 0);

    component d_sigmoid_dsub_64bkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component d_sigmoid_dmul_64cud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    d_sigmoid_dsub_64bkb_U1 : component d_sigmoid_dsub_64bkb
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => ap_const_lv64_3FF0000000000000,
        din1 => layer_output_q0,
        ce => ap_const_logic_1,
        dout => grp_fu_68_p2);

    d_sigmoid_dmul_64cud_U2 : component d_sigmoid_dmul_64cud
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => layer_output_load_reg_113,
        din1 => tmp_reg_119,
        ce => ap_const_logic_1,
        dout => grp_fu_74_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_0_reg_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
                i_0_reg_56 <= i_reg_103;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_56 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_103 <= i_fu_84_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                layer_output_load_reg_113 <= layer_output_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then
                tmp_1_reg_124 <= grp_fu_74_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                tmp_reg_119 <= grp_fu_68_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln11_fu_78_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln11_fu_78_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln11_fu_78_p2)
    begin
        if (((icmp_ln11_fu_78_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln11_fu_78_p2)
    begin
        if (((icmp_ln11_fu_78_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_84_p2 <= std_logic_vector(unsigned(i_0_reg_56) + unsigned(ap_const_lv4_1));
    icmp_ln11_fu_78_p2 <= "1" when (i_0_reg_56 = ap_const_lv4_8) else "0";
    layer_derivative_address0 <= zext_ln12_1_fu_95_p1(3 - 1 downto 0);

    layer_derivative_ce0_assign_proc : process(ap_CS_fsm_state13)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            layer_derivative_ce0 <= ap_const_logic_1;
        else 
            layer_derivative_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    layer_derivative_d0 <= tmp_1_reg_124;

    layer_derivative_we0_assign_proc : process(ap_CS_fsm_state13)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            layer_derivative_we0 <= ap_const_logic_1;
        else 
            layer_derivative_we0 <= ap_const_logic_0;
        end if; 
    end process;

    layer_input_address0 <= ap_const_lv3_0;
    layer_input_address1 <= ap_const_lv3_0;
    layer_input_ce0 <= ap_const_logic_0;
    layer_input_ce1 <= ap_const_logic_0;
    layer_input_d0 <= ap_const_lv64_0;
    layer_input_d1 <= ap_const_lv64_0;
    layer_input_we0 <= ap_const_logic_0;
    layer_input_we1 <= ap_const_logic_0;
    layer_output_address0 <= zext_ln12_fu_90_p1(3 - 1 downto 0);

    layer_output_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            layer_output_ce0 <= ap_const_logic_1;
        else 
            layer_output_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln12_1_fu_95_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_56),64));
    zext_ln12_fu_90_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_fu_84_p2),64));
end behav;
