import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/FirstScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'NavigationDemo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),useMaterial3: true),
      home: const FirstScreen(),
    );
  }

}