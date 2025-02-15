# Dart Async Operation and JSON Parsing Bug

This repository demonstrates a common error in Dart:  incorrect handling of nested JSON data within an asynchronous operation and the lack of robust error handling.

The `bug.dart` file contains code that attempts to fetch JSON data, parse it, and access a nested value.  If the nested key is missing or the API request fails, the program may throw an unhandled exception.

The `bugSolution.dart` file demonstrates the corrected code, showcasing best practices for robust JSON parsing and error handling in asynchronous operations.