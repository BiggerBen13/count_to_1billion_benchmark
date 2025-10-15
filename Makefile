RUST_BIN = out_rust
C_BIN = out_c

run: run_rust run_c

run_c: $(C_BIN)
	./$(C_BIN)

run_rust: $(RUST_BIN)
	./$(RUST_BIN)

$(C_BIN): main.c
	$(CC) -O3 main.c -o $@

$(RUST_BIN): main.rs
	rustc -O main.rs -o $@

run_unoptimized: run_rust_noopt run_c_noopt

run_c_noopt: $(C_BIN)_noopt
	./$(C_BIN)_noopt

run_rust_noopt: $(RUST_BIN)_noopt
	./$(RUST_BIN)_noopt


$(C_BIN)_noopt: main.c
	$(CC) -O0 main.c -o $@

$(RUST_BIN)_noopt: main.rs
	rustc -C opt-level=0 main.rs -o $@

