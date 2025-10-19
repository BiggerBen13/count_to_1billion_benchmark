# LANG := lua
LUA_SRC_FILE := main.lua

LUA_DIR := $(ROOT_DIR)/lua
LUA_BIN := $(OUT_DIR)/out_lua.lua
LUA_SRC := $(LUA_DIR)/$(LUA_SRC_FILE)

run_lua: $(LUA_BIN)
	$^

$(LUA_BIN): $(LUA_SRC)
	cp $^ $@
	chmod +x $@
	
# run_lua_noopt: $(LUA_BIN)_noopt
# 	# Unoptimized run command
#
# $(LUA_BIN)_noopt: $(LUA_SRC)
# 	# Unoptimized compile command
#
# $(LUA_BIN)_asm: $(LUA_SRC)
# 	# Assembly generation command

ALL_BINS += $(LUA_BIN)
# ALL_BINS += $(LUA_BIN)_noopt
