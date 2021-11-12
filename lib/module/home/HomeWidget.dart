import 'package:cached_network_image/cached_network_image.dart';
import 'package:dicodingapp/data/Services.dart';
import 'package:dicodingapp/module/academy/AcademyMain.dart';
import 'package:dicodingapp/module/challenge/ChallengeMain.dart';
import 'package:dicodingapp/module/event/EventMain.dart';
import 'package:flutter/material.dart';

Widget displayHeaderServices(BuildContext context) {
  return Stack(
    children: <Widget>[
      Column(
        children: <Widget>[
          Container(
            height: 150,
            color: Color.fromRGBO(45, 62, 80, 1),
          ),
          Container(
            height: 100,
            color: Colors.white,
          ),
        ],
      ),
      Positioned(
        left: 10,
        top: 20,
        child: Row(
          children: <Widget>[
            Image.asset("assets/images/logo.png",
                width: 50, height: 40),
            Text(
              "Hi, Selamat Datang",
              style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            )
          ],
        ),
      ),
      Positioned(
        right: 10,
        top: 20,
        child: Align(
          alignment: FractionalOffset(0.9, 0.7),
          child: Row(
            children: <Widget>[
              ButtonTheme(
                height: 25,
                minWidth: 25,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  color: Colors.white,
                  child: Text(
                      "MASUK",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          letterSpacing: 2
                      )
                  ),
                ),
              ),
              SizedBox(width: 10),
              ButtonTheme(
                height: 25,
                minWidth: 25,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  color: Color.fromRGBO(255, 83, 131, 1),
                  child: Text(
                      "DAFTAR",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          letterSpacing: 2
                      )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      Positioned(
        top: 70,
        right: 0,
        left: 0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
              "assets/images/home_banner.png",
              width: MediaQuery.of(context).size.width),
        ),
      )
    ],
  );
}

Widget displayInfoServices(BuildContext context) {
  return Column(
    children: <Widget>[
      Center(
        child: Text(
            "4 Pilar yang Dapat Kamu Manfaatkan",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black87,
                fontSize: 15
            )
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Berikut ini adalah 4 pilar yang kami siapkan "
                "untuk membantumu membangun karir sebagai developer profesional",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.black87,
                fontSize: 11
            ),
            textAlign: TextAlign.center,
          ),
        ),
      )
    ],
  );
}

Widget displayListServices(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left : 16.0, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {
                  displayDetailPopUp(context, servicesList[0]);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 4.7,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color.fromRGBO(21, 198, 188, 1), width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CachedNetworkImage(
                        imageUrl : servicesList[0].imageUrl,
                        width: 100,
                        height: 100,
                        placeholder: (context, url) => Image.asset("assets/images/logo.png", width: 100, height: 100),
                      ),
                      Center(
                          child: Text(
                            servicesList[0].title,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(80,80,80, 1)
                            ),
                          )
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: InkWell(
                onTap: () {
                  displayDetailPopUp(context, servicesList[1]);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    border: Border.all(color: Color.fromRGBO(189, 115, 210, 1), width: 2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CachedNetworkImage(
                        imageUrl : servicesList[1].imageUrl,
                        width: 100,
                        height: 100,
                        placeholder: (context, url) => Image.asset("assets/images/logo.png", width: 100, height: 100),
                      ),
                      Center(
                          child: Text(
                            servicesList[1].title,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(80,80,80, 1)
                            ),
                          )
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left : 16.0, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {
                  displayDetailPopUp(context, servicesList[2]);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.yellow, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CachedNetworkImage(
                        imageUrl : servicesList[2].imageUrl,
                        width: 100,
                        height: 100,
                        placeholder: (context, url) => Image.asset("assets/images/logo.png", width: 100, height: 100),
                      ),
                      Center(
                          child: Text(
                            servicesList[2].title,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(80,80,80, 1)
                            ),
                          )
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: InkWell(
                onTap: () {
                  displayDetailPopUp(context, servicesList[3]);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 4.7,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color.fromRGBO(47, 136, 220, 1), width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CachedNetworkImage(
                        imageUrl : servicesList[3].imageUrl,
                        width: 100,
                        height: 100,
                        placeholder: (context, url) => Image.asset("assets/images/logo.png", width: 100, height: 100),
                      ),
                      Center(
                          child: Text(
                            servicesList[3].title,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(80,80,80, 1)
                            ),
                          )
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )
    ],
  );
}

displayDetailPopUp(context, index) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius:
      BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
    ),
    builder: (BuildContext context) {
      return GestureDetector(
        onTap: () => Navigator.of(context).pop(), // closing showModalBottomSheet
        child: Container(
          height: 300,
          child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CachedNetworkImage(
                        imageUrl : index.imageUrl,
                        width: 100,
                        height: 100,
                        placeholder: (context, url) => Image.asset("assets/images/logo.png", width: 100, height: 100),
                      ),
                      Text(
                        index.title,
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      index.description,
                      style: TextStyle(
                          fontSize: 15
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ButtonTheme(
                    height: 25,
                    minWidth: 25,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return index.id == '1'
                              ? AcademyMain()
                              : index.id == '2'
                              ? ChallengeMain()
                              : index.id == '3'
                              ? EventMain()
                              : index.id == '4'
                              ? Color.fromRGBO(47, 136, 220, 1)
                              : Color.fromRGBO(255, 83, 131, 1);
                        }));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      color: index.id == '1'
                          ? Color.fromRGBO(21, 198, 188, 1)
                          : index.id == '2'
                          ? Color.fromRGBO(189, 115, 210, 1)
                          : index.id == '3'
                          ? Colors.yellow
                          : index.id == '4'
                          ? Color.fromRGBO(47, 136, 220, 1)
                          : Color.fromRGBO(255, 83, 131, 1),
                      child: Text(
                          "Lihat " + index.title,
                          style: TextStyle(
                              fontSize: 12.5,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              letterSpacing: 2
                          )
                      ),
                    ),
                  )
                ],
              )
          ),
        )
      );
    },
  );
}