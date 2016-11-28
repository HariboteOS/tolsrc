#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int main(int argc, const char **argv)
{
	const char **a = &argv[1], *tbl = "*_", *t;
	int i, j, k = 0;
	char buf[1024];
	if (argc >= 4 && strlen(a[0]) == 2) {
		tbl = a[0];
		a = &argv[2];
		argc--;
	}
	if (argc < 3) {
		fprintf(stderr, "usage>multicmd [*_] escaped-cmd word1 [word2] ...\n");
	}
	t = a[0];
	argc--;
	for (i = 1; i < argc; i++) {
		for (k = j = 0; j < strlen(t); j++) {
			if (t[j] == tbl[1])
				buf[k++] = ' ';
			else if (t[j] == tbl[0]) {
				strcpy(&buf[k], a[i]);
				k += strlen(a[i]);
			} else
				buf[k++] = t[j];
		}
		buf[k] = '\0';
		k = system(buf);
		if (k != 0) break;
	}
	return k;
}
