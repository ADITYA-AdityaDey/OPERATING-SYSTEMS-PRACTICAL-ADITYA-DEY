#include <unistd.h>
#include <stdio.h>

int main() {
	int r;
	r=write(1,"SystemCall\n",11);
	printf("Value of r is %d",r);
}
