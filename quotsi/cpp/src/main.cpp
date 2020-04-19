#include "psqldbmgr.h"

#define QOTD "455"
int main() {
	std::string sql = "Select q.quote,a.name from quotes q,authors a where q.id = " QOTD " and q.author_id = a.id";
	std::vector<std::string> headers;
	headers.push_back("quote");
	headers.push_back("name");
	DBManager dbmgr("dbname = quotsi user = watsnav password = 1212 hostaddr = 127.0.0.1 port = 5432");
	dbmgr.makeConnection();
	dbmgr.exeQuery(sql, headers);
}
