#include <stdio.h>
#include <stdint.h>
#include <time.h>

uint64_t count_to_billion()
{
	long i = 0;
	while (i < 1000000000) i += 1;
	return i;
}

int main(int argc, char *argv[argc + 1])
{
	clock_t t = clock();

	uint64_t count = count_to_billion();

	t = clock() - t;

	double duration = ((double)t) / CLOCKS_PER_SEC;
	printf("Looping %llu times in c took: %f", count, duration);
}
