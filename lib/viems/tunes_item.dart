import 'package:flutter/material.dart';
import 'package:tuness_player_app/model/tunes_model.dart';

class tuneViem extends StatelessWidget {
  const tuneViem({super.key, required this.tune});
  final TunesModel tune;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tune.playSound();
      },
      child: Container(
        height: 100,
        color: tune.color,
      ),
    );
  }
}
