import 'package:dicodingapp/module/home/HomeWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              displayHeaderServices(context),
              SizedBox(height: 30),
              displayInfoServices(context),
              SizedBox(height: 30),
              displayListServices(context),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
