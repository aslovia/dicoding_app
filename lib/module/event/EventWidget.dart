import 'package:cached_network_image/cached_network_image.dart';
import 'package:dicodingapp/data/Challenge.dart';
import 'package:dicodingapp/data/Event.dart';
import 'package:flutter/material.dart';

Widget displayHeaderEvent(BuildContext context) {
  return Stack(
    children: <Widget>[
      Column(
        children: <Widget>[
          Container(
            height: 150,
            color: Color.fromRGBO(212, 223, 85, 1),
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
              imageUrl : "https://d17ivq9b7rppb3.cloudfront.net/original/commons/event-ui-logo.png",
              width: 30,
              height: 30,
              placeholder: (context, url) => Image.asset("assets/images/logo.png", width: 30, height: 30),
            ),
            SizedBox(width: 10),
            Text(
              "Event",
              style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
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
              "assets/images/event_banner.png",
              width: MediaQuery.of(context).size.width),
        ),
      )
    ],
  );
}

Widget displayInfoEvent(BuildContext context) {
  return Column(
    children: <Widget>[
      Center(
        child: Text(
          "Kenapa Event Penting bagi Jenjang Karirmu",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black87,
              fontSize: 15
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Berikut ini adalah manfaat yang akan kamu dapatkan jika aktif bergabung dalam event Dicoding",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.black87,
                fontSize: 12
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl : "https://d17ivq9b7rppb3.cloudfront.net/original/commons/event-ui-upgrade.png",
                  width: 80,
                  height: 80,
                  placeholder: (context, url) => Image.asset("assets/images/logo.png", width: 80, height: 80),
                ),
                Container(
                  width: 100,
                  child: Text(
                    "Upgrade Kemampuan Teknis",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl : "https://d17ivq9b7rppb3.cloudfront.net/original/commons/event-ui-network.png",
                  width: 80,
                  height: 80,
                  placeholder: (context, url) => Image.asset("assets/images/logo.png", width: 80, height: 80),
                ),
                Container(
                  width: 100,
                  child: Text(
                    "Bangun Jaringan",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl : "https://d17ivq9b7rppb3.cloudfront.net/original/commons/event-ui-update.png",
                  width: 80,
                  height: 80,
                  placeholder: (context, url) => Image.asset("assets/images/logo.png", width: 80, height: 80),
                ),
                Container(
                  width: 100,
                  child: Text(
                    "Up-to-Date Terhadap Perkembangan Teknologi",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    ],
  );
}

Widget displayListEvent(BuildContext context) {
  return Container(
    height: 330,
    child: ListView.builder(
      padding: EdgeInsets.all(10),
      shrinkWrap: true,
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, i) {
        return Container(
          width: 350,
          height: 250,
          child: Card(
            color: Colors.white,
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl : eventList[i].imageUrl,
                  height: 200,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Image.asset("assets/images/logo.png", width: 100, height: 100),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 100,
                  child: Center(
                    child: Text(
                      eventList[i].title,
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(255, 83, 131, 1)
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 100,
                  child: Text(
                    "Oleh " + eventList[i].company,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                  width: 100,
                  child: Text(
                    eventList[i].description,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black87
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                      width: 100,
                      child: Text(
                        "Sisa Kuota " + eventList[i].capacity + " orang",
                        style: TextStyle(
                            fontSize: 12
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                      width: 100,
                      child: Text(
                        eventList[i].day,
                        style: TextStyle(
                            fontSize: 12
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    ),
  );
}