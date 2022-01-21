/*
Ask the user for a string and print out whether this string is a palindrome or not.

A palindrome is a string that reads the same forwards and backwards.
*/

import 'dart:io';

main(List<String> args) {
  String input = getInput();

  if (checkPalindrome(input)) {
    print("your string is palindrome");
  } else {
    print("your string is not palindrome");
  }
}

String getInput() {
  print("Please enter any string");
  String input = stdin.readLineSync() ?? "";
  if (input.isNotEmpty) {
    return input;
  } else {
    print("you have entered an empty string");
    return getInput();
  }
}

bool checkPalindrome(String input) {
  int startIndex = 0;
  int lastIndex = input.length - 1;

  while (startIndex <= lastIndex) {
    if (input[startIndex] != input[lastIndex]) {
      return false;
    }
    startIndex++;
    lastIndex--;
  }
  return true;
}
