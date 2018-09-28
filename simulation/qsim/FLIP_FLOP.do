onerror {quit -f}
vlib work
vlog -work work FLIP_FLOP.vo
vlog -work work FLIP_FLOP.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FLIP_FLOP_vlg_vec_tst
vcd file -direction FLIP_FLOP.msim.vcd
vcd add -internal FLIP_FLOP_vlg_vec_tst/*
vcd add -internal FLIP_FLOP_vlg_vec_tst/i1/*
add wave /*
run -all
