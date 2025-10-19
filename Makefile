MAKEFILES = $(shell find . -mindepth 2 -name Makefile)
ROOT_DIR = ${PWD}
OUT_DIR = $(ROOT_DIR)/out
LANGUAGES = cpp rust python c

# test:
# 	@echo $(MAKEFILES)

include $(MAKEFILES)

# run_unoptimized: run_rust_noopt run_c_noopt

# asm: $(RUST_BIN)_asm $(C_BIN)_asm

dirs:
	@echo "Creating dir $(OUT_DIR)"
	@mkdir -p $(OUT_DIR)
