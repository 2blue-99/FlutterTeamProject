
import 'dart:math';

import 'package:lottie/lottie.dart';
import "package:flutter/material.dart";
import '../animalItem.dart';
import '../Recoding.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPage();
  List<Animal>? list;
  SecondPage({Key? key, @required this.list}) : super(key: key);
}

class _SecondPage extends State<SecondPage> {
  final nameController = TextEditingController();
  int random = Random().nextInt(4);
  int? _radioValue = 0;
  bool? flyExist = false;
  String? _type = "";
  Color myColor = Colors.amber.shade600;
  Color changeText = Colors.amber.shade900;
  String? typeText = "원하는 모드 클릭!";
  Color buttonColor = Colors.amber.shade500;
  Color textColor1 = Colors.amber.shade600;
  Color textColor2 = Colors.amber.shade600;
  Color textColor3 = Colors.amber.shade600;
  List tips = [
    "달리기하면 연골이 나갑니다.",
    "도시의 미세먼지를 마시세요.",
    "빠르게 달리다 넘어지세요.",
    "자외선에 익으세요."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: Container(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('[Today\'s Tip]', style: TextStyle(
                      fontSize: 17, color: Colors.white, height: 0)),

                  Padding(
                      padding: EdgeInsets.all(20),
                      child: Text('${tips[random]}', style: TextStyle(
                          fontSize: 25, color: Colors.white, height: 1))),


                  Container(
                    height: 250,
                    color: Colors.amber.shade300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        GestureDetector(
                          child: Card(
                            shape: RoundedRectangleBorder( //모서리를 둥글게 하기 위해 사용
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                Lottie.network(
                                    'https://assets4.lottiefiles.com/packages/lf20_Pkg2zS.json',
                                    width: 150),
                                Text("Weight", style: TextStyle(
                                    fontSize: 40, height: 2, color: textColor1))
                              ],
                            ),
                            elevation: 4.0, //그림자 깊이
                          ),
                          onTap: () {
                            if (textColor1 == myColor) {
                              setState(() {
                                textColor1 = changeText;
                                textColor2 = myColor;
                                textColor3 = myColor;
                                buttonColor = changeText;
                                _type = "Weight";
                                typeText = "운동 모드";
                              });
                            }
                          },
                        ),
                        GestureDetector(
                          child: Card(
                            shape: RoundedRectangleBorder( //모서리를 둥글게 하기 위해 사용
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                // Image.asset("imageP/run.png", width: 150, height: 150,),
                                Lottie.network(
                                    'https://assets2.lottiefiles.com/packages/lf20_8wcbr8x0.json',
                                    width: 150),
                                Text("Running", style: TextStyle(
                                    fontSize: 40, height: 2, color: textColor2))
                              ],
                            ),
                            elevation: 4.0, //그림자 깊이
                          ),
                          onTap: () {
                            if (textColor2 == myColor) {
                              setState(() {
                                textColor1 = myColor;
                                textColor2 = changeText;
                                textColor3 = myColor;
                                buttonColor = changeText;
                                _type = "Running";
                                typeText = "달리기 모드";
                              });
                            }
                          },
                        ),
                        GestureDetector(
                          child: Card(
                            shape: RoundedRectangleBorder( //모서리를 둥글게 하기 위해 사용
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                Lottie.network(
                                    'https://assets8.lottiefiles.com/packages/lf20_bpn4s7tl.json',
                                    width: 150),
                                Text("Walking", style: TextStyle(fontSize: 40,
                                    height: 2,
                                    color: textColor3)),
                              ],
                            ),
                            elevation: 4.0, //그림자 깊이
                          ),
                          onTap: () {
                            if (textColor3 == myColor) {
                              setState(() {
                                textColor1 = myColor;
                                textColor2 = myColor;
                                textColor3 = changeText;
                                buttonColor = changeText;
                                _type = "Walking";
                                typeText = "걷기 모드";
                              });
                            }
                          },
                        ),
                      ],
                    ),
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ),

                  Text('$typeText\n\n', style: TextStyle(
                      fontSize: 20, color: Colors.white, height: 2),),

                  Padding(
                      padding: EdgeInsets.all(50),

                      child: ElevatedButton(

                          child: Text("$_type Strat! ",
                              style: TextStyle(
                                  fontSize: 40, color: buttonColor)),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(300, 70),
                            primary: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              myColor = Colors.amberAccent;
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (Recoding())),
                            );
                            var animal = Animal(
                                animalName: nameController.value.text,
                                kind: getKind(_radioValue),
                                imagePath: _type,
                                flyExist: flyExist
                            );
                          }
                      )
                  ),
                ],
              )
          )
      ),
    );
  }

  _radioChange(int? value) {
    setState(() {
      _radioValue = value;
    });
  }

  getKind(int? radioValue) {
    switch (radioValue) {
      case 0:
        return "Inseaaaaaaaact";
      case 1:
        return "Plants";
      case 2:
        return "Animal";
    }
  }
}