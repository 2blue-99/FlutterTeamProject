import "package:flutter/material.dart";
import '../animalItem.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
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
                          Text(
                            "사용자 정보",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text("\nID", style: TextStyle(
                              fontSize: 25, color: Colors.white))
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      child: Column(
                        children: <Widget>[
                          Text("키(cm)", style: TextStyle(
                              fontSize: 25)),
                          Text("\n170", style: TextStyle(
                              fontSize: 25, color: Colors.white))
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      child: Column(
                        children: <Widget>[
                          Text("몸무게(kg)", style: TextStyle(
                              fontSize: 25)),
                          Text("\n68", style: TextStyle(
                              fontSize: 25, color: Colors.white))
                        ],
                      ),
                    )
                  ],),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                          width: 400,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.edit_note, size: 30),
                              Text("기록", textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black)),
                            ],
                          )),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Container(
                          width: 400,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2,
                                  color: Colors.white)),
                          child: const Center(
                            child: Text("[  type / 날짜 / 거리 / 시간 / 칼로리  ]",
                              textAlign: TextAlign.center, style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),),
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Container(
                          width: 400,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2,
                                  color: Colors.white)),
                          // color: Colors.amber.shade700,
                          child: const Center(
                            child: Text("[  type / 날짜 / 거리 / 시간 / 칼로리  ]",
                              textAlign: TextAlign.center, style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),),
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Container(
                          width: 400,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2,
                                  color: Colors.white)),
                          // color: Colors.amber.shade700,
                          child: const Center(
                            child: Text("[  type / 날짜 / 거리 / 시간 / 칼로리  ]",
                              textAlign: TextAlign.center, style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),),
                          )
                      ),
                    ), Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Container(
                          width: 400,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2,
                                  color: Colors.white)),
                          // color: Colors.amber.shade700,
                          child: const Center(
                            child: Text("[  type / 날짜 / 거리 / 시간 / 칼로리  ]",
                              textAlign: TextAlign.center, style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),),
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Container(
                          width: 400,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2,
                                  color: Colors.white)),
                          // color: Colors.amber.shade700,
                          child: Center(
                            child: Text("[  type / 날짜 / 거리 / 시간 / 칼로리  ]",
                              textAlign: TextAlign.center, style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),),
                          )
                      ),
                    ),

                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
//
//
//
// class ThirdPage extends StatefulWidget {
//   const ThirdPage({Key? key}) : super(key: key);
//
//   @override
//   State<ThirdPage> createState() => _ThirdPageState();
// }
// class _ThirdPageState extends State<ThirdPage> {
//   String? type = "";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           //mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.fromLTRB(0, 30, 0, 50),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Container(
//                         width: 120,
//                         child: Column(
//                           children: <Widget>[
//                             Text(
//                               "사용자 정보",
//                               style: TextStyle(fontSize: 25),
//                             ),
//                             Text("\nID", style: TextStyle(fontSize: 20))
//                           ],
//                         ),
//                       ),
//                       Container(
//                         width: 120,
//                         child: Column(
//                           children: <Widget>[
//                             Text("키(cm)", style: TextStyle(fontSize: 25)),
//                             Text("\n170", style: TextStyle(fontSize: 20))
//                           ],
//                         ),
//                       ),
//                       Container(
//                         width: 120,
//                         child: Column(
//                           children: <Widget>[
//                             Text("몸무게(kg)", style: TextStyle(fontSize: 25)),
//                             Text("\n68", style: TextStyle(fontSize: 20))
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 child: Column(
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.all(15),
//                       child: Container(
//                         child: Text("$type, ",style: TextStyle(fontSize: 25)),
//                       ),
//                     ),
//                     Container(
//                       child: Text("hello"),
//                     ),
//                     Container(
//                       child: Text("hello"),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

