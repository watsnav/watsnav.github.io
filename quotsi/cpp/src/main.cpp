#include "psqldbmgr.h"
#include "webpage.h"
#define RETRIES 10
int main() {
	std::string sql = "Select q.quote,a.name from quotes q,authors a where q.author_id = a.id and q.id = (select trunc(random() * max(id)) from quotes)";
	std::vector<std::string> headers;
	headers.push_back("quote");
	headers.push_back("name");
	DBManager dbmgr("dbname = quotsi user = postgres password = 1212 hostaddr = 127.0.0.1 port = 5432");
	dbmgr.makeConnection();
	int retries = 0;
	std::string *qryResult = new std::string();
	while(!dbmgr.exeQuery(sql, headers, qryResult)) {
		if(++retries == RETRIES ) break;
	}
	WebPage index("","","");
	index.insertRaw(*qryResult);
	index.saveHtml("quotsi/index.html");
	std::cin.get();
}
