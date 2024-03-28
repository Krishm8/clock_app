import 'dart:math';
import 'package:flutter/material.dart';
import 'detail.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => ClockUI(),
        "digital": (context) => digital(),
        "strap": (context) => strap(),
      },
      // home: ClockUI(),
    ),
  );
}

class ClockUI extends StatefulWidget {
  const ClockUI({super.key});

  @override
  State<ClockUI> createState() => _ClockUIState();
}

class _ClockUIState extends State<ClockUI> {
  Duration duration = Duration();

  @override
  void initState() {
    super.initState();
    DateTime dateTime = DateTime.now();
    duration = Duration(
        seconds: dateTime.second,
        minutes: dateTime.minute,
        hours: dateTime.hour);
    timer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Analoge Watch"),
      ),
      drawer: NavigationDrawer(children: [
        UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),
            accountName: Text("Krish Makadia"),
            accountEmail: Text("krishmakadia7@gmail.com")),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "Analog Watch",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "digital");
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Digital Watch",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "strap");
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Strap Watch",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        )
      ]),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Colors.blueAccent,
                    Colors.white,
                  ],
                  radius: 0.6,
                ),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 10,
                    blurRadius: 25,
                    color: Colors.grey,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Text(
                        "|",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        "|",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Transform.rotate(
                    angle: 1 / 6 * pi,
                    child: Column(
                      children: [
                        Text(
                          "|",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "|",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Transform.rotate(
                    angle: 2 / 6 * pi,
                    child: Column(
                      children: [
                        Text(
                          "|",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "|",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Transform.rotate(
                    angle: 3 / 6 * pi,
                    child: Column(
                      children: [
                        Text(
                          "|",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "|",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Transform.rotate(
                    angle: 4 / 6 * pi,
                    child: Column(
                      children: [
                        Text(
                          "|",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "|",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Transform.rotate(
                    angle: 5 / 6 * pi,
                    child: Column(
                      children: [
                        Text(
                          "|",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "|",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Transform.rotate(
                    angle: duration.inHours / 6 * pi,
                    child: Container(
                      width: 6,
                      height: 200,
                      margin: EdgeInsets.only(bottom: 100, top: 50),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: duration.inMinutes / 30 * pi,
                    child: Container(
                      width: 4,
                      height: 200,
                      margin: EdgeInsets.only(bottom: 100, top: 20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: duration.inSeconds / 30 * pi,
                    child: Container(
                      width: 2,
                      height: 200,
                      margin: EdgeInsets.only(bottom: 100, top: 5),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void timer() async {
    await Future.delayed(Duration(seconds: 1), () {});
    duration = Duration(seconds: duration.inSeconds + 1);
    timer();
    setState(() {});
  }
}
