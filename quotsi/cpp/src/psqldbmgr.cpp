#include "psqldbmgr.h"

DBManager::~DBManager() {
	closeConnection();
}

int DBManager::makeConnection() {
	try {
		conn = new pqxx::connection(connString.c_str());
		if(conn->is_open()) {
			std::cout << "Connected to: "<< conn->dbname() << "\n";
			return 0;
		}
		else {
			std::cout << "Not connected to database\n";
		}
	}
	catch (std::exception& e) {
		SHOWPSQLERROR;
		return -1;
	}
	return -1;
}

void DBManager::closeConnection() {
	if(conn!=nullptr) delete conn;
}

void DBManager::exeQuery(std::string qry) {
	//if(makeConnection()==0 && conn!=nullptr) {
	if(conn!=nullptr) {
		try {
			pqxx::nontransaction N(*conn);
			pqxx::result res(N.exec(qry.c_str()));
			std::cout << "Executing Query..\n";
			for(pqxx::result::const_iterator it = res.begin(); it != res.end(); ++it) {
				std::cout << "Qoute: " << it[0].as<std::string>() << "\n";
			}
			std::cout << "Query Done!\n";
		}
		catch (std::exception& e) {
			SHOWPSQLERROR;
		}
	}
	else {
		std::cout << "Query not executed, not connected to database.\n";
	}
}

