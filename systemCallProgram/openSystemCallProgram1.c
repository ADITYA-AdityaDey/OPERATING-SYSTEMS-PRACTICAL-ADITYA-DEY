#include <unistd.h>
#include <fcntl.h>

int main() {
	int r,rfd,wfd;

	char buf[50];

	rfd=open("demoFileforread.txt",O_RDONLY);
	r=read(rfd,buf,3);
	wfd=open("demoFileforwrite.txt",O_CREAT|O_WRONLY);
	write(wfd,buf,r);
}
