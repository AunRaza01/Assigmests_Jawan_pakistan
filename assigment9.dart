import 'dart:io';

void main() {
  // print("-----QUESTION 1-----");
  // List<int> numbers = [
  //   12,
  //   65,
  //   89,
  //   69,
  //   78,
  //   32,
  //   5,
  // ];
  // print(numbers.first); //first method prints the first element of list
  // print(numbers.last); //last method prints the last element of list
  // print(numbers.indexOf(78)); //indexOf() will print the index number of 78
  // print(numbers
  //     .firstOrNull); // this will print the first value if available if not print null
  // print(numbers
  //     .lastOrNull); //this will print the last value if available if not print null
  // print(numbers.length); //using .length will find the element length
  // print(numbers.reversed); //list will be reversed
  // print(numbers.remove(69)); //will remove elemetn 69
  // print(numbers.removeAt(4)); //will remove elemet at index 4
  // print(numbers.removeLast()); //last value will be removed

  // print("-----QUESTION 2-----");
  // //Map Methods
  // Map<dynamic, dynamic> information = {
  //   "name": "Aun raza",
  //   "semester": 7,
  //   "number": 0312345678,
  //   "batch": "21f"
  // };
  // print(information.length); //checks the length
  // print(information.isEmpty); //it will check that map is empty or not
  // print(information.toString()); //convert map into String
  // print(information
  //     .containsKey("batch")); //containkey check that this key is there or not
  // print(information.remove("number")); // it will remove
  // print(information.containsValue(
  //     "21f")); //containvalue check that this value is there or not
  // print("-----QUESTION 3-----");

  //   // Taking first number input
  // print("Enter the first number:");
  // String? firstInput = stdin.readLineSync();
  // double firstNumber = double.parse(firstInput!);

  // // Taking second number input
  // print("Enter the second number:");
  // String? secondInput = stdin.readLineSync();
  // double secondNumber = double.parse(secondInput!);

  // // Taking operator input
  // print("Enter the operation (+, -, *, /, %):");
  // String? operation = stdin.readLineSync();

  // double result;

  // // Using if statements to perform the operation
  // if (operation == '+') {
  //   result = firstNumber + secondNumber;
  // } else if (operation == '-') {
  //   result = firstNumber - secondNumber;
  // } else if (operation == '*') {
  //   result = firstNumber * secondNumber;
  // } else if (operation == '/') {
  //   if (secondNumber != 0) {
  //     result = firstNumber / secondNumber;
  //   } else {
  //     print("Error: Division by zero is not allowed.");
  //     return;
  //   }
  // } else if (operation == '%') {
  //   if (secondNumber != 0) {
  //     result = firstNumber % secondNumber;
  //   } else {
  //     print("Error: Division by zero is not allowed.");
  //     return;
  //   }
  // } else {
  //   print("Invalid operation.");
  //   return;
  // }

  // // Showing the result to the user
  // print("The result of $firstNumber $operation $secondNumber is: $result");

  print("-----QAUESTION 4-----");
  String originalString = "natsikaP nawaJ";

  // Reversing the string manually
  String reversedString = '';
  for (int i = originalString.length - 1; i >= 0; i--) {
    reversedString += originalString[i];
  }

  // Printing the reversed string
  print("Original String: $originalString");
  print("Reversed String: $reversedString");

  print("-----QUESTION 5-----");

  List<String> names = [
    "Ahmed",
    "Bilal",
    "Shahzeb Naqvi",
    "Muhmmad",
    "Ali",
    "Abdullah",
    "Ali",
    "Ahmed"
  ];

  // Removing duplicates by converting the list to a set and then back to a list
  List<String> alternateNames = names.toSet().toList();

  // Printing the list with duplicates removed
  print("Original List: $names");
  print("List without duplicates: $alternateNames");

  print("-----QUESTION 6-----");
    List<int> numbers = [23, 5, 67, 12, 90, -4, 56, 78, 34];

  
  int largest = numbers[0];
  int smallest = numbers[0];


  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
    if (number < smallest) {
      smallest = number;
    }
  }

  // Printing the results
  print("Largest number: $largest");
  print("Smallest number: $smallest");

  print("-----QUESTION 7-----");
    print("Enter a single character:");
  String? input = stdin.readLineSync();

  // Check if input is a single character
  if (input == null || input.length != 1) {
    print("Error: Please enter exactly one character.");
    return;
  }

  // The character to check
  String character = input.toLowerCase();

  // Check if the character is a vowel
  bool isVowel = isVowelCharacter(character);

  // Print the result
  print("Is '$character' a vowel? $isVowel");
}

// Function to check if a character is a vowel
bool isVowelCharacter(String character) {
  // Define the set of vowels
  const vowels = 'aeiou';

  // Return true if the character is in the set of vowels, false otherwise
  return vowels.contains(character);
}
