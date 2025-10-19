# LANG = CPP
CPP_SRC_FILE := main.cpp

CPP_DIR := $(ROOT_DIR)/cpp
CPP_BIN := $(OUT_DIR)/out_cpp
CPP_SRC := $(CPP_DIR)/$(CPP_SRC_FILE)

run_cpp: $(CPP_BIN)
	$^

$(CPP_BIN): $(CPP_SRC)
	$(CXX) -O3 $^ -o $@

run_cpp_noopt: $(CPP_BIN)_noopt
	$^
	
$(CPP_BIN)_noopt: $(CPP_SRC)
	$(CXX) -O0 $^ -o $@

$(CPP_BIN)_asm: $(CPP_SRC)
	$(CXX) -O0 -g0 -S $^ -o $@.a
