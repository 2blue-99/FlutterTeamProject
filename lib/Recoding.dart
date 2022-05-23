import 'dart:async';

import "package:flutter/material.dart";
import 'package:geolocator/geolocator.dart';
import 'package:latlong/latlong.dart';
import "Result.dart";

String formatDate(DateTime d) {
  return d.toString().substring(0, 19);
}

class Recoding extends StatefulWidget {
  @override
  _RecodingState createState() => _RecodingState();
}

class _RecodingState extends State<Recoding> {

  dynamic gap1 = "";
  dynamic gap2 = "";
  dynamic gap3 = "";
  dynamic gap4 = "";

  final Distance distance = Distance();
  dynamic nowLatitude;
  dynamic nowLongitude;
  var _icon = Icons.play_arrow;
  var _color = Colors.amber;
  dynamic result="";

  late Timer _timer;
  var _time = 0;
  var _isPlaying = false;
  List<String> _saveTimes = []; //기록할때 쓸 리스트

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  getLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    Position position = await Geolocator.
    getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    nowLatitude = position.latitude;
    nowLongitude = position.longitude;
  }

  num pointToPoint(double locate1, double locate2, double longitude1, double longitude2) {
    dynamic km = distance.as(
        LengthUnit.Kilometer, LatLng(locate1,longitude1), LatLng(locate2, longitude2));
    print('답은답은답은답은답은답은답은답은답은$km');
    return km;
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
              // getLocation();
              // gap1 = nowLatitude;
              // gap2 = nowLongitude;
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _reset();
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.timer_off, color: Colors.blue),
                        Text('리셋', style: TextStyle(color: Colors.blue))
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (Result())),
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
    var sec = _time ~/ 100;
    var minute = _time ~/ 6000;
    var hour = _time ~/ 60000;
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[Column(children: [
                Icon(Icons.timer, color: Colors.amber, size: 40,),
                Row(children: [
                  Text(
                    '$hour',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    ':$minute',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    ':$sec',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],)
              ],),
                Column(children: [
                  Icon(Icons.directions_walk, color: Colors.blue, size: 40,),
                  Row(children: [
                    Text(
                      '#',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],)
                ],),
                Column(children: [
                  Icon(Icons.no_food, color: Colors.blue, size: 40,),
                  Row(children: [
                    Text(
                      '0',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],)
                ],),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("현재 위치 : $gap1 , $gap2"),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("마지막 위치 : $gap3 , $gap4"),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("움직인 거리 : $result"),
            )
          ],

        ),
      ),
    );
  }

  void _click() {
    _isPlaying = !_isPlaying;
    if (_icon == Icons.play_arrow) {
      getLocation();
      gap1 = nowLatitude;
      gap2 = nowLongitude;
      print("처음 꺼 ${gap1}, ${gap2}");
      _icon = Icons.pause;
      _color = Colors.grey;
      // if (gap1 == null && gap2 == null) {
      //   getLocation();
      //   gap1 = nowLatitude;
      //   gap2 = nowLongitude;
      //   print("처음 꺼 ${gap1}, ${gap2}");
      // }
      _start();
    } else {
      getLocation();
      // gap3 = nowLatitude;
      // gap4 = nowLongitude;

      // gap3 = 36.792838;
      // gap4 = 127.106366;

      gap3 = 36.734976;
      gap4 = 127.077838;

      print("처음 꺼 ${gap1}, ${gap2}");
      print("두번째 꺼${gap3}, ${gap4}");
      //
      if(gap1 != gap2) {
        result = pointToPoint(gap1, gap3, gap2, gap4);
      }
      //
      print('답은 : $result');

      _icon = Icons.play_arrow;
      _color = Colors.amber;
      _pause();
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

