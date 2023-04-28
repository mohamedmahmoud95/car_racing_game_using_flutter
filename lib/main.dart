

import 'package:car_racing_game/Model/car.dart';
import 'package:car_racing_game/car_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){runApp(MyApp());}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),

    );
  }
}




class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("2D car game"),
      ),
       body: Center(
         child: Stack(
           children: [
         CarWidget(car: sampleCar1,),
      ],
         ),
       ),
    );
  }
}
