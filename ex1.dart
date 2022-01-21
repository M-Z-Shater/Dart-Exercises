/* Create a program that asks the user to enter their name and their age.
Print out a message that tells how many years they have to be 100 years old.
*/

import 'dart:io';

main(List<String> args) {
  print("please enter your name");
  var name = stdin.readLineSync();
  print("Hi $name, please enter your age");
  int age = getIntAge();
  print("Hi $name you have ${calcAgeToOneHundred(age)} to get 100");
}

int calcAgeToOneHundred(int age) {
  return 100 - age;
}

getIntAge() {
  String ageInput = stdin.readLineSync() ?? "";
  int age = 0;
  try {
    age = int.parse(ageInput);
  } catch (e) {
    print("error handling your entries");
  }
  if (age == 0) {
    print("please enter a valid number");
    return getIntAge();
  } else {
    return age;
  }
}
