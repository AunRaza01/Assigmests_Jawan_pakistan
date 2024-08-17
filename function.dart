void element(List<int> list, int n) {
  if (n > list.length) {
    n = list.length;
  }

  List<int> newList = list.sublist(0, n);
  print(newList);
}

//question 12
void printReversedList(List<String> originalList) {
  // Create a new list by reversing the original list
  List<String> reversedList = List.from(originalList.reversed);

  // Print the reversed list
  print(reversedList);
}

void printMarksheet({
  required String studentName,
  required int mathScore,
  required int scienceScore,
  required int englishScore,
}) {
  int totalMarks = mathScore + scienceScore + englishScore;
  double averageMarks = totalMarks / 3;

  print('Marksheet:');
  print('Student Name: $studentName');
  print('Math Score: $mathScore');
  print('Science Score: $scienceScore');
  print('English Score: $englishScore');
  print('Total Marks: $totalMarks');
  print('Average Marks: $averageMarks');
}
