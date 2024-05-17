import 'dart:math';

import 'package:flutter/material.dart';

class Game extends StatefulWidget{
  @override
    State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {

  List<Image> symboleList = const [
      Image(image: AssetImage("images/bar.png"), width: 100, height: 100),
      Image(image: AssetImage("images/cerise.png"), width: 100, height: 100),
      Image(image: AssetImage("images/cloche.png"), width: 100, height: 100),
      Image(image: AssetImage("images/diamant.png"), width: 100, height: 100),
      Image(image: AssetImage("images/fer-a-cheval.png"), width: 100, height: 100),
      Image(image: AssetImage("images/pasteque.png"), width: 100, height: 100),
      Image(image: AssetImage("images/sept.png"), width: 100, height: 100),
    ];

  List<Image> rolledList = [];

  @override
  Widget build(BuildContext context) {

    rollSymboles(symboleList);

    return Scaffold(
      appBar: personalizedAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children : [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children : [
                rolledList[0],
                rolledList[1],
                rolledList[2]
              ]
            ),
            rolledList[0] == rolledList[1] && rolledList[1] == rolledList[2] ? const Text('Bravo !') : const Text('Recommence !') 
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
          });
        },
        child: const Text('Roll'),
      )
    );
  }

  AppBar personalizedAppBar(){
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 149, 18, 8),
      title: const Center(
        child : Text(
          "Casino",
          style: const TextStyle(
            color : Colors.yellow
          ),
        )
      )
    );
  }

  Image getARandomSymbole(List<Image> list){

    Random random = Random();

    return list[random.nextInt(7)];

  }

  void rollSymboles(List<Image> list){

    Image image1 = getARandomSymbole(list);
    Image image2 = getARandomSymbole(list);
    Image image3 = getARandomSymbole(list);
    
    List<Image> listToReturn = [
      image1,
      image2,
      image3,
    ];

    rolledList = listToReturn;

  }
}