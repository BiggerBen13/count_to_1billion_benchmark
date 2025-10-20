# LANGUAGE = C

C_SRC_FILE := main.c

C_DIR := $(ROOT_DIR)/c
C_BIN := $(OUT_DIR)/out_c
C_SRC := $(C_DIR)/$(C_SRC_FILE)

run_c: $(C_BIN)
	$^

$(C_BIN): $(C_SRC)
	$(CC) -O3 $^ -o $@

run_c_noopt: $(C_BIN)_noopt
	$^
	
$(C_BIN)_noopt: $(C_SRC)
	$(CC) -O0 $^ -o $@

$(C_BIN)_asm: $(C_SRC)
	$(CC) -O0 -S $^ -o $@.a

ALL_BINS += $(C_BIN)
ALL_BINS += $(C_BIN)_noopt
ALL_ASM += $(C_BIN)_asm
