

import 'dart:async';

import 'package:car_racing_game/Model/car.dart';
import 'package:car_racing_game/Model/gift.dart';
import 'package:car_racing_game/car_widget.dart';
import 'package:car_racing_game/gift_widget.dart';
import 'package:flutter/material.dart';

import 'joystick.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
    startGame();
  }

  void startGame(){
    Timer.periodic(const Duration(milliseconds:500 ), (timer) {moveDown(); });
  }
  void moveDown()
  {
    setState(() {
      health.topPosition +=20;
    });
  }


  void moveUp()
  {
    setState(() {
      health.topPosition -=20;
    });
  }


  late JoyStick joyStick1;

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
             CarWidget(car: sampleCar2,),
             CarWidget(car: sampleCar3,),
             CarWidget(car: sampleCar4,),
             GiftWidget(gift: health),
             GiftWidget(gift: damage),
             const JoyStick(),

           ],
         ),
       ),
    );
  }
}
