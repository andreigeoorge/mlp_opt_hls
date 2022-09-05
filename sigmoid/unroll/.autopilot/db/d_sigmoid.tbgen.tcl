set moduleName d_sigmoid
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {d_sigmoid}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer_input double 64 unused {array 8 { } 0 1 }  }
	{ layer_output double 64 regular {array 8 { 1 1 } 1 1 }  }
	{ layer_derivative double 64 regular {array 8 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "layer_input", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "layer_input","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} , 
 	{ "Name" : "layer_output", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "layer_output","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} , 
 	{ "Name" : "layer_derivative", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "layer_derivative","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer_input_address0 sc_out sc_lv 3 signal 0 } 
	{ layer_input_ce0 sc_out sc_logic 1 signal 0 } 
	{ layer_input_we0 sc_out sc_logic 1 signal 0 } 
	{ layer_input_d0 sc_out sc_lv 64 signal 0 } 
	{ layer_input_q0 sc_in sc_lv 64 signal 0 } 
	{ layer_input_address1 sc_out sc_lv 3 signal 0 } 
	{ layer_input_ce1 sc_out sc_logic 1 signal 0 } 
	{ layer_input_we1 sc_out sc_logic 1 signal 0 } 
	{ layer_input_d1 sc_out sc_lv 64 signal 0 } 
	{ layer_input_q1 sc_in sc_lv 64 signal 0 } 
	{ layer_output_address0 sc_out sc_lv 3 signal 1 } 
	{ layer_output_ce0 sc_out sc_logic 1 signal 1 } 
	{ layer_output_q0 sc_in sc_lv 64 signal 1 } 
	{ layer_output_address1 sc_out sc_lv 3 signal 1 } 
	{ layer_output_ce1 sc_out sc_logic 1 signal 1 } 
	{ layer_output_q1 sc_in sc_lv 64 signal 1 } 
	{ layer_derivative_address0 sc_out sc_lv 3 signal 2 } 
	{ layer_derivative_ce0 sc_out sc_logic 1 signal 2 } 
	{ layer_derivative_we0 sc_out sc_logic 1 signal 2 } 
	{ layer_derivative_d0 sc_out sc_lv 64 signal 2 } 
	{ layer_derivative_address1 sc_out sc_lv 3 signal 2 } 
	{ layer_derivative_ce1 sc_out sc_logic 1 signal 2 } 
	{ layer_derivative_we1 sc_out sc_logic 1 signal 2 } 
	{ layer_derivative_d1 sc_out sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer_input_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer_input", "role": "address0" }} , 
 	{ "name": "layer_input_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_input", "role": "ce0" }} , 
 	{ "name": "layer_input_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_input", "role": "we0" }} , 
 	{ "name": "layer_input_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_input", "role": "d0" }} , 
 	{ "name": "layer_input_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_input", "role": "q0" }} , 
 	{ "name": "layer_input_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer_input", "role": "address1" }} , 
 	{ "name": "layer_input_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_input", "role": "ce1" }} , 
 	{ "name": "layer_input_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_input", "role": "we1" }} , 
 	{ "name": "layer_input_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_input", "role": "d1" }} , 
 	{ "name": "layer_input_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_input", "role": "q1" }} , 
 	{ "name": "layer_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer_output", "role": "address0" }} , 
 	{ "name": "layer_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_output", "role": "ce0" }} , 
 	{ "name": "layer_output_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_output", "role": "q0" }} , 
 	{ "name": "layer_output_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer_output", "role": "address1" }} , 
 	{ "name": "layer_output_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_output", "role": "ce1" }} , 
 	{ "name": "layer_output_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_output", "role": "q1" }} , 
 	{ "name": "layer_derivative_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer_derivative", "role": "address0" }} , 
 	{ "name": "layer_derivative_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_derivative", "role": "ce0" }} , 
 	{ "name": "layer_derivative_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_derivative", "role": "we0" }} , 
 	{ "name": "layer_derivative_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_derivative", "role": "d0" }} , 
 	{ "name": "layer_derivative_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer_derivative", "role": "address1" }} , 
 	{ "name": "layer_derivative_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_derivative", "role": "ce1" }} , 
 	{ "name": "layer_derivative_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_derivative", "role": "we1" }} , 
 	{ "name": "layer_derivative_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_derivative", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "d_sigmoid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "layer_input", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_output", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer_derivative", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_sigmoid_dsub_64bkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_sigmoid_dsub_64bkb_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_sigmoid_dmul_64cud_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_sigmoid_dmul_64cud_U4", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	d_sigmoid {
		layer_input {Type X LastRead -1 FirstWrite -1}
		layer_output {Type I LastRead 4 FirstWrite -1}
		layer_derivative {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "14"}
	, {"Name" : "Interval", "Min" : "15", "Max" : "15"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	layer_input { ap_memory {  { layer_input_address0 mem_address 1 3 }  { layer_input_ce0 mem_ce 1 1 }  { layer_input_we0 mem_we 1 1 }  { layer_input_d0 mem_din 1 64 }  { layer_input_q0 mem_dout 0 64 }  { layer_input_address1 MemPortADDR2 1 3 }  { layer_input_ce1 MemPortCE2 1 1 }  { layer_input_we1 MemPortWE2 1 1 }  { layer_input_d1 MemPortDIN2 1 64 }  { layer_input_q1 MemPortDOUT2 0 64 } } }
	layer_output { ap_memory {  { layer_output_address0 mem_address 1 3 }  { layer_output_ce0 mem_ce 1 1 }  { layer_output_q0 mem_dout 0 64 }  { layer_output_address1 MemPortADDR2 1 3 }  { layer_output_ce1 MemPortCE2 1 1 }  { layer_output_q1 MemPortDOUT2 0 64 } } }
	layer_derivative { ap_memory {  { layer_derivative_address0 mem_address 1 3 }  { layer_derivative_ce0 mem_ce 1 1 }  { layer_derivative_we0 mem_we 1 1 }  { layer_derivative_d0 mem_din 1 64 }  { layer_derivative_address1 MemPortADDR2 1 3 }  { layer_derivative_ce1 MemPortCE2 1 1 }  { layer_derivative_we1 MemPortWE2 1 1 }  { layer_derivative_d1 MemPortDIN2 1 64 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
