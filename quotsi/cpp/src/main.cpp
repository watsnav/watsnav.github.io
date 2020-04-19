#include "psqldbmgr.h"

int main() {
	DBManager dbmgr("dbname = quotsi user = watsnav password = 1212 hostaddr = 127.0.0.1 port = 5432");
	dbmgr.makeConnection();
	dbmgr.exeQuery("Select quote from quotes limit 1");
}
