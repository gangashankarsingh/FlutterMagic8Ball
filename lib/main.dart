import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Answer(),
      ),
    );

class Answer extends StatefulWidget {
  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  int randomImageNum = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Ask me anything"),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      randomImageNum = Random().nextInt(5) + 1;
                    });

                    //print("I am magic ball");
                  },
                  child: Image.asset('images/ball$randomImageNum.png'),
                ),
              )
            ],
          ),
        ));
  }
}
