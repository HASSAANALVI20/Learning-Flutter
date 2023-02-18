import 'dart:io';

void main() {
  stdout.write(
      "Q.1: Create two integer variables length and breadth and assign values then check if they are square values or rectangle values.\n");
  stdout.write("Enter a Length Value");
  int? length = int.parse(stdin.readLineSync()!);
  print('Length = $length');

  stdout.write("Enter a Breadth Value");
  int? breadth = int.parse(stdin.readLineSync()!);
  print('Breadth = $breadth');

  (length == breadth) ? print("Value Is Square") : print("Value Is Rectangle");

  stdout.write(
      "Q.2: Take two variables and store age then using if/else condition to determine oldest and youngest among them.\n");

  stdout.write("Enter a First Person Age");
  int? ageFirst = int.parse(stdin.readLineSync()!);
  print('First Person Age = $ageFirst');

  stdout.write("Enter a Second Person Age");
  int? ageSecond = int.parse(stdin.readLineSync()!);
  print('Second Person Age = $ageSecond');

  if (ageFirst == ageSecond) {
    print('Both Are Same Age = $ageSecond');
  } else if (ageFirst > ageSecond) {
    print('First Person  oldest and Second Person is Youngest');
  } else {
    print('First Person  Youngest and Second Person is oldest');
  }

  stdout.write(
      "Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value:\n");
  stdout.write("Enter a Student Name \n");
  String? studentName = stdin.readLineSync();

  stdout.write("Enter Number of Classes Held \n");
  int? heldClasses = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Number of Attend Held \n");
  int? attendClasses = int.parse(stdin.readLineSync()!);

  num percentage = (attendClasses / heldClasses) * 100;

  if (percentage < 75) {
    print(
        '$studentName attendance is = $percentage % So Not be Allowed to sit In Exam');
  } else {
    print(
        '$studentName attendance is = $percentage % So Allowed to sit In Exam');
  }

  stdout.write(
      "Q.4: Create integer variable assign any year to it and check if a year is leap year or not:\n");

  stdout.write("Enter A year for Check Either is Leap Year Or Not \n");
  int? year = int.parse(stdin.readLineSync()!);

  if ((year % 4 == 0) && (year % 100 != 0)) {
    print('$year  is a leap year.');
  } else if (year % 400 == 0) {
    print('$year It is a Leap Year.');
  } else {
    print('$year  is not a leap year.');
  }

  stdout.write(
      "Q.5: Write a program to read temperature in centigrade and display a suitable message according to temperature::\n");
  stdout.write("Enter A  temperature in centigrade \n");

  int? temperature = int.parse(stdin.readLineSync()!);
  if (temperature < 0) {
    print("Freezing weather");
  } else if (temperature > 0 && temperature <= 10) {
    print(" Very Cold weather");
  } else if (temperature > 10 && temperature <= 20) {
    print(" Cold weather");
  } else if (temperature > 20 && temperature <= 30) {
    print("Normal in Temp");
  } else if (temperature > 30 && temperature <= 40) {
    print("Its Hot");
  } else {
    print("Its Very Hot");
  }

  stdout.write(
      "Q.6:  Write a program to check whether an alphabet is a vowel or consonant.\n");
  stdout.write("Enter a Alphabet \n");

  String? alphabet = stdin.readLineSync();

  if (alphabet == "a" ||
      alphabet == "e" ||
      alphabet == "i" ||
      alphabet == "o" ||
      alphabet == "u" ||
      alphabet == "A" ||
      alphabet == "E" ||
      alphabet == "I" ||
      alphabet == "O" ||
      alphabet == "U") {
    print("Alphabet $alphabet is  Vowel.");
  } else {
    print("Alphabet  $alphabet is Non Vowels.");
  }

  int accountNumber = 07900123456634;
  String consumerName = "Hassaan";
  String address = "House No P-224, Malir Karachi.";
  String consumerId = "DEA12354";
  int contract = 8989898;
  var issueDate = "17-Feb-2023";
  String lastDate = "12-March-2023";
  double slab1 = 1.20;
  double slab2 = 1.50;
  double slab3 = 1.80;
  double slab4 = 2.0;

  print("\nConsumer Name       : $consumerName");
  print("\nAddress    : $address");
  print("\nAccount No : $accountNumber");
  print("\nConsumer ID: $consumerId");
  print("\nContract No: $contract");
  print("\nIssue Date   : $issueDate");
  print("\nLast Date    : $lastDate");

  stdout.write("\nEnter a Consumed Unit: ");
  String? consumedUnit = stdin.readLineSync();

  if (consumedUnit != null) {
    double units = double.parse(consumedUnit);

    if (units >= 600) {
      units = (units * slab4).roundToDouble();
      print("Your Electricity Bill : $units");
    } else if (units >= 400 && units < 600) {
      units = (units * slab3).roundToDouble();
      print("Your Electricity Bill : $units");
    } else if (units >= 200 && units < 400) {
      units = (units * slab2).roundToDouble();
      print("Your Electricity Bill : $units");
    } else if (units < 200) {
      units = (units * slab1).roundToDouble();
      print("Your Electricity Bill : $units");
    }
  }
}
