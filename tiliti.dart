import 'dart:io';
import 'dart:convert';


String name = "Alice";
String greeting = "Hello, " + name + "!";
String reversedName = name.split('').reversed.join('');
String capitalizedName = name.toUpperCase();

List<String> fruits = ['apple', 'banana', 'orange'];
Set<int> numbers = {1, 2, 3, 2}; // Duplicate 2 is ignored
Map<String, int> ages = {'Alice': 25, 'Bob': 30};


Future<void> readFileAndWrite() async {
  try {
    File inputFile = File('input.txt');
    String content = await inputFile.readAsString();
    File outputFile = File('output.txt');
    await outputFile.writeAsString(content.toUpperCase());
  } catch (e) {
    print('Error: $e');
  }
}

DateTime now = DateTime.now();

String formattedDate = DateFormat('dd/MM/yyyy').format(now);

Duration difference = now.difference(previousDate);
int daysDifference = difference.inDays;



void main() {
  print('Enter your name:');
  String name = stdin.readLineSync()!;

  // ... other manipulations and calculations

  // Write to a log file
  DateTime now = DateTime.now();
  String logEntry = '${now}: User $name performed actions: ...';
  File('log.txt').writeAsString(logEntry, mode: FileMode.append);
}