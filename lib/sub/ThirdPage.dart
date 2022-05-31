import "package:flutter/material.dart";
import '../resultList.dart';


class ThirdPage extends StatefulWidget {
  String? password;
  String? userid = "이푸름";
  String? height = "170";
  String? weight = "70";
  List<resultList>? list;
  ThirdPage({this.userid,this.password,this.height,this.weight, this.list});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  void initState(){
    if (widget.userid == null || widget.userid == ""){
      widget.userid = "이푸름";
    }
    if (widget.height == null || widget.height == ""){
      widget.height = "170";
    }
    if (widget.weight == null || widget.weight == ""){
      widget.weight = "70";
    }
  }
  // final List<resultList>? list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber.shade300,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("\n\n\n\n\n\n\n\n\n\n\n"),
                    Container(
                      width: 120,
                      child: Column(
                        children: <Widget>[
                          const Text(
                            "ID",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("${widget.userid}",
                                style: TextStyle(fontSize: 33, color: Colors.black)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      child: Column(
                        children: <Widget>[
                          Text("키(cm)", style: TextStyle(fontSize: 25,color: Colors.white)),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("${widget.height}",
                                style:
                                TextStyle(fontSize: 33, color: Colors.black)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      child: Column(
                        children: <Widget>[
                          Text("몸무게(kg)", style: TextStyle(fontSize: 25,color: Colors.white)),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("${widget.weight}",
                                style:
                                TextStyle(fontSize: 33, color: Colors.black)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            Text("\n"),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                  width: 400,
                  child: Row(
                    children: const <Widget>[
                      Icon(Icons.edit_note, size: 30),
                      Text("기록",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 25, color: Colors.black)),
                    ],
                  )),
            ),

            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 500,
                  height: 350,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white)),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.amber.shade400,
                        child: InkWell(
                          child: Text("[${index+1}] 날짜 : ${widget.list![index].date} / 시간 : ${widget.list![index].todayTime} / \n모드 : ${widget.list![index].type} / "
                              "거리 : ${widget.list![index].distance} / 시간 : ${widget.list![index].minuteTime}분 ${widget.list![index].secTime}초  / "
                              "칼로리 : ${widget.list![index].calorie}",
                            style: const TextStyle(fontSize: 15,color: Colors.white),
                          ),
                        ),
                      );
                    },
                    itemCount: widget.list!.length,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
