# Adding your own language
To start adding your own language you start by executing `./add_lang.sh <your-langauge>`.
This should create a new folder with the name of your language containing a `Makefile`.
This makefile should contain the following rules by default:

```Makefile
run_%LLANG%: $(%ULANG%_BIN)

$(%ULANG%_BIN): $(%ULANG%_SRC)
	
run_%LLANG%_noopt: $(%ULANG%_BIN)_noopt
	
$(%ULANG%_BIN)_noopt: $(%ULANG%_SRC)

$(%ULANG%_BIN)_asm: $(%ULANG%_SRC)
```

If your language doesn't support compilation you should use the `$(LANG_BIN)` rule to copy your file to the out directory and adding execute permissions.
The run rule simply runs your langauge.
If your language supports compiling with no optimization enabled, please consider filling in the `run_lang_unoptimized` rule and the `lang_bin_unoptimized`.
If it supports assembly output consider adding it so people who are interested can look at it. For the assembly you can also add a `out_lang_noopt_asm` rule.

Your programm should, if possible feature in language timing because those are way more accurate than out of language timing.
Please output the in the following format: `Looping <return-value-of-loop-function> times in <your-language> took: <function-execution-time-in-secs>\n`.
Also, if possible please put the looping logic into a separate function definition which outputs a 64bit unsigned integer created by incrementing it in the loop.
