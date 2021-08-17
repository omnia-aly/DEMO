//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports

import 'package:url_launcher/url_launcher.dart';
void launchURL(String url) async {
  if (await canLaunch(url))
  await launch(url);

}
pushPage(BuildContext context, Widget widget){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),

   );

}
popPage(BuildContext context){
  Navigator.pop(context);

}