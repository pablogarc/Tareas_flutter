import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool accessColor = false;
  bool timerColor = false;
  bool androidColor = false;
  bool iphoneColor = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mc Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mc Flutter'),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.account_circle,
                              size: 40,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Flutter McFlutter',
                              style: TextStyle(fontSize: 23),
                            ),
                            Text('Experienced App Developer'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '123 Main Street',
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          '(415) 555-0198',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        color: accessColor ? Colors.indigo : Colors.black,
                        onPressed: () => setState(() {
                          accessColor = !accessColor;
                        }),
                        tooltip: 'Change the color of an icon',
                        icon: Icon(Icons.accessibility),
                        iconSize: 35,
                      ),
                      IconButton(
                        color: timerColor ? Colors.indigo : Colors.black,
                        onPressed: () => setState(() {
                          timerColor = !timerColor;
                        }),
                        tooltip: 'Change the color of an icon',
                        icon: Icon(Icons.timer_rounded),
                        iconSize: 35,
                      ),
                      IconButton(
                        color: androidColor ? Colors.indigo : Colors.black,
                        onPressed: () => setState(() {
                          androidColor = !androidColor;
                        }),
                        tooltip: 'Change the color of an icon',
                        icon: Icon(Icons.phone_android),
                        iconSize: 35,
                      ),
                      IconButton(
                        color: iphoneColor ? Colors.indigo : Colors.black,
                        onPressed: () => setState(() {
                          iphoneColor = !iphoneColor;
                        }),
                        tooltip: 'Change the color of an icon',
                        icon: Icon(Icons.phone_iphone),
                        iconSize: 35,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
