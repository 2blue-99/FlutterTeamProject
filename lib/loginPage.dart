import 'package:flutter/material.dart';
import 'package:teamproject/main.dart';


class LoginPage extends StatefulWidget {
  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //텍스트필드 값 추출
  TextEditingController userId = TextEditingController();
  TextEditingController PassWord = TextEditingController();
  TextEditingController Height = TextEditingController();
  TextEditingController Weight = TextEditingController();

  void _sendThirdPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return MyHomePage(userid: userId.text, password: PassWord.text,
          height: Height.text, weight: Weight.text, resultLists: [],);
    }));
  }

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.amber.shade300),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: Image.asset('imageP/picture.png'),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        //color: Colors.white
                      ),
                      width: 170,
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ID',style: TextStyle(color: Colors.white, fontSize: 38,
                              fontWeight: FontWeight.w600)),
                          Text('P.W',style: TextStyle(color: Colors.white, fontSize: 38,
                              fontWeight: FontWeight.w600)),
                          Text('Height',style: TextStyle(color: Colors.white, fontSize: 38,
                              fontWeight: FontWeight.w600)),
                          Text('Weight',style: TextStyle(color: Colors.white, fontSize: 38,
                              fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        //color: Colors.red
                      ),
                      height: 300,
                      width: 170,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextField(
                            controller: userId,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 4.0
                                    )
                                )
                            ),
                          ),
                          TextField(
                            controller: PassWord,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 4.0
                                    )
                                )
                            ),
                          ),
                          TextField(
                            controller: Height,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 4.0
                                    )
                                )
                            ),
                          ),
                          TextField(
                            controller: Weight,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 4.0
                                    )
                                )
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white
                    ),
                    child: Text('Login', style: TextStyle(fontSize: 40, color: Colors.amber.shade800)),
                    onPressed: (){
                      _sendThirdPage(context);
                      print(userId.text);
                      print(PassWord.text);
                      print(Height.text);
                      print(Weight.text);
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //텍스트가 지워졌을 때 컨트롤러도 지우게 만듦
  @override
  void dispose() {
    userId.dispose();
    PassWord.dispose();
    Height.dispose();
    Weight.dispose();
    super.dispose();
  }
}