transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mpaurabe/Desktop/ITBA/FPGA/EjemClaseII/EjemTipos/VHDL1.vhd}
vcom -93 -work work {C:/Users/mpaurabe/Desktop/ITBA/FPGA/EjemClaseII/EjemTipos/compuerta.vhd}

vcom -93 -work work {C:/Users/mpaurabe/Desktop/ITBA/FPGA/EjemClaseII/EjemTipos/TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  TB

add wave *
view structure
view signals
run 400 ns
