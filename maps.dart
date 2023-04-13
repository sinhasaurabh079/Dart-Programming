void main() {
  // maps
  // in dart maps are dictionary like data types that ecist in key-value paur
// syntax: var map_name-{key1:value1,
//                       key2:value2,
//                        and so on}
// keys must be unique for diferrent data and map is flexible with size
// there is no order value is find on the basis of keys
  var mp = {'1': 'val1', '2': 2, '3': 4.5, '4': true};

  // print(mp['2']);
  // // different map functions
  // print(mp.isEmpty);
  // print(mp.isNotEmpty);
  // print(mp.length);
  // print(mp.keys);
  // print(mp.values);
  // print(mp.containsKey('1'));
  // print(mp.containsValue(false));
  // print(mp.remove('1'));
  // print(mp);

  // final vs const keywords
  // final variables cant override
  final name = "ram";

  // const variale must be initialised at the time pf declaaration
  const pi = 3.14;

  final no = [1, 2, 3, 4, 5];  // we can made compile time changes but cant be reassigned 
  print(no);
  //  no=[23,23,233,32];  error: final variable can be set only once
  no.add(6);
  print(no);   // but new memers ca be added up

const no1 = [1, 2, 3, 4, 5];  // now it becomes unmodifiable throught the program

}
