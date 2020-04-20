#pragma once
#include <iostream>
#include <sstream>
#include <fstream>
#include <string>


class WebPage {
	private:
		std::stringstream htmlHeader;
		std::stringstream htmlBody;
		std::stringstream htmlFooter;
	public:
		explicit WebPage(std::string header, std::string body, std::string footer) {
			htmlHeader << header;
			htmlBody << body;
			htmlFooter << footer;
		}
		~WebPage();

		void saveHtml(std::string filename);
		void insertRaw(std::string& str);
};
