// import 'dart:io';
// import 'dart:math';

// void main() {
//   print('Welcome to Rock-Paper-Scissors against the computer!');

//   stdout.write('Enter your choice (rock, paper, or scissors): ');
//   String playerChoice = stdin.readLineSync()?.toLowerCase() ?? '';

//   List<String> choices = ['rock', 'paper', 'scissors'];
//   Random random = Random();
//   String computerChoice = choices[random.nextInt(choices.length)];

//   print('\nYou chose $playerChoice.');
//   print('Computer chose $computerChoice.\n');

//   if (playerChoice == computerChoice) {
//     print("It's a tie!");
//   } else if (
//       (playerChoice == 'rock' && computerChoice == 'scissors') ||
//       (playerChoice == 'paper' && computerChoice == 'rock') ||
//       (playerChoice == 'scissors' && computerChoice == 'paper')) {
//     print('You win!');
//   } else {
//     print('Computer wins!');
//   }
// }

/////////////////////questions 2///////////////////////////
// bool isSubset(Set<dynamic> subset, Set<dynamic> set) {
//   return subset.every((element) => set.contains(element));
// }

// void main() {
//   // Example usage:
//   Set<int> subset = {1, 2};
//   Set<int> set = {1, 2, 3, 4, 5};

//   if (isSubset(subset, set)) {
//     print('$subset is a subset of $set.');
//   } else {
//     print('$subset is not a subset of $set.');
//   }
// }


///////////////////////////question 3////////////////////////////////
// Set<T> union<T>(Set<T> set1, Set<T> set2) {
//   Set<T> result = Set<T>.from(set1);
//   result.addAll(set2);
//   return result;
// }

// void main() {
//   // Example usage:
//   Set<int> set1 = {1, 2, 3};
//   Set<int> set2 = {3, 4, 5};

//   Set<int> result = union(set1, set2);
//   print('Union of $set1 and $set2: $result');
// }

///////////////////////question 4////////////////////////////
// Set<T> intersection<T>(Set<T> set1, Set<T> set2) {
//   return set1.where((element) => set2.contains(element)).toSet();
// }

// void main() {
//   // Example usage:
//   Set<int> set1 = {1, 2, 3, 4};
//   Set<int> set2 = {3, 4, 5, 6};

//   Set<int> result = intersection(set1, set2);
//   print('Intersection of $set1 and $set2: $result');
// }

///////////////////////question 5//////////////////////////////
import 'dart:io';

void main() {
  Map<String, bool> libraryCatalog = {};

  while (true) {
    print('\nLibrary Catalog System');
    print('1. Add Book');
    print('2. Check Out Book');
    print('3. View Library Status');
    print('4. Exit');
    stdout.write('Enter your choice (1-4): ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addBook(libraryCatalog);
        break;
      case '2':
        checkOutBook(libraryCatalog);
        break;
      case '3':
        viewLibraryStatus(libraryCatalog);
        break;
      case '4':
        exit(0);
        break;
      default:
        print('Invalid choice. Please enter a number between 1 and 4.');
    }
  }
}

void addBook(Map<String, bool> catalog) {
  stdout.write('Enter the title of the book: ');
  String title = stdin.readLineSync()!;
  catalog[title] = true;
  print('$title has been added to the library.');
}

void checkOutBook(Map<String, bool> catalog) {
  stdout.write('Enter the title of the book to check out: ');
  String title = stdin.readLineSync()!;
  
  if (catalog.containsKey(title) && catalog[title]!) {
    catalog[title] = false;
    print('$title has been checked out.');
  } else {
    print('Book not found or already checked out.');
  }
}

void viewLibraryStatus(Map<String, bool> catalog) {
  print('\nLibrary Status:');
  if (catalog.isEmpty) {
    print('The library is empty.');
  } else {
    catalog.forEach((title, isAvailable) {
      print('$title - ${isAvailable ? "Available" : "Checked Out"}');
    });
  }
}



