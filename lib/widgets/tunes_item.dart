import 'package:flutter/material.dart';
import 'package:tuness_player_app/model/tunes_model.dart';

class TuneViem extends StatelessWidget {
  const TuneViem({super.key, required this.tune});
  final TunesModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
