

import 'package:flutter/material.dart';
import './sub/FirstPage.dart';
import './sub/SecondPage.dart';
import './sub/ThirdPage.dart';
import 'animalItem.dart';
// import 'location.dart';
// import 'loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabbar Example',
      // home: MyHomePage(),
      home: LoginPage()
      // home: Pureum(),

    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                    padding:  EdgeInsets.all(50),
                    child: ElevatedButton(
                        child:  Text("login"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (MyHomePage())),
                          );
                        }
                    )
                ),
              ],
            ),)
      ),
    );
  }
}



class MyHomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState(){
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController? controller;
  Color iconColor = Colors.amber;
  List<Animal> animalList = new List.empty(growable:true); //동물정보 담을 리스트
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("뛰어라, Running Mate",style: TextStyle(color: Colors.orange),),
        backgroundColor: Colors.white,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.close),
            onPressed: () => Navigator.pop(context, false),
          ),
        ],
      ),
      body: TabBarView(
        children: <Widget> [FirstPage(list:animalList), SecondPage(list:animalList), ThirdPage()],
        controller: controller,
      ),
      bottomNavigationBar: TabBar(
        tabs: const <Tab>[
          Tab(icon: Icon(Icons.person_add, color: Colors.orange)),
          Tab(icon: Icon(Icons.directions_run, color: Colors.orange,)),
          Tab(icon: Icon(Icons.edit_note, color: Colors.orange)),
        ], controller: controller,
      ),
    );
  }


  void initState(){
    super.initState();
    controller = TabController(length: 3, vsync: this,initialIndex: 1);

    // animalList.add(Animal(animalName: "A", kind: "animal", imagePath: "imageP/ani1.png"));
    // animalList.add(Animal(animalName: "B", kind: "animal", imagePath: "imageP/ani2.png"));
    // animalList.add(Animal(animalName: "C", kind: "animal", imagePath: "imageP/ani3.png"));
    // animalList.add(Animal(animalName: "D", kind: "animal", imagePath: "imageP/ani4.png"));
    // animalList.add(Animal(animalName: "E", kind: "animal", imagePath: "imageP/ani5.png"));

  }

  void dispose(){
    controller!.dispose();
    super.dispose();
  }
}



