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
      debugShowCheckedModeBanner: false,
      title: 'Tabbar Example',
      home: LoginPage(),
    );

  }
}


class MyHomePage extends StatefulWidget {
  List<resultList> resultLists = new List.empty(growable:true); //
  final String? userid,password,height,weight;
  MyHomePage({this.userid,this.password,this.height,this.weight,
    required this.resultLists});

  @override
  State<StatefulWidget> createState(){
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController? controller;
  Color iconColor = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("달려라, Running Mate",style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w600)),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.close),
            onPressed: () => Navigator.pop(context, false),
          ),
        ],
      ),
      body: TabBarView(
        children: <Widget> [FirstPage(), SecondPage(weight: widget.weight, list: widget.resultLists),
          ThirdPage(userid: widget.userid,password: widget.password,
            height: widget.height,weight: widget.weight, list: widget.resultLists)],
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
  }

  void dispose(){
    controller!.dispose();
    super.dispose();
  }
}


