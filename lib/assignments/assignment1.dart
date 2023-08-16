// Function Practice

import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  // Variable declaration
  var ch = "";
  int choice;

  do {
    stdout.write('Press 1 for Arithmetic Operations : \n');
    stdout.write('Press 2 for Check given number is EVEN or ODD : \n');
    stdout.write('Press 3 for Check given number is Prime or Not  : \n');
    stdout.write('Press 4 for Check Largest number in given 3 numbers : \n');
    stdout.write('Press 5 for Get series of EVEN numbers in given range : \n');
    stdout.write('Press 6 for Get series of ODD numbers in given range : \n');
    stdout.write(
        'Press 7 for get Lower and Upper Range and print EVEN number within range : \n');
    stdout.write(
        'Press 8 for get Lower and Upper Range and print ODD number within range : \n');
    stdout.write('Press 9 for Armstrong number: \n');
    stdout.write('Enter Your choice : ');

    choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      var getValue1, getValue2;
      stdout.write('Please Enter Value1 : ');
      getValue1 = int.parse(stdin.readLineSync()!); //v1
      stdout.write("please Enter Value2 : ");
      getValue2 = int.parse(stdin.readLineSync()!); //v2

      // Create objects
      var obj1 = Calculation();

      //Addition
      var result1 = obj1.add(getValue1, getValue2);
      print("The Sum is  :  $result1");

      //Subtraction
      var result2 = obj1.subtraction(getValue1, getValue2);
      print("The Subtraction is  :  $result2");

      //Multiplication
      var result3 = obj1.multiplication(getValue1, getValue2);
      print("The  Multiplication is  :  $result3");

      //Division
      var result4 = obj1.division(getValue1, getValue2);
      print("The  Division is  :  $result4");
    } else if (choice == 2) {
      stdout.write('Enter number for check it is  EVEN  or ODD  : ');
      var num = int.parse(stdin.readLineSync()!);
      var obj2 = FindEvenOddNum();
      // Function Calling
      obj2.findEO(num);
    } else if (choice == 3) {
      stdout.write('Enter number for check it is  Prime : ');
      var num = int.parse(stdin.readLineSync()!);
      var obj2 = FindEvenOddNum();
      // Function Calling
      obj2.FindPrimeNum(num);
    } else if (choice == 4) {
      //GetValue from user
      int number1, number2, number3;
      stdout.write('Enter Number 1 : ');
      number1 = int.parse(stdin.readLineSync()!);

      stdout.write('Enter Number2 : ');
      number2 = int.parse(stdin.readLineSync()!);

      stdout.write('Enter Number 3 : ');
      number3 = int.parse(stdin.readLineSync()!);

      print('Numbers are : $number1, $number2, $number3 ');

      if (number1 > number2 && number1 > number3) {
        stdout.write('$number1 Number1 is Largest Number ');
      } else if (number2 > number3) {
        stdout.write('$number2 Number2 is Largest Number ');
      } else {
        stdout.write('$number3 Number3 is Largest number ');
      }
    } else if (choice == 5) {
      getEvenNumberWithRange();
    } else if (choice == 6) {
      getOddNumberWithRange();
    } else if (choice == 7) {
      stdout.write('1 for LOWER&UPPER range both are given by u \n');
      stdout.write('2 for Only Upper Range given by u \n');
      stdout.write('Please enter operation number 1 or 2 : ');
      var operationNumber = int.parse(stdin.readLineSync()!);
      getLowerUpperRangeEN(operationNumber);
    } else if (choice == 8) {
      stdout.write('1 for LOWER&UPPER range both are given by u \n');
      stdout.write('2 for Only Upper Range given by u \n');
      stdout.write('Please enter operation number 1 or 2 : ');
      var operationNumber = int.parse(stdin.readLineSync()!);
      getLowerUpperRangeODD(operationNumber);
    } /*else if (choice == 9) {
      late int checkNumber, sep, getLength;
      List getDigits = [];


      stdout.write('Enter number for checking it Armstrong no. or not ');
      checkNumber = int.parse(stdin.readLineSync()!);

      while (checkNumber > 0) {
        sep = checkNumber % 10;
        print('$sep');
        checkNumber = checkNumber ~/ 10;
        getDigits.add(sep);
      }
      print('The List getDigits items are :  $getDigits');
      getLength = getDigits.length;
      print('Digit length is : $getLength ');

      List getPower = [];
      int index = 0;
      for (int k = 1; k <= getDigits.length; k++) {
        num powerValue = pow(getDigits.elementAt(index), getLength);
        index++;
        getPower.add(powerValue);
      }
      print('Show power of values $getPower');

      num sum = 0;
      int indexCount = 0;
      for (int i = 1; i <= getPower.length; i++) {
        sum = sum + getPower.elementAt(indexCount);
        indexCount++;
      }
      print("Sum of all elements : $sum");
     *//* if (checkNumber == sum) {
        stdout.write(
            'Congratulations your logic is working $checkNumber is Armstrong number');
      } else {
        stdout.write(' $checkNumber is Not Armstrong number');
      }*//*
    }*/
    stdout.write('\ndo u want to continue Y/N :');
    ch = stdin.readLineSync().toString();
  } while (ch == 'y' || ch == 'Y');
}

