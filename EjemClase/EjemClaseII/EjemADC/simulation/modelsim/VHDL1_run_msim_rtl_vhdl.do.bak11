transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mpaur/OneDrive/ITBA/Materias/DSP y FPGA/FPGA/EjemClase/EjemClaseII/EjemADC/VHDL1.vhd}
vcom -93 -work work {C:/Users/mpaur/OneDrive/ITBA/Materias/DSP y FPGA/FPGA/EjemClase/EjemClaseII/EjemADC/adc.vhd}

vcom -93 -work work {C:/Users/mpaur/OneDrive/ITBA/Materias/DSP y FPGA/FPGA/EjemClase/EjemClaseII/EjemADC/TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  TB

add wave *
view structure
view signals
run 400 us
