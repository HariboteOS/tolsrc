#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void loadfile(char *path, char *buf, int siz)
{
	FILE *fp = fopen(path, "rb");
	if (fp == NULL) {
		fprintf(stderr, "fdimge2iso: fopen error: %s\n", path);
		exit(1);
	}
	fread(buf, 1, siz, fp);
	return;
}

int main(int argc, char **argv)
{
	char *buf = malloc(0x1c0000);
	int i;
	FILE *fp;
	if (argc < 4) {
		puts("usage>fdimg2iso iso-header fdimage iso-file");
		return 0;
	}
	for (i = 0; i < 0x1c0000; i++)
		buf[i] = '\0';
	loadfile(argv[1], &buf[0x8000], 0x5000);
	loadfile(argv[2], &buf[0xd000], 0x168000); /* 1440KB */

	fp = fopen(argv[3], "wb");
	if (fp == NULL) {
		fprintf(stderr, "fdimge2iso: fopen error: %s\n", argv[3]);
		return 1;
	}
	fwrite(buf, 1, 0x1c0000, fp);
	return 0;
}
