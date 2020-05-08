#include "webpage.h"

WebPage::~WebPage() {
}

void WebPage::insertRaw(std::string& str) {
	htmlBody << str;
}


void WebPage::saveHtml(std::string filename) {
	std::ofstream file(filename);
	file << htmlHeader.str() << htmlBody.str() << htmlFooter.str();
	//std::cout << htmlBody.str();
	file.close();
}