//Class Methods
void getEvenNumberWithRange() {
  stdout.write('Enter the range of EVEN numbers u want to see : ');
  var range = int.parse(stdin.readLineSync()!);

  int i;
  for (i = 1; i <= range; i++) {
    if (i % 2 == 0) {
      stdout.write("$i,");
      stdout.write(' ');
    }
  }
}

void getOddNumberWithRange() {
  stdout.write('Enter the range of ODD numbers u want to see : ');
  var range = int.parse(stdin.readLineSync()!);

  int i;
  for (i = 1; i <= range; i++) {
    if (!(i % 2 == 0)) {
      stdout.write("$i,");
      stdout.write(' ');
    }
  }
}

void getLowerUpperRangeEN(int opNumber) {
  if (opNumber == 1) {
    stdout.write('Please Enter Lower range (where u want to start) number : ');
    var lr = int.parse(stdin.readLineSync()!);

    stdout.write('Please Enter Upper range (where u want to end) number : ');
    var ur = int.parse(stdin.readLineSync()!);

    for (int i = lr; i <= ur; i++) {
      if (i % 2 == 0) {
        stdout.write('$i');
        stdout.write(' ');
      }
    }
  } else if (opNumber == 2) {
    stdout.write('Please Enter Upper range (where u want to end) number : ');
    var ur = int.parse(stdin.readLineSync()!);

    for (int i = 1; i <= ur; i++) {
      if (i % 2 == 0) {
        stdout.write('$i');
        stdout.write(' ');
      }
    }
  }
}

void getLowerUpperRangeODD(int opNumber) {
  if (opNumber == 1) {
    stdout.write('Please Enter Lower range (where u want to start) number : ');
    var lr = int.parse(stdin.readLineSync()!);

    stdout.write('Please Enter Upper range (where u want to end) number : ');
    var ur = int.parse(stdin.readLineSync()!);
    for (int i = lr; i <= ur; i++) {
      if (!(i % 2 == 0)) {
        stdout.write('$i');
        stdout.write(' ');
      }
    }
  } else if (opNumber == 2) {
    stdout.write('Please Enter Upper range (where u want to end) number : ');
    var ur = int.parse(stdin.readLineSync()!);
    for (int i = 1; i <= ur; i++) {
      if (!(i % 2 == 0)) {
        stdout.write('$i');
        stdout.write(' ');
      }
    }
  }
}

// Create class
class Calculation {
  int add(int value1, int value2) {
    int result = value1 + value2;
    return result;
  }

  int subtraction(int value1, int value2) {
    int result = value1 - value2;
    return result;
  }

  int multiplication(int value1, int value2) {
    int result = value1 * value2;
    return result;
  }

  int division(int value1, int value2) {
    int result = value1 ~/ value2;
    return result;
  }
}

class FindEvenOddNum {
  int findEO(int numb) {
    if ((numb % 2) == 0) {
      stdout.write("$numb is Even number");
    } else {
      stdout.write("$numb is Odd number");
    }

    return 0;
  }

  int FindPrimeNum(int checkNumber) {
    bool isPrime = true;

    for (int i = 2; i < checkNumber / 2; i++) {
      if (checkNumber % i == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      print('$checkNumber is Prime number ');
    } else {
      print('$checkNumber is not a Prime Number');
    }

    return 0;
  }
}
