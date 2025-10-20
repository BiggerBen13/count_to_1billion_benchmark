# LANG := fortran
FORTRAN_SRC_FILE := main.f90

FORTRAN_DIR := $(ROOT_DIR)/fortran
FORTRAN_BIN := $(OUT_DIR)/out_fortran
FORTRAN_SRC := $(FORTRAN_DIR)/$(FORTRAN_SRC_FILE)

run_fortran: $(FORTRAN_BIN)
	$^

$(FORTRAN_BIN): $(FORTRAN_SRC)
	gfortran $^ -O3 -g0 -o $@
	
run_fortran_noopt: $(FORTRAN_BIN)_noopt
	$^
	
$(FORTRAN_BIN)_noopt: $(FORTRAN_SRC)
	gfortran $^ -O0 -g0 -o $@

$(FORTRAN_BIN)_asm: $(FORTRAN_SRC)
	gfortran $^ -o -S $@

ALL_BINS += $(FORTRAN_BIN)
ALL_BINS += $(FORTRAN_BIN)_noopt
ALL_ASM += $(FORTRAN_BIN)_asm
