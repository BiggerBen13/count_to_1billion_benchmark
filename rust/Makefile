# LANG := rust
RUST_SRC_FILE := main.rs

RUST_DIR := $(ROOT_DIR)/rust
RUST_BIN := $(OUT_DIR)/out_rust
RUST_SRC := $(RUST_DIR)/$(RUST_SRC_FILE)

run_rust: $(RUST_BIN)
	$^

$(RUST_BIN): $(RUST_SRC)
	rustc -O $^ -o $@

run_rust_noopt: $(RUST_BIN)_noopt
	$^

$(RUST_BIN)_noopt: $(RUST_SRC)
	rustc -C opt-level=0 -C debuginfo=0 $^ -o $@

$(RUST_BIN)_asm: $(RUST_SRC)
	rustc main.rs -C opt-level=0 -C debuginfo=0 --emit=asm -Z verbose-asm=yes -o $@.a

ALL_BINS += $(RUST_BIN)
ALL_BINS += $(RUST_BIN)_noopt
