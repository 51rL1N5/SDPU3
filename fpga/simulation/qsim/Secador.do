onerror {quit -f}
vlib work
vlog -work work Secador.vo
vlog -work work Secador.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Secador_vlg_vec_tst
vcd file -direction Secador.msim.vcd
vcd add -internal Secador_vlg_vec_tst/*
vcd add -internal Secador_vlg_vec_tst/i1/*
add wave /*
run -all
