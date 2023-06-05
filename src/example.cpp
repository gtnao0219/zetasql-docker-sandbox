#include <iostream>

#include "zetasql/public/analyzer.h"

int main(int argc, char *argv[]) {
  const std::string query = "SELECT id, users.name FROM users;";

  auto language_options = new zetasql::LanguageOptions();
  auto parser_options = new zetasql::ParserOptions(*language_options);
  std::unique_ptr<zetasql::ParserOutput> parser_output;
  absl::Status status =
      zetasql::ParseStatement(query, *parser_options, &parser_output);
  if (!status.ok()) {
    std::cerr << "parse error" << std::endl;
    std::cerr << status.message() << std::endl;
    std::abort();
  }
  std::cout << parser_output->statement()->DebugString() << std::endl;

  return 0;
}
