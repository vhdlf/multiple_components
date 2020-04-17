transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Documents/multiple_components/top.vhd}
vcom -93 -work work {D:/Documents/multiple_components/notgate.vhd}
vcom -93 -work work {D:/Documents/multiple_components/andgate.vhd}
vcom -93 -work work {D:/Documents/multiple_components/norgate.vhd}

vcom -93 -work work {D:/Documents/multiple_components/simulation/modelsim/top.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
