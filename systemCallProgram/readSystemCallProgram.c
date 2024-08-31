#include <unistd.h>

int main() {
	int r;
	char buf[30];
	r=read(0,buf,30);
	write(1,buf,r);
}
