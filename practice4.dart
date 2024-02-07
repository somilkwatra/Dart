///////////////////////////////////////////////////question1//////////////////////////////////////////
// int calculateProduct(int required,
//     {int named = 0, List<int> positional = const []}) {
//   int sum =
//       named + (positional.isEmpty ? 0 : positional.reduce((a, b) => a + b));
//   return required * sum;
// }

// void main() {
//   // Example usage:
//   int result1 = calculateProduct(2);
//   int result2 = calculateProduct(2, named: 3);
//   int result3 = calculateProduct(2, positional: [1, 2, 3]);

//   print('Result 1: $result1');
//   print('Result 2: $result2');
//   print('Result 3: $result3');
// }

/////////////////////////////////////////////question 2////////////////////////////////////////////////////////////

// bool checkConditions(String required, {int named = 0, List<int>? optional}) {
//   return required.length > named && (optional == null || optional.every((element) => element % 2 == 0));
// }

// void main() {
//   print(checkConditions("example"));
//   print(checkConditions("example", named: 3)); 
//   print(checkConditions("example", named: 3, optional: [2, 4, 6])); 
// }

//////////////////////////////////////////////question 3//////////////////////////////////////////////////////////////
String decimalToBinary(int decimalNum) {
  return decimalNum.toRadixString(2);
}

int binaryToDecimal(String binaryNum) {
  return int.parse(binaryNum, radix: 2);
}

String decimalToOctal(int decimalNum) {
  return decimalNum.toRadixString(8);
}

int octalToDecimal(String octalNum) {
  return int.parse(octalNum, radix: 8);
}

String octalToBinary(String octalNum) {
  int decimalNum = octalToDecimal(octalNum);
  return decimalToBinary(decimalNum);
}

String decimalToHexadecimal(int decimalNum) {
  return decimalNum.toRadixString(16);
}

int hexadecimalToDecimal(String hexadecimalNum) {
  return int.parse(hexadecimalNum, radix: 16);
}

String hexadecimalToBinary(String hexadecimalNum) {
  int decimalNum = hexadecimalToDecimal(hexadecimalNum);
  return decimalToBinary(decimalNum);
}

String hexadecimalToOctal(String hexadecimalNum) {
  int decimalNum = hexadecimalToDecimal(hexadecimalNum);
  return decimalToOctal(decimalNum);
}
void main() {
  int decimalNum = 25;

  String binaryNum = decimalToBinary(decimalNum);
  print("Decimal $decimalNum to Binary: $binaryNum");

  int convertedDecimal = binaryToDecimal(binaryNum);
  print("Binary $binaryNum to Decimal: $convertedDecimal");

  String octalNum = decimalToOctal(decimalNum);
  print("Decimal $decimalNum to Octal: $octalNum");

  convertedDecimal = octalToDecimal(octalNum);
  print("Octal $octalNum to Decimal: $convertedDecimal");

  String binaryFromOctal = octalToBinary(octalNum);
  print("Octal $octalNum to Binary: $binaryFromOctal");

  String hexadecimalNum = decimalToHexadecimal(decimalNum);
  print("Decimal $decimalNum to Hexadecimal: $hexadecimalNum");

  convertedDecimal = hexadecimalToDecimal(hexadecimalNum);
  print("Hexadecimal $hexadecimalNum to Decimal: $convertedDecimal");

  String binaryFromHexadecimal = hexadecimalToBinary(hexadecimalNum);
  print("Hexadecimal $hexadecimalNum to Binary: $binaryFromHexadecimal");

  String octalFromHexadecimal = hexadecimalToOctal(hexadecimalNum);
  print("Hexadecimal $hexadecimalNum to Octal: $octalFromHexadecimal");
}


