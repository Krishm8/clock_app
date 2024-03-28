import 'package:flutter/material.dart';

class digital extends StatefulWidget {
  const digital({super.key});

  @override
  State<digital> createState() => _digitalState();
}

class _digitalState extends State<digital> {
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
        title: Text("Digital Watch"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            width: 500,
          ),
          Text(
            "${duration.inHours % 24}".padLeft(2, "0"),
            style: TextStyle(
              fontSize: 120,
              // fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          Text(
            "${duration.inMinutes % 60}".padLeft(2, "0"),
            style: TextStyle(
              fontSize: 120,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
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

class strap extends StatefulWidget {
  const strap({super.key});

  @override
  State<strap> createState() => _strapState();
}

class _strapState extends State<strap> {
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
        title: Text("Strap Watch"),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              height: double.infinity,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 15,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 4,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 15,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 4,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 15,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 4,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 15,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 4,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 15,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 4,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 15,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 4,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 15,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 4,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 80),
                    height: 15,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 4,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.3),
            child: Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Align(
                alignment: Alignment(0, 0),
                child: Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Align(
                    alignment: Alignment(0, 0),
                    child: Container(
                      height: 140,
                      width: 140,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(
                              color: Colors.red,
                              value: (duration.inHours % 24) / 24,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(
                              color: Colors.orange,
                              value: (duration.inMinutes % 60) / 60,
                            ),
                          ),
                          CircularProgressIndicator(
                            color: Colors.lightGreenAccent,
                            value: (duration.inSeconds % 60) / 60,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
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
