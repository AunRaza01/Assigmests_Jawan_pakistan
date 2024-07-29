void main() {
  print("--------Questoin no 1--------");
  //Q.1: Create a list of numbers & write a program to get the smallest & greatest number from a list.

  List<int> numbers = [45, 78, 96, 36, 12, 6];

  //first of all we will sort the list

  numbers.sort();

  //now the list is sorted and we will use list method first and last

  int smallestNo = numbers.first;
  int greatestNo = numbers.last;
  print("smallest number from list is : $smallestNo");
  print("greatest number from list is : $greatestNo");

  //Q.2: remove all false values from below list by using removeWhere or retainWhere property.
//List<String> usersEligibility = ['John', 'Alice', 'eligible', 'Mike', 'Sarah', 'Tom'];

  print("--------Question no 2--------");

  List<String> usersEligibility = [
    'John',
    'Alice',
    'eligible',
    'Mike',
    'Sarah',
    'Tom'
  ];
  //here using removewhere method
  usersEligibility.removeWhere((element) => element != 'eligible');
  print(usersEligibility);

  print("--------Question no3--------");
  //Q.3: Given a list of integers, write a dart code that returns the maximum value from the list.

  List<int> no = [63, 45, 96, 72, 12, 24];
  no.sort();
  //using concatination
  print("The maximum value is " + no.last.toString());

  print("--------Question no 4--------");

  //Q.4: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order.
  //The original list should remain unchanged.

  List<String> information = ["jack", "micheal", "can", "smauel", "robb"];

  //using .toList for answers in square bracket or in lisr form

  List<String> reversed = information.reversed.toList();
  print("Information list: $information");
  print("Reversed List: $reversed");

  print("--------Question no 5--------");
  //Q.5: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers.
  //The program should take in the original list as a parameter and print a new list containing only the positive numbers.

  List<int> mixNum = [5, -6, 7, 9, -8];
  List<int> positiveNum = mixNum.where((element) => element >= 0).toList();

  print("List witout negative numbers : $positiveNum");
 
}
