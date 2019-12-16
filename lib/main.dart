import 'package:flutter/material.dart';
import 'bunny.dart';
import 'package:smart_flare/smart_flare.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SmartFlareAnim(),
    );
  }
}

class SmartFlareAnim extends StatefulWidget {
  @override
  _SmartFlareAnimState createState() => _SmartFlareAnimState();
}

var activeAreas = [
  ActiveArea(
      area: Rect.fromLTWH(100, 200, 150, 80),
      debugArea: false,
      animationName: 'Wave',
      //animationsToCycle: ['Wave', 'Stand'],
      onAreaTapped: () {
        print('ears');
      }),
  ActiveArea(
      area: Rect.fromLTWH(130, 290, 120, 60),
      debugArea: false,
      animationName: 'Dance',
      onAreaTapped: () {
        print('bunny');
      }),
  ActiveArea(
      area: Rect.fromLTWH(130, 370, 120, 60),
      debugArea: false,
      animationName: 'Jump',
      onAreaTapped: () {
        print('bunny');
      }),
];

class _SmartFlareAnimState extends State<SmartFlareAnim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Minion Example'),
        ),
      ),
      backgroundColor: Colors.pinkAccent.shade100,
      body: Center(
        child: SmartFlareActor(
          width: 800.0,
          height: 800.0, //MediaQuery.of(context).size.height / 2,
          filename: 'assets/Minion.flr',
          activeAreas: activeAreas,
        ),
      ),
    );
  }
}
