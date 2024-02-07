import 'dart:io';

main() {
  var list_name = [111, 222, 333, 444, 555, 666];
  print(list_name);
    var objList = list_name.reversed ;
    
  // creating a new list with the object
  var revList = new List.from(objList);
  print(revList);}
  // print("Hello World");
  // int a = 4;
  // print(a);
  // print("Hello World $a");
  // //? this says that the value can also be null
  // int b = 100;
  // int c = 50;
  // print('The sum is ${a + b}');
  // dynamic x = "Somil Kwatra";
  // print("The type of x is ${x.runtimeType}");
  // dynamic q = 1;
  // print(q.runtimetype);
  // print('Enter something: ');

  // // Read the user input
  // String userInput = stdin.readLineSync()!;

  // // Display the input
  // print('You entered: $userInput');
  //--------------------------------
  // Question 1

  // stdout.write('Enter a string: ');

  // String userInput = stdin.readLineSync()!;

  // if (isPalindrome(userInput)) {
  //   print('$userInput is a palindrome.');
  // } else {
  //   print('$userInput is not a palindrome.');
  // }

// bool isPalindrome(String input) {
//   String cleanedInput = input.replaceAll(' ', '').toLowerCase();

//   return cleanedInput == cleanedInput.split('').reversed.join('');
// }
