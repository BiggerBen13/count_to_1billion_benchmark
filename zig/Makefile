# LANG := <INSERT LANGUAGE NAME HERE> 
ZIG_SRC_FILE := main.zig

ZIG_DIR := $(ROOT_DIR)/zig
ZIG_BIN := $(OUT_DIR)/out_zig
ZIG_SRC := $(ZIG_DIR)/$(ZIG_SRC_FILE)

run_zig: $(ZIG_BIN)
	$^

$(ZIG_BIN): $(ZIG_SRC)
	zig build-exe $^ -O ReleaseFast -femit-bin=$@

run_zig_noopt: $(ZIG_BIN)_noopt
	$^
		
$(ZIG_BIN)_noopt: $(ZIG_SRC)
	zig build-exe $^ -O Debug -femit-bin=$@

$(ZIG_BIN)_asm: $(ZIG_SRC)
	zig build-exe $^ -O Debug -femit-asm=$@ -fno-emit-bin

ALL_ASM += $(ZIG_BIN)_asm
ALL_BINS += $(ZIG_BIN)
ALL_BINS += $(ZIG_BIN)_noopt
