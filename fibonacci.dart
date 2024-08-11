import 'dart:io';

void main() {
//Q1. Write a program that prints the
//Fibonacci sequence up to a given number using a for loop
  print("------QUESTION 1------");
  print("Enter number");
  int? valuee =
      int.parse(stdin.readLineSync()!); // maximum number for fibonacci serise
  int a = 0; //starting value 0
  int b = 1;
  print(a);
  
  for (int i = 0; b <= valuee; i++) {
    print(b);
    int next = a + b;
    a = b;
    b = next;
  }

  print("-------QUESTION 2-------");
  //Q2.  Implement a code that finds the
//largest element in a list using a for loop

  //creating list
  List<int> numberList = [45, 75, 63, 8, 96, 78, 12, 55];
  //value in index 0 is assigned to max
  int max = numberList[0];
  //loop starts with index 1 and will compare each element to max
  for (int i = 1; i < numberList.length; i++) {
    if (numberList[i] > max) {
      max = numberList[i];
    }
  }
  print("The largest number in List is $max");
  print("-------QUESTION 3-------");

  //Q3. Write a program to make such a
// pattern like a right angle triangle with a number which will repeat a number in
// a row. The pattern like :
//  1
//  22
//  333
//  4444
  int row = 4;
  //using nested loop here loop i print the row
  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= i; j++) {
      //with the help of stdout.write we will print because in dart print i will move to new line
      stdout.write(i);
    }
    print("");
  }
  print("-------QUESTION 4-------");
//Q4. Write a program that takes a list
// of numbers as input and prints the numbers greater than 5 using a for loop and
// if-else condition

  List<int> numberLists = [
    2,
    5,
    8,
    3,
    4,
  ];

  for (int i = 0; i < numberLists.length; i++) {
    if (numberLists[i] > 5) {
      print("Greatest number in List is: ${numberLists[i]}");
    }
  }
  print("-------QUESTION 5-------");

  print("Enter any word");
  String sentence = stdin.readLineSync()!;
  String vowels = "a, e, i, o, u A, E, I, O, U";
  for (int i = 0; i < sentence.length; i++) {
    //here loop will run on sentence length
    if (vowels.contains(sentence[i])) {
      //here if sentence contain vowels will print
      print("${sentence[i]} is vowels");
    } else {
      print("${sentence[i]} is consonant");
    }
  }
  print("-------QUESTION 6-------");
  //Q6.Write a Dart program that uses a while loop to calculate and print the factorial of a given number n.
  // The factorial of a number is the product of all positive integers less than or equal to n. For example,
  // for n = 5, the output should be 120
  print("Enter any number");
  int? number = int.parse(stdin.readLineSync()!);
  int fact = 1;
  int i = number;
  while (i > 0) {
    fact *= i;
    i--;
  }
  print("The factorail of $number is $fact");

  print("-------QUESTION 7 ------");
  //Q7. Write a Dart program that uses a for loop to print the numbers from 1 to 10,
  //each on a new line. Modify the program to print the numbers in reverse order, from 10 to 1
  //this will print 1 to 10
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  for (int i = 10; i >= 1; i--) {
    print(i);
  }
  print("-------QUESTION 8 ------");
//Q8.Write a Dart program that uses a for loop to calculate and print the sum of all even numbers from 1 to 20.
// The program should output the total sum
  int sum = 0;
  for (int i = 0; i <= 20; i++) {
    if (i % 2 == 0) {
      sum += i;
    }
  }
  print("The sum of even number is $sum");

  print("------QUESTION 9------");
//Q9. Write a Dart program that uses a for loop to print the first 5 multiples of 3. The output should be
  print("Enter number");
  int value = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 5; i++) {
    print(value * i);
  }

  print("------QUESTION 10------");
  //Q10.Write a Dart program that uses a while loop to print numbers from 1 to 3.
  // Each number should be printed on a new line
  int numberr = 1;
  while (numberr <= 3) {
    print(numberr);
    numberr++;
  }
}
