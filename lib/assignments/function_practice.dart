// Function Practice

import 'dart:io';

void main() {
  /* //get n term of Even numbers
  getEvenNumber();
  //get n term of odd numbers
  getOddNumber();
  //getting Prime with range upper
  PrimeNumberWithRange();
  //Getting N terms Prime Numbers
  nTermPrimeNUmber();
  //Sum of digits
  sumOfDigitsUpperRange();
  // N Term Sum
  nTermOfSum();*/
  //Lower and Upper range
  //sumOfDigitsLUR();
  fibonacciS();
}

//For Even numbers
void getEvenNumber() {
  int range, i, counter = 0;
  range = 10000;
  List<int> nNumbers = [];

  stdout.write('Please Enter NTerms for Even numbers : ');
  var nTerms = int.parse(stdin.readLineSync()!);

  for (i = 0; i < range; i++) {
    if (i % 2 == 0) {
      counter++;
      nNumbers.add(i);
      if (counter == nTerms) {
        print("N Terms of Even numbers are : $nNumbers ");
      }
    }
  }
}

//For Odd Numbers
void getOddNumber() {
  int range, i, counter = 0;
  range = 10000;
  List<int> nNumbers = [];

  stdout.write('Please Enter NTerms for Odd numbers : ');
  var nTerms = int.parse(stdin.readLineSync()!);

  for (i = 0; i < range; i++) {
    if (!(i % 2 == 0)) {
      counter++;
      nNumbers.add(i);
      if (counter == nTerms) {
        print("N Terms of odd numbers are : $nNumbers");
      }
    }
  }
}

//Simple Prime Number getting
bool FindPrimeNum(int checkNumber) {
  bool isPrime = true;

  for (int i = 2; i <= checkNumber / 2; i++) {
    if (checkNumber % i == 0) {
      isPrime = false;
      break;
    }
  }
  return isPrime;
}

//Prime number with range
void PrimeNumberWithRange() {
  List<int> primeNumbers = [];
  stdout.write("Enter Upper Range for Prime Numbers : ");
  var range = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < range; i++) {
    bool isPrimeNumber = FindPrimeNum(i);
    if (isPrimeNumber) {
      primeNumbers.add(i);
    }
  }
  print("Prime list with range $primeNumbers");
}

//Prime numbers in N terms
void nTermPrimeNUmber() {
  stdout.write("Please Enter N Terms of Prime Number : ");
  var nTerms = int.parse(stdin.readLineSync()!);

  List<int> primeNumbers = [];
  int counter = 0, range = 1000;
  for (int i = 0; i < range; i++) {
    bool isPrimeNumber = FindPrimeNum(i);
    if (isPrimeNumber) {
      primeNumbers.add(i);
      counter++;
      if (counter == nTerms) {
        print("N Terms of Prime Numbers are : $primeNumbers , $counter");
      }
    }
  }
}

//Sum of all digits with upper range
void sumOfDigitsUpperRange() {
  stdout.write("Please Enter Upper range For Sum : ");
  var upperRange = int.parse(stdin.readLineSync()!);
  int i, result = 0;
  List<int> listDigits = [];
  for (i = 0; i < upperRange; i++) {
    listDigits.add(i);
    result = result + listDigits.elementAt(i);
  }
  print("Digits are: $listDigits");
  print("Sum : $result");
}

void nTermOfSum() {
  int counter = 0, sum = 0;
  List<int> digits = [];
  stdout.write("Please Enter n terms for sum : ");
  var nTerms = int.parse(stdin.readLineSync()!);

  for (int i = 0; i <= 1000; i++) {
    digits.add(i);
    sum = sum + digits.elementAt(i);
    counter++;
    if (counter == nTerms) {
      print("$digits");
      print("Sum : $sum");
    }
  }
}

void sumOfDigitsLUR() {
  stdout.write("Please Enter Lower range For Start ");
  var lowerRange = int.parse(stdin.readLineSync()!);
  stdout.write("Please Enter Upper range For End ");
  var upperRange = int.parse(stdin.readLineSync()!);

  int i, result = 0;
  List<int> listDigits = [];
  for (i = lowerRange; i <= upperRange; i++) {
    listDigits.add(i);
    result = result + i;
  }

  print("Digits are: $listDigits");
  print("Sum : $result");
}

