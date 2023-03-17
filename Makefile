static: src/hash_table.c src/prime.c
	gcc -Wall -g -o build/hash_table.o -c src/hash_table.c
	gcc -Wall -g -o build/prime.o -c src/prime.c
	gcc -Wall -g -o build/hash_calculation.o -c src/hash_calculation.c
	ar -cr build/libhtdolso.a build/prime.o build/hash_table.o build/hash_calculation.o
	rm build/*.o
dynamic: src/hash_table.c src/prime.c
	gcc -Wall -g -fpic -o build/hash_table.o -c src/hash_table.c
	gcc -Wall -g -fpic -o build/prime.o -c src/prime.c
	gcc -Wall -g -fpic -o build/hash_calculation.o -c src/hash_calculation.c
	gcc -shared -fpic -o build/libhtdolso.so build/prime.o build/hash_table.o build/hash_calculation.o
	rm build/*.o
