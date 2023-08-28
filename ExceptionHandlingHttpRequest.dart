import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async{
  // futures 
  var url = Uri.https('jsonplaeholder.typicode.com', 'users/1'); 
//   try{
//     final res = await http.get(url);
//       print(jsonDecode(res.body)['name']);
//   }
//   catch(e){
//     print('errot $e');
//   }
  http.get(url).then((val){
     print(jsonDecode(val.body)['name']);
  }).catchError((err){
    print(err);
  });
 
}
