import 'package:flutter/material.dart';
import 'package:tuness_player_app/model/tunes_model.dart';
import 'package:tuness_player_app/viems/tunes_item.dart';

class TunesVuem extends StatelessWidget {
  TunesVuem({super.key});
  final List<TunesModel> item = [
    TunesModel(color: const Color(0xffF44336), sound: 'note1.wav'),
    TunesModel(color: const Color(0xffF89800), sound: 'note2.wav'),
    TunesModel(color: const Color(0xffFEEB3B), sound: 'note3.wav'),
    TunesModel(color: const Color(0xff4CAF50), sound: 'note4.wav'),
    TunesModel(color: const Color(0xff2F9688), sound: 'note5.wav'),
    TunesModel(color: const Color(0xff2896F3), sound: 'note6.wav'),
    TunesModel(color: const Color(0xff9C27B0), sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff253238),
        elevation: 0,
      ),
      body: Column(
        children: item
            .map(
              (e) => TuneViem(tune: e),
            )
            .toList(),
      ),
    );
  }
}
 // body: ListView.builder(
      //   itemCount: item.length,
      //   itemBuilder: (context, index) {
      //     return tuneViem(tune: item[index]);
      //   },
      // ),