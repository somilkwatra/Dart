// ///////////////////////question 1//////////////////////////////////////////////////////////////////

// typedef MathOperation = int Function(int a, int b);

// Map<String, MathOperation> getMathFunctions() => {
//       "add": (a, b) => a + b,
//       "subtract": (a, b) => a - b,
//       "multiply": (a, b) => a * b,
//       "divide": (a, b) => b == 0 ? throw ArgumentError("Cannot divide by zero") : a ~/ b,
//     };

// void main() {
//   var mathFunctions = getMathFunctions();

//   print("Addition: ${mathFunctions["add"]!(5, 3)}");
//   print("Subtraction: ${mathFunctions["subtract"]!(8, 3)}");
//   print("Multiplication: ${mathFunctions["multiply"]!(4, 6)}");
//   print("Division: ${mathFunctions["divide"]!(9, 3)}");
// }


// ////////////////////////question2 //////////////////////////////////////////
// typedef FactorialClosure = int Function(int x);

// FactorialClosure factorialFunction(int n) {
//   int factorial(int x) {
//     if (x <= 1) {
//       return 1;
//     } else {
//       return x * factorial(x - 1);
//     }
//   }

//   return (x) {
//     if (x <= n) {
//       return factorial(x);
//     } else {
//       throw ArgumentError("Input greater than specified limit");
//     }
//   };
// }

// void main() {
//   var Factorial1 = factorialFunction(3);
//   print("Factorial of 3: ${Factorial1(3)}");
// }

/////////////////////question3////////////////////
// typedef FilterCondition = bool Function(int);

// List<int> filterList(List<int> inputList, FilterCondition condition) {
//   return inputList.where(condition).toList();
// }

// void main() {
//   List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//   FilterCondition isEven = (int x) => x % 2 == 0;

//   List<int> filteredList = filterList(originalList, isEven);
//   print("Filtered List (Even Numbers): $filteredList");

//   FilterCondition isGreaterThan5 = (int x) => x > 5;

//   filteredList = filterList(originalList, isGreaterThan5);
//   print("Filtered List (Numbers Greater Than 5): $filteredList");
// }

////////////////////////question 4/////////////////////////////////////////////////////
// typedef FibonacciFunction = int Function(int n);

// FibonacciFunction generateFibonacciFunction() {
//   int fibonacci(int n) {
//     if (n <= 0) {
//       throw ArgumentError("Input should be a positive integer");
//     } else if (n == 1 || n == 2) {
//       return 1;
//     } else {
//       return fibonacci(n - 1) + fibonacci(n - 2);
//     }
//   }

//   return fibonacci;
// }

// void main() {
//  
//   var fibonacciFunction = generateFibonacciFunction();

//   int result = fibonacciFunction(5);
//   print("Fibonacci of 5: $result");

//   result = fibonacciFunction(8);
//   print("Fibonacci of 8: $result"); 
// }

////////////////////////question 5////////////////////////////////////////////
typedef MapperFunction = int Function(int);
typedef FilterFunction = bool Function(int);

List<int> processNumbers(List<int> numbers, MapperFunction mapper, FilterFunction filter) {
  return numbers.map(mapper).where(filter).toList();
}

void main() {
  List<int> originalNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  MapperFunction squareMapper = (int x) => x * x;
  FilterFunction isEvenFilter = (int x) => x % 2 == 0;

  List<int> processedNumbers = processNumbers(originalNumbers, squareMapper, isEvenFilter);
  print("Processed Numbers (Squared and Even): $processedNumbers");

  MapperFunction doubleMapper = (int x) => x * 2;
  FilterFunction isGreaterThan10Filter = (int x) => x > 10;

  processedNumbers = processNumbers(originalNumbers, doubleMapper, isGreaterThan10Filter);
  print("Processed Numbers (Doubled and Greater Than 10): $processedNumbers");
}



