/*
Create a program that asks the user for a number and then prints out a list of all the divisors of that number.

If you don’t know what a divisor is, it is a number that divides evenly into another number. For example, 13 is a divisor of 26 because 26 / 13 has no remainder.
*/

import 'dart:io';

main(List<String> args) {
  print("please enter Integer number");
  int number = getInputInt();
  final resList = <int>[];
  for (int i = number; i > 0; i--) {
    if (number % i == 0) {
      resList.add(i);
    }
  }
    print(resList);

}

getInputInt() {
  String intInput = stdin.readLineSync() ?? "";
  int intNumber = 0;
  try {
    intNumber = int.parse(intInput);
  } catch (e) {
    print("error handling your entries");
  }
  if (intNumber == 0) {
    print("please enter a valid number");
    return getInputInt();
  } else {
    return intNumber;
  }
}
