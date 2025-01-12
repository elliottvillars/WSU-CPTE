onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+S_ADDER -L xil_defaultlib -L xlslice_v1_0_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.S_ADDER xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {S_ADDER.udo}

run -all

endsim

quit -force
