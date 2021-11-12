import 'package:dicodingapp/module/event/EventWidget.dart';
import 'package:flutter/material.dart';

class EventMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          Navigator.of(context).pop();
          Navigator.of(context).pop();
          return Future.value(false);
        },
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
            elevation: 0,
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                displayHeaderEvent(context),
                SizedBox(height: 30),
                displayInfoEvent(context),
                SizedBox(height: 30),
                displayListEvent(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
