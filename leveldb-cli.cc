#include "leveldb/db.h"
#include <iostream>

int main(int argc, char** argv) {

	leveldb::DB* db;
	leveldb::Options options;
	std::string value;

	options.create_if_missing = true;
	leveldb::DB::Open(options, "/tmp/testdb", &db);
	
  	// db->Put(leveldb::WriteOptions(), "hello", "world");
	db->Get(leveldb::ReadOptions(), "hello", &value);	

	std::cout << value << "\n";

	delete db;
	return 0;
}
