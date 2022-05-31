
import 'loginPage.dart';
import 'package:flutter/material.dart';
import './sub/FirstPage.dart';
import './sub/SecondPage.dart';
import './sub/ThirdPage.dart';
import 'resultList.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabbar Example',
      // home: MyHomePage(),
      home: LoginPage(),
      // home: Pureum(),
      initialRoute: "/",
      // routes:{"/":(context)
    );
  }
}


class MyHomePage extends StatefulWidget {
  List<resultList> resultLists = new List.empty(growable:true); //동물정보 담을 리스트
  final String? userid,password,height,weight;
  MyHomePage({this.userid,this.password,this.height,this.weight, required this.resultLists});


  @override
  State<StatefulWidget> createState(){
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController? controller;
  Color iconColor = Colors.amber;

  dynamic leepureum;
  // List<resultList> resultLists = new List.empty(growable:true); //동물정보 담을 리스트

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("뛰어라, Running Mate",style: TextStyle(color: Colors.orange),),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.close),
            onPressed: () => Navigator.pop(context, false),
          ),
        ],
      ),
      body: TabBarView(
        children: <Widget> [FirstPage(), SecondPage(weight: widget.weight, list: widget.resultLists), ThirdPage(userid: widget.userid,password: widget.password,
            height: widget.height,weight: widget.weight, list: widget.resultLists)],

        controller: controller,
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.white,
      //   child: Text("Start",style: TextStyle(fontSize : 20, color : Colors.amber.shade300)),
      //   onPressed: () {  },),

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

    // widget.resultLists.add(resultList(type: 5, distance: 5, time: 5, calorie: 5, averageSpeed: 5));
    // widget.resultLists.add(resultList(type: 5, distance: 5, time: 5, calorie: 5, averageSpeed: 5));
    // widget.resultLists.add(resultList(type: 5, distance: 5, time: 5, calorie: 5, averageSpeed: 5));
  }

  void dispose(){
    controller!.dispose();
    super.dispose();
  }
}



