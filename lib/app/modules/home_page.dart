import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Piano'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          cardbutton(
            color: Colors.red,
            onTap: () {
              AudioPlayer().play(AssetSource('audios/1.wav'));
            },
          ),
          cardbutton(
            color: Colors.white,
            onTap: () {
              AudioPlayer().play(AssetSource('audios/2.wav'));
            },
          ),
          cardbutton(
            color: Colors.black,
            onTap: () {
              AudioPlayer().play(AssetSource('audios/3.wav'));
            },
          ),
          cardbutton(
            color: Colors.green,
            onTap: () {
              AudioPlayer().play(AssetSource('audios/4.wav'));
            },
          ),
          cardbutton(
            color: Colors.blue,
            onTap: () {
              AudioPlayer().play(AssetSource('audios/5.wav'));
            },
          ),
          cardbutton(
            color: Colors.teal,
            onTap: () {
              AudioPlayer().play(AssetSource('audios/6.wav'));
            },
          ),
          cardbutton(
            color: Colors.pink,
            onTap: () {
              AudioPlayer().play(AssetSource('audios/7.wav'));
            },
          ),
        ],
      ),
    );
  }

  Expanded cardbutton({required Color color, required Function()? onTap}) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(width: double.infinity, color: color //Colors.red,
            ),
      ),
    );
  }
}
