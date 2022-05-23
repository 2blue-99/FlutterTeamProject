import 'package:flutter/material.dart';

class Pureum extends StatefulWidget {

  @override
  State<Pureum> createState() => _PureumState();
}

class _PureumState extends State<Pureum> {
  @override
  void initState(){
    super.initState();
    print("@@@@@@@@@@@@@@@@@@@@@@@@@@initState is called");
  }

  @override
  void dispose(){

  }
  @override
  Widget build(BuildContext context) {
    print("build is called");
    return Scaffold(
      body: Container(
        child: Text("\n\n\n\n\n\n\nssssssssssssssssssssssssss"),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// class Puruem extends StatelessWidget {
//   const Puruem({Key? key}) : super(key: key);
//
//   Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
//
//   Future<Position> getCurrentUserLocation() async {
//     return Geolocator()
//         .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
//         .then((location) {
//       return location;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           child : Text("aaaaaaaaaaaaaaaaaaaa")
//         ),
//       ),
//     );
//   }
// }
