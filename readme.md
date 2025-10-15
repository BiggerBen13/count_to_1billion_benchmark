# What this is

I threw this example together because [this short](https://www.youtube.com/shorts/elehXpAvAUo) made me really angry.
Whilst I am a fan of the rust programming language, boldly claiming that it is superior to any other programming language based on a "*benchmark*" is stupid.
The code shown in the video for the cpp code and the rust code isn't even equivalent.
To make a point I decided to actually compare both languages in the point shown, I've done my best to make the code in both versions as equivalent as possible.
I've used c instead of cpp but in this case (although definitely not all cases) there should be minimal differences.
Also note that this project doesn't use cargo as it isn't actually required to compile rust code this simple and would've just inflated the size of the repo.

# Running
To run both tests simply do `make run`

To run just one of the languages do either `make run_rust` or `make run_c`

# Conclusion

If compiling optimized code, both languages tend to perform very well, almost too well, this is because both compilers are smart enough to recognize that the loop is only being used to produce the same number always.
Therefore they just replace the function call with a constant. The reason the timer for the rust-code looks like it's performing better is because the `std::time` timers are more percise than the clock function avaliable in the c-library.
I could probably use cpp for more accurate timers in a c-like language but I can't be bothered.

If however you turn off optimizations, the c code runs faster than the rust code by about 50%.

I hope you took something away from this repo if just that people like talk without having any clue what they're talking about.
