MAKEFILES = $(shell find . -mindepth 2 -name Makefile)
ROOT_DIR = ${PWD}
OUT_DIR = $(ROOT_DIR)/out
# ALL_TARGETS

# test:
# 	@echo $(MAKEFILES)

include $(MAKEFILES)

all: $(ALL_BINS)

# run_unoptimized: run_rust_noopt run_c_noopt

# asm: $(RUST_BIN)_asm $(C_BIN)_asm

dirs:
	@echo "Creating dir $(OUT_DIR)"
	@mkdir -p $(OUT_DIR)
