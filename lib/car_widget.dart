

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model/car.dart';

class CarWidget extends StatelessWidget {
  final Car car;
  const CarWidget({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: car.leftPosition,
      top:  car.topPosition,
      child: SizedBox(
        height: 100,
        width: 100,
        child: Image.asset(car.imageURL),
      ),
      );
  }
}

