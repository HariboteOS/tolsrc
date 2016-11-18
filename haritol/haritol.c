#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define COPY_BUF_SIZE	4096 * 1024

int main(int argc, char *argv[])
{
	int i;
	if(argc < 2){
		printf("%s remove files ...\n", argv[0]);
		printf("%s concat outname srcfiles ...\n", argv[0]);
		return 0;
	}
	if(strcmp(argv[1], "remove") == 0){
		for(i = 2; i < argc; i++){
			if(remove(argv[i])){
				printf("Failed to remove: %s\n", argv[i]);
			}
		}
	} else if(strcmp(argv[1], "concat") == 0){
		FILE *dstfp = fopen(argv[2], "wb");
		void *cbuf = malloc(COPY_BUF_SIZE);
		FILE *srcfp;
		int count;
		if(!dstfp){
			puts("File open error.");
			return 1;
		}
		for(i = 3; i < argc; i++){
			srcfp = fopen(argv[i], "rb");
			if(!srcfp){
				puts("File open error.");
				return 1;
			}
			count = 1;
			while(count){
				count = fread(cbuf, 1, COPY_BUF_SIZE, srcfp);
				fwrite(cbuf, 1, count, dstfp);
			}
			fclose(srcfp);
		}
		free(cbuf);
		fclose(dstfp);
	} else{
		printf("Unknown command: %s\n", argv[1]);
		return 1;
	}
	return 0;
}
