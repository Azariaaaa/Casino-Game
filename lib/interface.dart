import 'package:casino/game.dart';
import 'package:flutter/material.dart';

class Interface extends StatelessWidget{
  const Interface({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Casino",
      theme: ThemeData(
        primaryColor: Colors.brown ),
      home: Game()
    );
  }
  
}