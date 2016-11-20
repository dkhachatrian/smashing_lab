#include <unistd.h> //as per POSIX, unlink is is unistd
#include <stdio.h>

int main(void)
{
	// attempt unlinking 'target.txt' from current directory
	int result = unlink("target.txt");
	printf("Result of unlinking attempt: %d\n", result);
	return result;
}
