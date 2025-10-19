#!/usr/bin/env lua

local function count_to_billion()
    local i = 0
    while (i < 1000000000) do
        i = i + 1
    end
    return i
end

local function main()
    local start_time = os.clock()

    local count = count_to_billion()

    local end_time = os.clock()
    local duration = end_time - start_time
    print(string.format("Looping %d time in lua took: %f", count, duration))
end

main()
