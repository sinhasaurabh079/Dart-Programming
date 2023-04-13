 void main() {
// // var implicilty determines data type based on the assined value
   var sub = "Raman";

// // dynamic var allows same var to be used to store multiple data type value
  var s;
//   // or dynamic s;
  s = 1;
  print(s);
  s = "a";
  print(s);
  s = 1.00;
//   // s stores int, string, float
//   // dynamic var allows us to override data type at run time
   print(s);
// }

// -------------------------------

// functions
void main() {
  var myC = mYClass(); //myC =  object of myClass and mYClass() is a constructor

  // myC.printName("Hello");
  // myC.printName("avdv");
  // myC.printName("adafdav");
  print(myC.add(5, 6));
  print(myC.add(15, 16));

//------------------------------
// list
/*
   -> dart list is similar to array, which is ordered collection of objects
   -> syntax : var list1 = [10,12,13]
   -> 0-indexing is followed
*/
  var listNames = [10, 12, 13, 14];
  listNames[1] = 11;

  listNames.add(50); // append 50 in array

  // can replace particular range of array
  listNames.replaceRange(0, 4, [1, 2, 3, 4]);

  //  removing element
  // listNames.removeLast();
  // listNames.remove(3);
  // listNames.removeAt(1);
  // listNames.removeRange(0, 3);

  print('Length: ${listNames.length}');
  // reversed gives only reverse pf list not reverses it
  print('Reversed: ${listNames.reversed}');
  print('First Ele: ${listNames.first}');
  print('Last Ele: ${listNames.last}');
  print('Empty: ${listNames.isEmpty}');
  print('Not Empty: ${listNames.isNotEmpty}');
  print('Element at index 2: ${listNames.elementAt(2)}');

  print('$listNames');

  // blank list
  var names = [];
  names.add("Rama");
  names.add(13.5);

  // names.addAll(listNames);
  // list in dynaic and can store all datatypes

  // insert at particular index
  // names.insert(2, 4);

  // we can also add wholea array from particular index
  names.insertAll(3, listNames);
  print('$names');

  // add() adds element at last
  // insert() adds element at particular index
}

class mYClass {
  mYClass() {
    //default constructor
    print('object is created');
  }
  void printName(String name) {
    // declaration
    print(name); // defination
  }

  int add(int a, int b) {
    return a + b;
  }
}
