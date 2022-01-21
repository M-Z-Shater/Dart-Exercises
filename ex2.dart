/*Ask the user for a number. Depending on whether the number is even or odd,
print out an appropriate message to the user.
*/
import 'dart:io';

main(List<String> args) {
  print("please enter any Integer number bigger than 0");
  int number = getInputInt();
  if (isOdd(number)) {
    print("your number is Odd");
  } else {
    print("your number is Even");
  }
}

bool isOdd(int number) {
  return number % 2 == 1 ? true : false;
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
