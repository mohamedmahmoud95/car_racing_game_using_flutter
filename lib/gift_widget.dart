

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model/gift.dart';

class GiftWidget extends StatefulWidget {
  final Gift gift;
   const GiftWidget({Key? key, required this.gift}) : super(key: key);

  @override
  State<GiftWidget> createState() => _GiftWidgetState();
}

class _GiftWidgetState extends State<GiftWidget> {
  void moveDown()
  {
    setState(() {
      widget.gift.topPosition +=10;
    });
  }


  void moveUp()
  {
    setState(() {
      widget.gift.topPosition -=10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      left: widget.gift.leftPosition,
      top:   widget.gift.topPosition,
      child: SizedBox(
        height: 50,
        width: 50,
        child: Image.asset(widget.gift.imageURL),
      ),
    );
  }
}



