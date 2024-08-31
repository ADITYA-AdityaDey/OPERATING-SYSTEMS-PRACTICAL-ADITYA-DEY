#include <unistd.h>
#include <fcntl.h>

int main() {
	int r,wfd;
	char buf[50];
	r=read(0,buf,20);
	wfd=open("demoFileforwrite.txt",O_WRONLY|O_APPEND);
	write(wfd,buf,r);
}
