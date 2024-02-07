import "dart:io";

void main() {
  List<int> myDartList = [1, 2, 3, 4, 5];
  print(List);
  //////////////////////////////////////////////////////question 1///////////////////////////////////////////////
//   var obj_List = list.reversed;
//   var revList = new List.from(obj_List);
//   print(revList);

  // int firstElement = myDartList.first;
  // print("First element: $firstElement");



  /////////////////////////////////////////////////question 2///////////////////////////////////////////////////////////

  // bool isEmpty = myDartList.isEmpty;
  // print("Is the list empty? $isEmpty");

  // bool isNotEmpty = myDartList.isNotEmpty;
  // print("Is the list not empty? $isNotEmpty");

  // int lengthOfList = myDartList.length;
  // print("Length of the list: $lengthOfList");

  // int lastElement = myDartList.last;
  // print("Last element: $lastElement");

  // List<int> reversedList = myDartList.reversed.toList();
  // print("Reversed List: $reversedList");

  // try {
  //   int singleElement = myDartList.single;
  //   print("Single element: $singleElement");
  // } catch (e) {
  //   print("Error: $e");
  // }

  // myDartList.add(6);
  // print("List after adding an element: $myDartList");

  // myDartList.addAll([7, 8, 9]);
  // print("List after adding multiple elements: $myDartList");

  // myDartList.insert(2, 10);
  // print("List after inserting at index 2: $myDartList");

  // myDartList.insertAll(4, [11, 12, 13]);
  // print("List after inserting multiple values at index 4: $myDartList");

  // myDartList.replaceRange(1, 3, [20, 21, 22]);
  // print("List after replacing range from index 1 to 3: $myDartList");

  // myDartList.remove(20);
  // print("List after removing value 20: $myDartList");

  // myDartList.removeAt(3);
  // print("List after removing element at index 3: $myDartList");

  // myDartList.removeLast();
  // print("List after removing the last element: $myDartList");

  // myDartList.removeRange(2, 5);
  // print("List after removing elements from index 2 to 5: $myDartList");

  ////////////////////////////////////////////////////queston3 ///////////////////////////////////////////
  ///void main() {
  var a = <int>{10, 11, 12, 13, 14, 15};
  var b = <int>{12, 18, 29, 43};
  var c = <int>{2, 5, 10, 11, 32};

  var unionSet = a.union(b).union(c);
  print("Union of a, b, and c: $unionSet");

  var intersectionSet = a.intersection(b);
  print("Intersection of a and b: $intersectionSet");

  var differenceSet = b.difference(c);
  print("Difference of b and c: $differenceSet");
}


