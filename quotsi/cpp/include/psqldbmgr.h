#pragma once
#include <iostream>
#include <string>
#include <vector>
#include <pqxx/pqxx>

#define SHOWPSQLERROR { \
	std::cerr << "#SqlException in " << __FILE__ << ", func: " << __FUNCTION__;\
	std::cerr << ", line: "<< __LINE__;\
	std::cerr << "\n#Err: " << e.what() << "\n";\
}

class DBManager {
	private:
		std::string connString;
		pqxx::connection *conn;
	public:
		explicit DBManager(std::string connStr)
			: connString(connStr) {}
		~DBManager();
		int makeConnection();
		void closeConnection();
		void exeQuery(std::string& qry, std::vector<std::string>& headers);
};
