# LANG := haskell
HS_SRC_FILE := main.hs

HS_DIR := $(ROOT_DIR)/haskell
HS_BIN := $(OUT_DIR)/out_haskell
HS_SRC := $(HS_DIR)/$(HS_SRC_FILE)

run_haskell: $(HS_BIN)
	$^

$(HS_BIN): $(HS_SRC)
	ghc -dynamic -O2 $^ -o $@ -odir $(OUT_DIR) -hidir $(OUT_DIR)

run_haskell_noopt: $(HS_BIN)_noopt
	$^

$(HS_BIN)_noopt: $(HS_SRC)
	ghc -dynamic -O0 $^ -o $@ -odir $(OUT_DIR) -hidir $(OUT_DIR)

$(HS_BIN)_asm: $(HS_SRC)
	ghc -dynamic -S $^ -o $@.a -hidir $(OUT_DIR)

ALL_BINS += $(HS_BIN)
ALL_BINS += $(HS_BIN)_noopt
ALL_ASM += $(HS_BIN)_asm
