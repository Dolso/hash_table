#ifndef HASH_TABLE_H_SENTRY

#define HASH_TABLE_H_SENTRY

typedef struct {
	char* key;
	char* value;
} ht_item;

typedef struct {
	int size;
	int base_size;
	int count;
	ht_item** items;
} ht_hash_table;

ht_hash_table* ht_new();
void ht_insert(ht_hash_table* ht, const char* key, const char* value);
char* ht_search(ht_hash_table* ht, const char* key);
void ht_delete(ht_hash_table* ht, const char* key);
void ht_del_hash_table(ht_hash_table* ht);

#endif
