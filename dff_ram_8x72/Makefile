export CORE_ROOT=/home/arham/Practice/dff_ram_8x72

all: icarus

icarus: icarus_compile
	vvp $(CORE_ROOT)/temp/ram.output

icarus_compile:
	mkdir -p temp
	iverilog -f flist -o $(CORE_ROOT)/temp/ram.output

clean:
	rm -rf temp