void fibonacciS() {
  stdout.write("Enter NTerms for Fibonacci series : ");
  var nTerm = int.parse(stdin.readLineSync()!);

  List<int> fS = [0, 1];
  int value1 = 0, value2 = 1, sum;
  sum = value1 + value2;
  fS.add(sum);
  print("$fS");

  for (int i = 2; i <= nTerm; i++) {
    sum = sum + fS.elementAt(i - 1);
    fS.add(sum);
  }
  print("Fibonacci series :  $fS");
}

/*void main() {
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
    } else if (choice == 9) {
      getArmstrongNUmber();
    }

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

//check number is armstrong or not
void getArmstrongNUmber() {
  stdout.write(
      '============There are many options to perform on Armstrong Number============= \n');
  stdout.write('Press 1 for Upper Range \n');
  stdout.write('Press 2 for Upper Range and Lower range \n');
  stdout.write('press 3 for n term \n');
  stdout.write('Please Enter Your Option : ');

  int option = int.parse(stdin.readLineSync()!);

  List<int> armNumber = [];

  if (option == 1) {
    stdout.write('Please Enter Upper Range : ');
    int upperRange = int.parse(stdin.readLineSync()!);

    // List<int> armNumber = [];

    for (int i = 0; i < upperRange; i++) {
      bool isTrue = isArmSN(i);
      if (isTrue) {
        armNumber.add(i);
      }
    }
    print('List of upper range Armstrong Numbers are : $armNumber');
  } else if (option == 2) {
    stdout.write('Please Enter Lower Range : ');
    int lowerRange = int.parse(stdin.readLineSync()!);

    stdout.write('Please Enter Upper Range : ');
    int upperRange = int.parse(stdin.readLineSync()!);

    // List<int> armNumber = [];

    for (int i = lowerRange; i < upperRange; i++) {
      bool isTrue = isArmSN(i);
      if (isTrue) {
        armNumber.add(i);
      }
    }
    print(
        'List of upper range and lower range Armstrong Numbers are : $armNumber');
  } else if (option == 3) {
    stdout.write('Please Enter N term : ');
    int nTerms = int.parse(stdin.readLineSync()!);
    int endRange = 3000000, termCounter = 0;

    // List<int> armNumber = [];

    for (int i = 0; i < endRange; i++) {
      bool isTrue = isArmSN(i);
      if (isTrue) {
        armNumber.add(i);
        termCounter++;
        if (nTerms == termCounter) {
          //print('somthing'); check
          print('$armNumber, $nTerms');
        }
      }
    }
  }
}

// Simple armstrong number
bool isArm(int actualValue) {
  late int checkNumber, sep, getLength;
  List getDigits = [];
  List getPower = [];
  num sum = 0;
  checkNumber = actualValue;

  // Logic of separate values one by one and add into array/List
  while (checkNumber > 0) {
    sep = checkNumber % 10;
    print('$sep');
    checkNumber = checkNumber ~/ 10;
    getDigits.add(sep);
  }

  //Print data values
  print('The List getDigits items are :  $getDigits');
  getLength = getDigits.length;
  print('Digit length is : $getLength ');

  //GetPowers of all separate digits which is holed in list fetching values by using each index value

  for (int k = 0; k < getDigits.length; k++) {
    num powerValue = pow(getDigits.elementAt(k), getLength);
    getPower.add(powerValue);
  }
  print('Show power of values $getPower');

  // Get the Sum of each power values by using getPower List

  for (int i = 0; i < getPower.length; i++) {
    sum = sum + getPower.elementAt(i);
  }
  print("Sum of all elements : $sum");
  if (actualValue == sum) {
    print('Check no : = $actualValue');
    stdout.write(
        'Congratulations your logic is working $actualValue is Armstrong number');
    return true;
  } else {
    stdout.write('$actualValue is Not Armstrong number');
    return false;
  }
}

bool isArmSN(int userValue) {
  int sep = 0, count = 0, temp = 0;
  num sum = 0;

  temp = userValue;
  while (temp > 0) {
    temp = temp ~/ 10;
    count++;
  }
  //print(count);
  temp = userValue;
  while (temp > 0) {
    sep = temp % 10;
    sum = sum + pow(sep, count);
    //print(sep);
    temp = temp ~/ 10;
  }

  if (userValue == sum) {
    // print("$userValue is ArmStrong Number");
    return true;
  } else {
    // print("$userValue is not  ArmStrong Number");
    return false;
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
}*/
