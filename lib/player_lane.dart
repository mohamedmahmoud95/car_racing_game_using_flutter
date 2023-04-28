import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model/user.dart';

class PlayerLane extends StatefulWidget {
  final User player;
  const PlayerLane({Key? key, required this.player}) : super(key: key);

  @override
  State<PlayerLane> createState() => _PlayerLaneState();
}

class _PlayerLaneState extends State<PlayerLane> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Score: ${widget.player.score}"),
        Text("Level: ${widget.player.level}"),
        Row(
          children: [
            const Text("Lives: "),
            ListView.builder(
                itemCount: widget.player.lives,
                itemBuilder: (BuildContext context, int index) {
                  return const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  );
                }),
          ],
        ),
      ],
    );
  }
}
