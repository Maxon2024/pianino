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
      body: Stack(
        children: [
          Column(
            children: [
              cardbutton(
                color: Colors.white,
                textname: 'note1',
                onTap: () {
                  AudioPlayer().play(AssetSource('audios/1.wav'));
                },
              ),
              cardbutton(
                color: Colors.white,
                textname: 'note2',
                onTap: () {
                  AudioPlayer().play(AssetSource('audios/2.wav'));
                },
              ),
              cardbutton(
                color: Colors.white,
                textname: 'note3',
                onTap: () {
                  AudioPlayer().play(AssetSource('audios/3.wav'));
                },
              ),
              cardbutton(
                color: Colors.white,
                textname: 'note4',
                onTap: () {
                  AudioPlayer().play(AssetSource('audios/4.wav'));
                },
              ),
              cardbutton(
                color: Colors.white,
                textname: 'note5',
                onTap: () {
                  AudioPlayer().play(AssetSource('audios/5.wav'));
                },
              ),
              cardbutton(
                color: Colors.white,
                textname: 'note6',
                onTap: () {
                  AudioPlayer().play(AssetSource('audios/6.wav'));
                },
              ),
              cardbutton(
                color: Colors.white,
                textname: 'note7',
                onTap: () {
                  AudioPlayer().play(AssetSource('audios/7.wav'));
                },
              ),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  AudioPlayer().play(AssetSource('audios/1.wav'));
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 60),
                  width: 230,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  AudioPlayer().play(AssetSource('audios/2.wav'));
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 80),
                  width: 230,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  AudioPlayer().play(AssetSource('audios/5.wav'));
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 60),
                  width: 230,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Expanded cardbutton(
      {required Color color,
      required Function()? onTap,
      required String textname}) {
    return Expanded(
      child: InkWell(
        enableFeedback: false,
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 1.5),
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 238, 230, 230),
                Colors.white,
                Colors.white,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                textname,
                style: const TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
