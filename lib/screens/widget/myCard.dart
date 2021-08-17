import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyCard extends StatefulWidget {
  String content;
  MyCard( {this.content="_"});

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  get index => null;

  get posts => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Text(widget.content),),
          );
  }
}