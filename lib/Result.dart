import "package:flutter/material.dart";

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Recoding.dart';
import 'sub/SecondPage.dart';
import 'main.dart';

class Result extends StatefulWidget {
  @override
  State<Result> createState() => _MyHomePage();
}

class _MyHomePage extends State<Result> {
  String formattedDate =
  DateFormat('yyyy-MM-dd – kk:mm').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('뛰어라, Running Mate'),
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
              fontFamily:'BinggraeⅡ-Bold',
              color: Colors.orange,
              letterSpacing: 2.0,
              fontSize: 22.0,
              fontWeight: FontWeight.bold),
        ),
        body: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          formattedDate,
                          style: TextStyle(fontFamily:'BinggraeⅡ-Bold', fontSize: 15, color: Colors.amber),
                        ),
                        Text(
                          '실외 런닝',
                          style: TextStyle(fontFamily:'BinggraeⅡ-Bold', fontSize: 20, color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(width: 500, child: Divider(thickness: 2.0)),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: <Widget>[
                            Text(
                              '3.01',
                              style: TextStyle(fontFamily:'BinggraeⅡ-Bold', fontSize: 50, color: Colors.amber),
                            ),
                            Text(
                              'km',
                              style: TextStyle(fontFamily:'BinggraeⅡ-Bold', fontSize: 20, color: Colors.orange),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.directions_run),
                            Text(
                              '총 달린 거리',
                              style: TextStyle(fontFamily:'BinggraeⅡ-Bold', fontSize: 20, color: Colors.orange),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              '15:01',
                              style: TextStyle(fontFamily:'BinggraeⅡ-Bold', fontSize: 30, color: Colors.amber),
                            ),
                            Row(children: <Widget>[
                              Icon(Icons.timer, color: Colors.blue,),
                              Text(
                                '시간',
                                style: TextStyle(fontFamily:'BinggraeⅡ-Bold', fontSize: 20, color: Colors.orange),
                              ),
                            ])
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '05:00',
                              style: TextStyle(fontFamily:'BinggraeⅡ-Bold', fontSize: 30, color: Colors.amber),
                            ),
                            Row(children: <Widget>[
                              Icon(Icons.alarm_on, color: Colors.blue,),
                              Text(
                                '평균 페이스',
                                style: TextStyle(fontFamily:'BinggraeⅡ-Bold', fontSize: 20, color: Colors.orange),
                              ),
                            ]),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '430',
                              style: TextStyle(fontFamily:'BinggraeⅡ-Bold', fontSize: 30, color: Colors.amber),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.fastfood, color: Colors.blue,),
                                Text(
                                  '칼로리',
                                  style:
                                  TextStyle(fontFamily:'BinggraeⅡ-Bold', fontSize: 20, color: Colors.orange),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 100),
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(child: Text('홈으로', style: TextStyle(fontFamily:'BinggraeⅡ-Bold', fontSize: 20)),
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange),),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (_) => MyHomePage()));
                          })
                    ],
                  ),
                )
              ],
            )));
  }
}
