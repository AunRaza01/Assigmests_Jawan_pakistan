import 'dart:io';

void main() {
  //This program will take input from user "how many numbers" use wants
  //then user will put each value line by line
  //and also checks that the value is even or odd
  print("How many numbers user wants");
  int? numbers = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < numbers; i++) {
    print("Enter value at position ${i + 1}");
    int? value = int.parse(stdin.readLineSync()!);
    if (value % 2 == 0) {
      print("The $value is Even number");
    } else {
      print("The $value is Odd number");
    }
  }

  print("Map question");
  // this program will print the oldest man from map
  Map<String, int> information = {
    'shahzeb': 24,
    'irfan': 12,
    'Ali': 36,
    'haider': 56
  };
  //here ternery operator is used
  dynamic oldPerson =
      information.entries.reduce((a, b) => a.value > b.value ? a : b);
  print("${oldPerson.key} is oldest in Map");

  print("List question");

  //write Dart code to create a new list containing only the unique colors, sorted alphabetically.
  List<String> listOfColors = [
    'green',
    'blue',
    'red',
    'green',
    'orange',
    'green'
  ];
  Set<String> uniqueColorSet = listOfColors.toSet();
  //convert to list form again

  List<String> uniqueColorList = uniqueColorSet.toList();
  //now sorting list
  uniqueColorList.sort();

  print(uniqueColorList);
}
