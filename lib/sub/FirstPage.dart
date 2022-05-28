import "package:flutter/material.dart";
import 'package:lottie/lottie.dart';
import '../resultList.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber[300],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                // alignment: Alignment.,
                height: 700,
                width: 350,
                color: Colors.amber[300],
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    GestureDetector(
                      
                      child: Card(
                        // color: Colors.amber.shade100,
                        shape: RoundedRectangleBorder(  //모서리를 둥글게 하기 위해 사용
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("푸름",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color:Colors.amber[700]))),

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("날씨 좋은 하늘",style: TextStyle(fontSize: 20)),
                            ),
                            Image.asset('imageP/sky.png',width: 500,height: 500),
                          ],
                        ),
                        elevation: 4.0, //그림자 깊이
                      ),
                      onTap: (){
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        shape: RoundedRectangleBorder(  //모서리를 둥글게 하기 위해 사용
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                    child: Text("승희",style: TextStyle(fontSize: 30,color:Colors.amber[700]))
                                )),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("하늘 좋은 날씨",style: TextStyle(fontSize: 20)),
                            ),
                            Image.asset('imageP/sky2.png',width: 500,height: 500),
                          ],
                        ),
                        elevation: 4.0, //그림자 깊이
                      ),
                      onTap: (){
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        shape: RoundedRectangleBorder(  //모서리를 둥글게 하기 위해 사용
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                    child: Text("호준",style: TextStyle(fontSize: 30,color:Colors.amber[700]))
                                )),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("날씨 좋은 하늘",style: TextStyle(fontSize: 20)),
                            ),
                            Image.asset('imageP/sky3.png',width: 500,height: 500),
                          ],
                        ),
                        elevation: 4.0, //그림자 깊이
                      ),
                      onTap: (){
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        shape: RoundedRectangleBorder(  //모서리를 둥글게 하기 위해 사용
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                    child: Text("태용",style: TextStyle(fontSize: 30,color:Colors.amber[700]))
                                )),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("좋은 날씨 하늘",style: TextStyle(fontSize: 20)),
                            ),
                            Image.asset('imageP/sky4.png',width: 500,height: 500),
                          ],
                        ),
                        elevation: 4.0, //그림자 깊이
                      ),
                      onTap: (){
                      },
                    ),

                  ],
                ),
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
            ],
          ),
      ),
    ),
    );
  }
}