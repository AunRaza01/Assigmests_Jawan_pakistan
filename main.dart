import 'dart:io';
import 'function.dart';

void main() {
  print("-----QUESTION 1-----");
  //Q.1: Create a list of names and print all names using list.
  List<String> names = ["Haider", "Sarmad", "Ali", "Akbar"];
  print(names);

  print("-----QUESTION 2-----");
  //Q.2: Create an empty list of type string called days.
  // Use the add method to add names of 7 days and print all days.
  List<String> days = [];
  days.addAll([
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ]);
  print(days);

  print("-----QUESTION 3-----");
  //Q.3: Create a list of Days and remove one by one from the end of list.
  List<String> weekDays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  weekDays.remove("Monday");
  print(weekDays);

  print("-----QUESTION 4-----");
  //Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.
  List<int> numbers = [12, 5, -66, 59, 45, 63, 0];
  //findng the smallest and greatest using ternery operator
  int greatest = numbers.reduce((a, b) => a > b ? a : b);
  int smallest = numbers.reduce((a, b) => a < b ? a : b);
  print("the smallest number is : $smallest");
  print("the greatest number is : $greatest");

  print("-----QUESTION 5-----");
  //Q.5: Create a map with name, phone keys and store some values to it.
  // Use where to find all keys that have length 4

  Map<String, String> info = {
    "name": "shahzeb",
    "phone": "samsung",
    "keys": "abcd123"
  };
  Iterable<String> keysWithLenth4 = info.keys.where((key) => key.length == 4);
  print("Keys with length 4 is $keysWithLenth4");

  print("-----QUESTION 6-----");
  //Q.6: Create Map variable name world then inside it create countries Map,
  //Key will be the name country & country value will have another map having capitalCity,
  //currency and language to it. by using any country key print all the value of Capital & Currency
  Map<String, Map<String, String>> world = {
    "pakistan": {
      "capitalCity": "islamabad",
      "currency": "rupy",
      "language": "urdu"
    },
    "india": {"capitalCity": "delhi", "currency": "rupy", "language": "hindi"},
    "usa": {
      "capitalCity": "washington Dc",
      "currency": "dollar",
      "language": "english"
    },
  };

  print("Enter country name");
  String? country = stdin.readLineSync()!;
  Map<String, String>? countryDetails = world[country];
  if (countryDetails != null) {
    String capital = countryDetails['capitalCity'] ?? 'unknown';
    String currency = countryDetails['currency'] ?? 'unknown';
    print("capitalCity is $capital");
    print("currency is $currency");
  } else {
    print("enter valid country");
  }

  print("-----QUESTION 7-----");
//Q.7 Map<String, double> expenses = {
//   'sun': 3000.0,
//   'mon': 3000.0,
//   'tue': 3234.0,
// };
// Check if "fri" exist in expanses;if exist change it's value to 5000.0 otherwise
// add 'fri' to expenses and set its value to 5000.0 then print expenses.
//
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  if (expenses.containsKey("fri")) {
    expenses["fri"] = 5000.0;
  } else {
    expenses["fri"] = 5000.0;
  }
  print(expenses);

  print("-----QUESTION 8-----");
// Q.8: remove all false values from below list by using removeWhere or retainWhere property.

// List<Map<String, bool>> usersEligibility = [
// {'name': 'John', 'eligible': true},
// {'name': 'Alice', 'eligible': false},
// {'name': 'Mike', 'eligible': true},
// {'name': 'Sarah', 'eligible': true},
// {'name': 'Tom', 'eligible': false},
// ];
  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];

  // removing entries of false
  usersEligibility.removeWhere((user) => user['eligible'] == false);
  print(usersEligibility);

  print("-----QUSTION 9-----");

  //Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.
  List<int> values = [2, 3, 9, 8, 6, 4];

  int max = values[0];
  for (int i = 1; i < values.length; i++) {
    if (values[i] > max) {
      max = values[i];
    }
  }
  print("The max number is $max");

  print("-----QUSTION 10-----");
  // Q.10: Write a Dart code that takes in a list of strings and removes any duplicate elements,
  // returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.
  List<String> elemts = ["shahzeb", "abdullah", "talha", "abdullah"];
  List<String> duplicateelemts = elemts.toSet().toList();
  print("Duplicates are removed $duplicateelemts");

  print("------QUESTION 11-----");
  List<int> myList = [20, 90, 60, 30, 40];
  int n = 3;
  element(myList, n);

  print("-----QUESTION 12-----");

  //Q.12: Write a Dart code that takes in a list of strings and prints a new list with
  // the elements in reverse order. The original list should remain unchanged
  List<String> fruits = ['mango', 'banana', 'apple', 'kiwi'];
  printReversedList(fruits); // Call the function to print the reversed list
  print(fruits); // Original list remains unchanged

  print("-----QUESTION 13-----");
  List<int> normalList = [1, 2, 2, 3, 4, 4, 5];
  List<int> uniqueList = [];
  Set<int> seenElements = {};

  // Loop through each element in the original list
  for (int element in normalList) {
    // If the element has not been seen before, add it to uniqueList
    if (!seenElements.contains(element)) {
      uniqueList.add(element);
      seenElements.add(element);
    }
  }

  // Print the list containing only unique elements
  print(uniqueList);

  print("-----QUESTION 14-----");
  List<int> listt = [5, 3, 8, 1, 2];

  // Create a new list by copying the list
  List<int> sortedList = List.from(listt);

  sortedList.sort();

  // Print the sorted list
  print('Sorted List: $sortedList');

  print('Original List: $listt');

  print("-----QUESTION 15-----");

  List<int> valuess = [-3, 5, -1, 9, -7, 4, 0];

  // Use the where() method to filter out negative numbers
  List<int> positiveList = valuess.where((number) => number >= 0).toList();

  print('Positive List: $positiveList');

  print("-----QUESTION 16-----");

  List<int> infoo = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Use the where() method to filter out odd numbers
  List<int> evenList = infoo.where((number) => number % 2 == 0).toList();

  // Print the new list containing only even numbers
  print('Even List: $evenList');

  print("-----QUESTION 17-----");

  List<int> originalList = [1, 2, 3, 4, 5];

  List<int> squaredList =
      originalList.map((number) => number * number).toList();

  print('Squared List: $squaredList');

  print("-----QUESTION 18-----");

  Map<String, dynamic> person = {
    'name': 'John',
    'age': 25,
    'isStudent': true,
  };

  // Check if the person is both a student and over 18 years old
  if (person['isStudent'] == true && person['age'] > 18) {
    print('Eligible');
  } else {
    print('Not eligible');
  }
  print("-----QUESTION 19-----");
  Map<String, dynamic> product = {
    'name': 'Laptop',
    'price': 1500.00,
    'quantity': 10,
  };

  // Check if the product is in stock
  if (product['quantity'] > 0) {
    print('In stock');
  } else {
    print('Out of stock');
  }

  print("-----QUESTION 20-----");

  Map<String, dynamic> car = {
    'brand': 'Toyota',
    'color': 'Red',
    'isSedan': true,
  };

  // Check if the car is a sedan and red in color
  if (car['isSedan'] == true && car['color'] == 'Red') {
    print('Match');
  } else {
    print('No match');
  }

  print("-----QUESTION 21-----");

  Map<String, dynamic> user = {
    'name': 'ali',
    'isAdmin': true,
    'isActive': true,
  };

  // Check if the user is both an admin and active
  if (user['isAdmin'] == true && user['isActive'] == true) {
    print('Active admin');
  } else {
    print('Not an active admin');
  }

  print("-----QUESTION 22-----");
    Map<String, int> cart = {
    'Banana': 3,
    'Apple': 5,
    'Orange': 2,
  };

  // Check if the product named "Apple" exists in the cart
  if (cart.containsKey('Apple')) {
    print('Product found');
  } else {
    print('Product not found');
  }

  print("-----QUESTION 23-----");

    int number = 10;

  // Use a while loop to print numbers in reverse order
  while (number > 0) {
    print(number);
    number--;
  }

  print("-----QUESTION 24-----");

 int numbersS = 1;  // Start from 1

  do {
    // Print the square of the current number
    print(numbersS * numbersS);

    numbersS++;  // Increase the number by 1 in each iteration
  } while (numbersS <= 5);

  print("-----QUESTION 25-----");

  List<int> data = [10, 20, 30, 40, 50];
  int totalSum = 0;
  int itemCount = 0;
  int position = 0;

  // Use a do-while loop to calculate the sum of the numbers
  do {
    totalSum += data[position]; // Add the current number to the total sum
    itemCount++; // Increment the item count
    position++; // Move to the next position
  } while (position < data.length); // Continue until all elements are processed

  // Calculate the average
  double mean = totalSum / itemCount;

  // Print the average
  print('Mean: $mean');

  print("-----QUESTION 26-----");
  int no = 75319;
  int largestDigit = 0;
  int currentDigit;

  // Use a do-while loop to find the largest digit
  do {
    currentDigit = no % 10; // Extract the last digit
    if (currentDigit > largestDigit) {
      largestDigit =
          currentDigit; // Update largestDigit if currentDigit is greater
    }
    no ~/= 10; // Remove the last digit from the number
  } while (no > 0); // Continue until all digits are processed

  // Print the largest digit
  print('Largest digit: $largestDigit');

  print("-----QUESTION 27-----");

  int start = 1; // Initialize the starting point

  // Use a do-while loop to print even numbers
  do {
    if (start % 2 == 0) {
      print(start); // Print the number if it is even
    }
    start++; // Increment to the next number
  } while (start <= 20);

  print("-----QUESTION 28-----");

  printMarksheet(
    studentName: 'Alice',
    mathScore: 85,
    scienceScore: 90,
    englishScore: 88,
  );
}
