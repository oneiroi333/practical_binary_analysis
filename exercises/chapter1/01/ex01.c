#include <stdio.h>

void
print_sequence(int start, int end)
{
	int i;

	for (i = start; i <= end; ++i) {
		printf("%i\n", i);
	}
}

void
print_hello_world(void)
{
	printf("Hello World!\n");
}

int
get_answer(void)
{
	return 42;
}


int
main(void)
{
	print_hello_world();
	print_sequence(12, 15);
	printf("Answer to the Ultimate Question of Life, The Universe, and Everything: %i\n", get_answer());

	return 0;
}
