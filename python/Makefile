# LANG = python
PYTHON_SRC_FILE := main.py

PYTHON_DIR := $(ROOT_DIR)/python
PYTHON_BIN := $(OUT_DIR)/out_python.py
PYTHON_SRC := $(PYTHON_DIR)/$(PYTHON_SRC_FILE)

run_python: $(PYTHON_BIN)
	$^

$(PYTHON_BIN): $(PYTHON_SRC)
	cp $^ $@
	chmod +x $@

# run_python_noopt: $(PYTHON_BIN)_noopt
# 	# Unoptimized run command
#
# $(PYTHON_BIN)_noopt: $(PYTHON_SRC)
# 	# Unoptimized compile command
#
# $(PYTHON_BIN)_asm: $(PYTHON_SRC)
# 	# Assembly generation command

ALL_BINS += $(PYTHON_BIN)
