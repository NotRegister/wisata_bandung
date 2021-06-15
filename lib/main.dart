import 'package:flutter/material.dart';
import 'package:wisata_bandung/detail_screen.dart';
import 'package:wisata_bandung/main_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
/* 
class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              margin: EdgeInsets.only(top: 16),
              child: Text(
                'Farm House Lembang',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Open Today',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.access_time),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '09:00 - 20:00',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.monetization_on),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'RP 25.000',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              "Enim eiusmod tempor in consectetur aute est in ex. Consectetur in deserunt ut excepteur nostrud laboris ad elit anim sint deserunt. In proident veniam laborum ad sit nisi sunt voluptate ipsum. Amet laboris minim cillum aliqua officia elit elit et elit. Pariatur est sunt adipisicing do tempor magna consectetur esse minim voluptate ad esse amet amet. Dolor reprehenderit sit dolor aliquip. Sit incididunt consequat laborum aute commodo nostrud.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    ));
  }
}
 */

