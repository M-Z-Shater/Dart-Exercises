/*
Take two lists, for example:

a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
and write a program that returns a list that contains only the elements that are common between them (without duplicates).
 Make sure your program works on two lists of different sizes.
*/

main(List<String> args) {
  const aList = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  const bList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  final commonSet = <int>{};

  aList.forEach((element) {
    if (bList.contains(element)) {
      commonSet.add(element);
    }
  });

  bList.forEach((element) {
    if (aList.contains(element)) {
      commonSet.add(element);
    }
  });

  print(commonSet.toList());


  // one line solution
  print(aList.toSet().intersection(bList.toSet()));
}
