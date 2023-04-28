
import 'package:flutter/material.dart';

class JoyStick extends StatefulWidget {
  const JoyStick({Key? key}) : super(key: key);

  @override
  State<JoyStick> createState() => _JoyStickState();
}

class _JoyStickState extends State<JoyStick> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 300,
      left: 200,
      child: SizedBox(
        height: 200,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_drop_up_sharp),),
           // SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                  IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_left_sharp),),
                  IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_right_sharp),),
                        ],
            ),

            IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_drop_down_sharp),),
          ],
        ),

      ),
    );
  }
}
