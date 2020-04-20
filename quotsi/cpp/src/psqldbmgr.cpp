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

unsigned long DBManager::exeQuery(std::string& qry, std::vector<std::string>& headers, std::string *result) {
	//if(makeConnection()==0 && conn!=nullptr) {
	unsigned long numRows = 0;
	std::stringstream ss;
	if(conn!=nullptr) {
		try {
			pqxx::nontransaction N(*conn);
			pqxx::result res(N.exec(qry.c_str()));
			std::cout << "Executing Query..";
			for(pqxx::result::const_iterator it = res.begin(); it != res.end(); ++it) {
				int i = 0;
				//std::cout << "{";
				ss << "{";
				for(std::vector<std::string>::iterator it2 = headers.begin(); it2 != headers.end(); ++i) {
					//std::cout << *it2 << ":" << "\"" << it[i].as<std::string>() << "\"";
					ss << *it2 << ":" << "\"" << it[i].as<std::string>() << "\"";
					if(++it2!=headers.end()) 
					//	std::cout << ", ";
						ss << ", ";
				}
				//std::cout << "}\n";
				ss << "}\n";
				++numRows;
			}
			std::cout << "done!\n";
			*result = ss.str();
		}
		catch (std::exception& e) {
			SHOWPSQLERROR;
		}
	}
	else {
		std::cout << "Query not executed, not connected to database.\n";
	}
	return numRows;
}


