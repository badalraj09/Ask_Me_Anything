import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Ask Me Anything '),
            backgroundColor: Color.fromARGB(255, 36, 44, 110),
          ),
          body: AnswerPage(),
        ),
      ),
    );

class AnswerPage extends StatefulWidget {
  const AnswerPage({Key key}) : super(key: key);

  @override
  State<AnswerPage> createState() => _AnswerPageState();
}

class _AnswerPageState extends State<AnswerPage> {
  int imageNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  imageNum = Random().nextInt(4) + 1;
                  print('button_pressed = $imageNum');
                });
              },
              child: Image.asset('images/ball$imageNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
