

import 'dart:async';

import 'package:car_racing_game/joystick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model/car.dart';

class CarWidget extends StatefulWidget {
  final Car car;
  //final JoyStick joyStick;
  const CarWidget({Key? key, required this.car, }) : super(key: key);

  @override
  State<CarWidget> createState() => _CarWidgetState();
}

class _CarWidgetState extends State<CarWidget> {

  void moveDown()
  {
    setState(() {
      widget.car.topPosition +=10;
    });
  }


  void moveUp()
  {
    setState(() {
      widget.car.topPosition -=10;
    });
  }

  void moveRight()
  {
    setState(() {
      widget.car.leftPosition +=10;
    });
  }


  void moveLeft()
  {
    setState(() {
      widget.car.leftPosition -=10;
    });
  }
  
  void startGame(){
    Timer.periodic(
        const Duration(seconds: 1), (timer) {
        moveDown();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.car.leftPosition,
      top:  widget.car.topPosition,
      child: SizedBox(
        height: 100,
        width: 100,
        child: Image.asset(widget.car.imageURL),
      ),
      );
  }
}

