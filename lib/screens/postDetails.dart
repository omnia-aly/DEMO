//import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter7/models/post.dart';
import 'package:flutter7/utils.dart';

// ignore: must_be_immutable
class PostDetails extends StatefulWidget {
  Post post;
  PostDetails (this.post);

  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            //MyCard(content: "${widget.post.title}"),
            InkWell(
              onTap:(){
                launchURL( "${widget.post.id}");

              },
              child: Text("id: ${widget.post.id}")),
            Text("id: ${widget.post.id}"),
            Divider(),
            InkWell(
              onTap:(){
                launchURL("${widget.post.title}");

              },
              
              child: Text("title:${widget.post.title}")
            )
          ],
        ),
      ),
      
    );
  }

  //on({required Text child}) {}
}