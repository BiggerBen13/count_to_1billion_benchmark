#!/usr/bin/env python3

import time

def count_to_billion() -> int:
    i: int = 0
    while (i < 1000000000):
        i += 1
    return i

start = time.time()
loops: int = count_to_billion()
duration = time.time() - start

print("Looping", loops, "times in python took:", duration)
