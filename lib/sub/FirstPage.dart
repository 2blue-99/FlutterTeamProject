import "package:flutter/material.dart";

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber[300],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 700,
                width: 380,
                color: Colors.amber[300],
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    GestureDetector(
                      child: Card(
                        color: Colors.amber.shade50,
                        shape: RoundedRectangleBorder(
                          //모서리를 둥글게 하기 위해 사용
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                    width: 500,
                                    height: 130,
                                    color: Colors.amber.shade50,
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: SizedBox(
                                            width: 500,
                                            child: Text("이푸름",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    color: Colors.amber[700])),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Text("\n#석양#노을#감성\n날씨가 좋으니 하늘이 높아보여",
                                              style: TextStyle(fontSize: 20)),
                                        ),
                                      ],
                                    ))),

                            Image.asset('imageP/sky.png',
                                width: 500, height: 500),
                          ],
                        ),
                        elevation: 4.0, //그림자 깊이
                      ),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.amber.shade50,
                        shape: RoundedRectangleBorder(
                          //모서리를 둥글게 하기 위해 사용
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                    width: 500,
                                    height: 130,
                                    color: Colors.amber.shade50,
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: SizedBox(
                                            width: 500,
                                            child: Text("이승희",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    color: Colors.amber[700])),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Text("\n#퇴근#안녕#세상아#오늘도#고생했어",
                                              style: TextStyle(fontSize: 20)),
                                        ),
                                      ],
                                    ))),

                            Image.asset('imageP/sky2.png',
                                width: 500, height: 500),
                          ],
                        ),
                        elevation: 4.0, //그림자 깊이
                      ),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.amber.shade50,
                        shape: RoundedRectangleBorder(
                          //모서리를 둥글게 하기 위해 사용
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                    width: 500,
                                    height: 130,
                                    color: Colors.amber.shade50,
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: SizedBox(
                                            width: 500,
                                            child: Text("이호준",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    color: Colors.amber[700])),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Text("\n#한강#푸름\n푸름이는 하늘사진을 좋아해...",
                                              style: TextStyle(fontSize: 20)),
                                        ),
                                      ],
                                    ))),

                            Image.asset('imageP/sky3.png',
                                width: 500, height: 500),
                          ],
                        ),
                        elevation: 4.0, //그림자 깊이
                      ),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.amber.shade50,
                        shape: RoundedRectangleBorder(
                          //모서리를 둥글게 하기 위해 사용
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                    width: 500,
                                    height: 130,
                                    color: Colors.amber.shade50,
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: SizedBox(
                                            width: 500,
                                            child: Text("강태용",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    color: Colors.amber[700])),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Text("\n#퇴근#불금#외식#행복",
                                              style: TextStyle(fontSize: 20)),
                                        ),
                                      ],
                                    ))),

                            Image.asset('imageP/sky4.png',
                                width: 500, height: 500),
                          ],
                        ),
                        elevation: 4.0, //그림자 깊이
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
