import 'dart:async';
import 'dart:io';
import "package:flutter/material.dart";
import 'package:geolocator/geolocator.dart';
import 'package:latlong/latlong.dart';
import "Result.dart";

String formatDate(DateTime d) {
  return d.toString().substring(0, 19);
}



class Recoding extends StatefulWidget {
  String? weight, typeText;
  Recoding(this.weight ,this.typeText);
  @override
  _RecodingState createState() => _RecodingState();
}



class _RecodingState extends State<Recoding> {

  num count = 0;
  dynamic gap1 = "";
  dynamic gap2 = "";
  dynamic gap3 = "";
  dynamic gap4 = "";
  dynamic now1="";
  dynamic now2="";
  final Distance distance = Distance();
  var _icon = Icons.play_arrow;
  var _color = Colors.amber;
  num result = 0;
  dynamic hap = 0;
  bool downloading = false;
  late Timer _timer;
  dynamic _time = 0;
  var _isPlaying = false;
  List<String> _saveTimes = []; //기록할때 쓸 리스트
  dynamic nowTime;
  dynamic sec;
  dynamic minute;
  dynamic hour;


  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    // startGetLocation();
    print("@@@@@@@@@@@@@@@@@@@@@@@@@@$now1 $now2");
    // gap1 = 0;
    //     // gap2 = 0;
    //     // gap3 = 0;
    //     // gap4 = 0;
    //     // now1 = 0;
    //     // now2 = 0;
    // result = 0;
    // hap = 0;
  }

  void startGetLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    Position position = await Geolocator.
    getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState((){
      gap1 = position.latitude;
      gap2 = position.longitude;
      print("start : $gap1 $gap2");
    });
  }

  void endGetLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    Position position = await Geolocator.
    getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState((){
      gap3 = position.latitude;
      gap4 = position.longitude;
      print("start : $gap3 $gap4");
    });
  }

  void pointToPoint() {
    Timer(Duration(seconds: 1), () {
      dynamic km = distance.as(
          LengthUnit.Meter, LatLng(gap1, gap3),
          LatLng(gap2, gap4));
      setState((){
        hap = km;
      });
    });
  }

  // void keepGetLocation() async {
  //   while(true) {
  //     if (_isPlaying == false){
  //       break;
  //     }
  //     sleep(const Duration(seconds:2));
  //     LocationPermission permission = await Geolocator.requestPermission();
  //     Position position = await Geolocator.
  //     getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  //     gap3 = position.latitude;
  //     gap4 = position.longitude;
  //     result = pointToPoint(gap1, gap3, gap2, gap4);
  //     if (result<=1){
  //       result=0;
  //     }
  //     hap = hap + result;
  //     count++;
  //     gap1 = gap3;
  //     gap2 = gap4;
  //   }
  // }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: Text('기록중'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.close),
            onPressed: () => Navigator.pop(context, false),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.amber[300],
        elevation: 0.0,
      ),
      body: _body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            setState(() {
              _click();
            }),
        child: Icon(_icon),
        backgroundColor: _color,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).pop();
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back, color: Colors.blue),
                        Text('뒤로 가기', style: TextStyle(color: Colors.blue))
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      // print("시간입니다. ${_time ~/ 100}");
                      print("$sec,$minute,$hour");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (Result( sec : sec,
                                minute : minute ,hap: hap.toString(),
                              weight: widget.weight, typeText : widget.typeText))),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.stop, color: Colors.blue),
                        Text('결과', style: TextStyle(color: Colors.blue))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _body() {
    sec = _time ~/ 100;
    minute = _time ~/ 6000;
    hour = _time ~/ 60000;
    while (sec > 59)
      sec -= 60;
    while (minute > 59)
      minute -= 60;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[Column(children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: const Icon(Icons.timer, color: Colors.amber, size: 40,),
                    ),
                    Text("시간   ",style: TextStyle(fontSize: 50),),
                    Text(
                      '$hour',
                      style: TextStyle(fontSize: 50),
                    ),
                    Text(
                      ':$minute',
                      style: TextStyle(fontSize: 50),
                    ),
                    Text(
                      ':$sec',
                      style: TextStyle(fontSize: 50),
                    ),
                  ],)
                ],),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10, 0.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: const Icon(Icons.add_road, color: Colors.amber, size: 40,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("거리    ${hap}m",style: TextStyle(fontSize: 50),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("시작 위치 : $gap1  $gap2"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("마지막위치 : $gap3  $gap4"),
            ),
          ],

        ),
      ),
    );
  }

  void _click() {
    _isPlaying = !_isPlaying;
    if (_icon == Icons.play_arrow) {
      if(_time != 0){
        _reset();
      }
      // _reset();
      _icon = Icons.pause;
      _color = Colors.grey;
      _start();
      startGetLocation();
      // gap1 = now1;
      // gap2 = now2;
    } else {
      _icon = Icons.play_arrow;
      _color = Colors.amber;
      _pause();
      endGetLocation();
      pointToPoint();
      // nowTime = _time;/
      // gap3 = now1;
      // gap4 = now2;
      // Timer(Duration(seconds: 1), () {
      //
      // });


    }
  }

  void _start() {
    _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {
        _time++;
      });
    });
  }

  void _pause() {
    _timer.cancel();
  }

  void _reset() {
    setState(() {
      gap1 = 0;
      gap2 = 0;
      gap3 = 0;
      gap4 = 0;
      now1 = 0;
      now2 = 0;
      result = 0;
      hap = 0;
      if (_icon == Icons.pause) {
        _icon = Icons.play_arrow;
        _color = Colors.amber;
      }
      _isPlaying = false;
      _timer.cancel();
      _time = 0;
    });

  }
}

