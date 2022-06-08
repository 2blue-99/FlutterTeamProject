import 'dart:async';
import "package:flutter/material.dart";
import 'package:geolocator/geolocator.dart';
import "Result.dart";

class Recoding extends StatefulWidget {
  String? weight, typeText;
  Recoding(this.weight ,this.typeText);
  @override
  _RecodingState createState() => _RecodingState();
}



class _RecodingState extends State<Recoding> {
  dynamic resultData;
  num count = 0;
  dynamic gap1 = "";
  dynamic gap2 = "";
  dynamic gap3 = "";
  dynamic gap4 = "";
  dynamic now1="";
  dynamic now2="";
  var _icon = Icons.play_arrow;
  var _color = Colors.amber;
  num result = 0;
  dynamic hap = 0;
  bool downloading = false;
  late Timer _timer;
  dynamic _time = 0;
  var _isPlaying = false;
  dynamic sec;
  dynamic minute;
  dynamic hour;


  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startGetLocation() async {
    Position position = await Geolocator.
    getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState((){
      gap1 = position.latitude;
      gap2 = position.longitude;
    });
  }

  void endGetLocation() async {
    Position position = await Geolocator.
    getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState((){
      gap3 = position.latitude;
      gap4 = position.longitude;
      print("start : $gap3 $gap4");
      pointToPoint();
    });
  }

  void pointToPoint() {
    dynamic meter = Geolocator.distanceBetween(gap2, gap1, gap4, gap3);
    setState(() {
      hap = meter.toStringAsFixed(1);
    });
  }




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
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context, resultData);
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
                      mainDataGiveGet(context);
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
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[Column(children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: const Icon(Icons.timer, color: Colors.amber, size: 40,),
                    ),
                    Text("시간  ",style: TextStyle(fontSize: 50),),
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
                    padding: const EdgeInsets.all(15.0),
                    child: const Icon(Icons.add_road, color: Colors.amber, size: 40,),
                  ),
                  Text("거리  ${hap}m",style: TextStyle(fontSize: 50),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 60, 0.0, 0.0),
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
      _icon = Icons.pause;
      _color = Colors.grey;
      _start();
      startGetLocation();

    } else {
      _icon = Icons.play_arrow;
      _color = Colors.amber;
      _pause();
      endGetLocation();

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

  mainDataGiveGet(BuildContext context) async {
    resultData = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Result( sec : sec,
            minute : minute ,hap: hap.toString(),
            weight: widget.weight, typeText : widget.typeText)));
  }

}
