import 'package:flutter/material.dart';
import 'package:piano/app/modules/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Piano',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
