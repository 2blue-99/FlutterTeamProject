// import "package:flutter/material.dart";
// import 'package:teamproject/sub/SecondPage.dart';
// import './sub/SecondPage.dart';
// import 'main.dart';

import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String userId = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget> [
            Text("ssssssssssssssssssssss"),
            makeRowContainer('ID',true),
            makeRowContainer('Password',false),
            makeRowContainer('Height', false),
            makeRowContainer('Weight', false),
            Container(child: ElevatedButton(
                child: Text('LOGIN', style: TextStyle(fontSize: 20)),
                onPressed: (){

                }
            ))
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }

  Widget makeRowContainer(String title, bool isUserName){
    return Container(
      child: Row(
        children: <Widget> [
          makeText(title),
          makeTextField(isUserName),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      padding: EdgeInsets.only(left: 60, right: 60, top: 8, bottom: 8),
    );
  }

  Widget makeText(String title){
    return Text(
      title,
      style: TextStyle(
          fontSize: 20
      ),
    );
  }

  Widget makeTextField(bool isUserName){
    return Container(
      child: TextField(
          controller: TextEditingController(),
          style: TextStyle(fontSize: 20, color: Colors.black),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0
                ),
              ),
              contentPadding: EdgeInsets.all(12)
          ),
          onChanged: (String str){
            if(isUserName)
              userId = str;
            else
              password = str;
          }
      ),
      width: 200,
      padding: EdgeInsets.only(left: 16),
    );
  }
}



//
// class LoginPage extends StatefulWidget {
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child: Column(
//             children: <Widget>[
//               Padding(
//                 padding: EdgeInsets.all(50),
//                 child: ElevatedButton(
//                   child: Text("login"),
//                   onPressed: (){
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => (SecondPage())),
//                     );
//                   }
//                     )
//                   ),
//             ],
//           ),)
//     ),
//     );
//   }
// }
