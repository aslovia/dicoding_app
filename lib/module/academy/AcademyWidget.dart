import 'package:cached_network_image/cached_network_image.dart';
import 'package:dicodingapp/data/LearningPath.dart';
import 'package:flutter/material.dart';

Widget displayHeaderAcademy(BuildContext context) {
  return Stack(
    children: <Widget>[
      Column(
        children: <Widget>[
          Container(
            height: 150,
            color: Color.fromRGBO(33, 97, 97, 1),
          ),
          Container(
            height: 100,
            color: Colors.white,
          ),
        ],
      ),
      Positioned(
        left: 50,
        top: 15,
        child: Row(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl : "https://d17ivq9b7rppb3.cloudfront.net/original/commons/academy-logo.png",
              width: 30,
              height: 30,
              placeholder: (context, url) => Image.asset("assets/images/logo.png", width: 30, height: 30),
            ),
            SizedBox(width: 10),
            Text(
              "Academy",
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
        top: 70,
        right: 0,
        left: 0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
              "assets/images/academy_banner.png",
              width: MediaQuery.of(context).size.width),
        ),
      )
    ],
  );
}

Widget displayInfoAcademy (BuildContext context) {
  return Column(
    children: <Widget>[
      Center(
        child: Text(
            "Kurikulum Standar Industri Internasional",
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
            "Dicoding Academy bekerjasama dengan perusahaan teknologi dunia dalam pengembangan"
                " kelas-kelasnya. Mulai dari tingkat pemula hingga profesional",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.black87,
                fontSize: 12
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      SizedBox(height: 30),
      Center(
        child: Text(
            "Learning Path Sesuai Kebutuhan Karir",
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
            "Jangan sampai bingung memulai dari mana. "
                "Tersedia berbagai Learning Path yang membantumu belajar sesuai kebutuhanmu dengan alur yang jelas",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.black87,
                fontSize: 12
            ),
            textAlign: TextAlign.center,
          ),
        ),
      )
    ],
  );
}

Widget displayListAcademy(BuildContext context) {
  return Container(
    height: 200,
    child: ListView.builder(
      padding: EdgeInsets.all(10),
      shrinkWrap: true,
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, i) {
        return FittedBox(
          child: Card(
            color: Colors.white,
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CachedNetworkImage(
                    imageUrl : learningPathList[i].imageUrl,
                    width: 100,
                    height: 100,
                    placeholder: (context, url) => Image.asset("assets/images/logo.png", width: 100, height: 100),
                  ),
                  Container(
                    width: 100,
                    child: Center(
                      child: Text(
                        learningPathList[i].title,
                        style: TextStyle(
                            fontSize: 12
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        );
      },
    )
  );
}