#include <chrono>
#include <iostream>
#include <cinttypes>
#include <ratio>

uint64_t count_to_billion()
{
	uint64_t i = 0;
	while (i < 1000000000)
		i++;
	return i;
}

int main(int argc, char *argv[])
{
        auto t1 = std::chrono::high_resolution_clock::now();

        uint64_t count = count_to_billion();

        auto t2 = std::chrono::high_resolution_clock::now();

        std::chrono::duration<double, std::nano> duration = (t2-t1);

        std::cout << "Looping " << count << " times in cpp took: " << duration.count() << std::endl;
}
