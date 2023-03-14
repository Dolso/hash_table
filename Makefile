static:
	gcc -Wall -g -o build/hash_table.o -c src/hash_table.c
	gcc -Wall -g -o build/prime.o -c src/prime.c
	ar -cr build/libhtdolso.a build/prime.o build/hash_table.o
	rm build/*.o
dynamic:
	gcc -Wall -g -fpic -o build/hash_table.o -c src/hash_table.c
	gcc -Wall -g -fpic -o build/prime.o -c src/prime.c
	gcc -shared -fpic -o build/libhtdolso.so build/prime.o build/hash_table.o
	rm build/*.o
test:
	gcc -Wall -g -o build/hash_table.o -c src/hash_table.c
	gcc -Wall -g -o build/prime.o -c src/prime.c
	gcc -Wall -g src/main.c build/prime.o build/hash_table.o -lm -o build/main
	rm build/*.o