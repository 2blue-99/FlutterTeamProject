import 'dart:math';

import 'package:lottie/lottie.dart';
import "package:flutter/material.dart";
import '../main.dart';
import '../resultList.dart';
import '../Recoding.dart';

class SecondPage extends StatefulWidget {
  List<resultList>? list;
  dynamic weight;
  SecondPage({Key? key, @required this.list, this.weight}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPage();

}

class _SecondPage extends State<SecondPage> {
  final nameController = TextEditingController();
  int random = Random().nextInt(4);
  int? _radioValue = 0;
  bool? flyExist = false;
  String? _type = "";
  Color myColor = Colors.amber.shade500;
  Color changeText = Colors.amber.shade900;
  String? typeText = "원하는 모드 클릭!";
  Color buttonColor = Colors.amber.shade500;
  Color textColor1 = Colors.amber.shade500;
  Color textColor2 = Colors.amber.shade500;
  Color textColor3 = Colors.amber.shade500;
  Color cardColor1 = Colors.white;
  Color cardColor2 = Colors.white;
  Color cardColor3 = Colors.white;
  Color pushCardColor = Colors.amber.shade100;
  Color basicCardColor = Colors.white;

  List tips = [
    "달리기하면 연골이 나갑니다.",
    "도시의 미세먼지를 마시세요.",
    "빠르게 달리다 넘어지세요.",
    "자외선에 익으세요."
  ];
  dynamic controller;

  @override
  void initState() {
    super.initState();
    controller = ListView;
    cardColor1 = Colors.white;
    cardColor2 = Colors.white;
    cardColor3 = Colors.white;
    textColor1 = Colors.amber.shade500;
    textColor2 = Colors.amber.shade500;
    textColor3 = Colors.amber.shade500;
    buttonColor = Colors.amber.shade500;
  }

  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: Container(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('[Today\'s Tip]',
                      style: TextStyle(fontSize: 17, color: Colors.white, height: 0)),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: Text('${tips[random]}',
                          style:
                          TextStyle(fontSize: 25, color: Colors.white, height: 1))),
                  Container(
                    height: 250,
                    color: Colors.amber.shade300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          child: Card(
                            color: cardColor1,
                            shape: RoundedRectangleBorder(
                              //모서리를 둥글게 하기 위해 사용
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                Lottie.network(
                                    'https://assets2.lottiefiles.com/packages/lf20_1ILlx2.json',
                                    width: 127),
                                Text("\nRunning\nFast",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 30, height: 1, color: textColor1))
                              ],
                            ),
                            elevation: 4.0, //그림자 깊이
                          ),
                          onTap: () {
                            if (textColor1 == myColor) {
                              setState(() {
                                cardColor1 = pushCardColor;
                                cardColor2 = basicCardColor;
                                cardColor3 = basicCardColor;
                                textColor1 = changeText;
                                textColor2 = myColor;
                                textColor3 = myColor;
                                buttonColor = changeText;
                                _type = "Fast Mode";
                                typeText = "빨리 달리기 모드";
                              });
                            }
                          },
                        ),
                        GestureDetector(
                          child: Card(
                            color: cardColor2,
                            shape: RoundedRectangleBorder(
                              //모서리를 둥글게 하기 위해 사용
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                // Image.asset("imageP/run.png", width: 150, height: 150,),
                                Lottie.network(
                                    'https://assets2.lottiefiles.com/packages/lf20_8wcbr8x0.json',
                                    width: 127),
                                Text("\nRunning",
                                    style: TextStyle(
                                        fontSize: 30, height: 1, color: textColor2))
                              ],
                            ),
                            elevation: 4.0, //그림자 깊이
                          ),
                          onTap: () {
                            if (textColor2 == myColor) {
                              setState(() {
                                cardColor1 = basicCardColor;
                                cardColor2 = pushCardColor;
                                cardColor3 = basicCardColor;
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
                            color: cardColor3,
                            shape: RoundedRectangleBorder(
                              //모서리를 둥글게 하기 위해 사용
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                Lottie.network(
                                    'https://assets8.lottiefiles.com/packages/lf20_bpn4s7tl.json',
                                    width: 127),
                                Text("\nWalking",
                                    style: TextStyle(
                                        fontSize: 30, height: 1, color: textColor3)),
                              ],
                            ),
                            elevation: 4.0, //그림자 깊이
                          ),
                          onTap: () {
                            if (textColor3 == myColor) {
                              setState(() {
                                cardColor1 = basicCardColor;
                                cardColor2 = basicCardColor;
                                cardColor3 = pushCardColor;
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
                  ),
                  Text(
                    '$typeText\n\n',
                    style: TextStyle(fontSize: 20, color: Colors.white, height: 2),
                  ),
                  Padding(
                      padding: EdgeInsets.all(25),
                      child: ElevatedButton(
                          child: Text("$_type Start! ",
                              style: TextStyle(fontSize: 40, color: buttonColor)),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(450, 70),
                            primary: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              print("hello");
                              myColor = Colors.amberAccent;
                            });
                            mainDataGiveGet(context);
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => (Recoding(widget.weight ,_type))),
                            // );
                          })),
                ],
              ))),
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

  mainDataGiveGet(BuildContext context) async {
    final resultData = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Recoding(widget.weight ,_type)),
    );
    widget.list?.add(resultData);
    // Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(resultLists: [resultData],)));
    print("resultData : ${resultData}");
    // Navigator.pop(context, resultData);
  }

}


