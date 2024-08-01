void main() {
  List<int> numbers = [
    12,
    65,
    89,
    69,
    78,
    32,
    5,
  ];
  print(numbers.first);
  print(numbers.last);
  print(numbers.indexOf(78));
  print(numbers.firstOrNull);
  print(numbers.lastOrNull);
  print(numbers.length);
  print(numbers.reversed);
  print(numbers.remove(69));
  print(numbers.removeAt(4));
  print(numbers.removeLast());
}
