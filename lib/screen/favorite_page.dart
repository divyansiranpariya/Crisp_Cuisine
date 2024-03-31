import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/salad.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          color: Colors.green,
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 55),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 95, left: 7),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      )),
                ),
                Text(
                  "Favourite Items",
                  style: TextStyle(
                    fontSize: 24,
                    letterSpacing: 0.7,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 750,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                (SaladData.favSaladData.isEmpty)
                    ? Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 360),
                          child: Text(
                            "No any items added for favourite ...",
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          ...SaladData.favSaladData.map(
                            (e) => Padding(
                              padding: const EdgeInsets.all(11),
                              child: Container(
                                height: 103,
                                width: 365,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13)),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        spreadRadius: 1,
                                        blurRadius: 4,
                                        color: Colors.grey.shade300,
                                        offset: Offset(0, 3),
                                      ),
                                    ]),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        //    color: Colors.purple,
                                        child: CircleAvatar(
                                          radius: 60,
                                          foregroundImage:
                                              NetworkImage("${e['thumbnail']}"),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        //  color: Colors.red,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "${e['title']}",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                              ),
                                              Text(
                                                "\$ ${e['price']}",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: const EdgeInsets.all(23),
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                e['like'] = !e['like'];

                                                if (e['like'] == false) {
                                                  SaladData.favSaladData
                                                      .remove(e);
                                                  SaladData.favData.remove(e);
                                                  e['remove'] = true;
                                                }
                                              });
                                            },
                                            child: (e['like'])
                                                ? Icon(
                                                    Icons.favorite_rounded,
                                                    color: Colors.red,
                                                    size: 30,
                                                  )
                                                : Icon(
                                                    Icons.favorite_border_sharp,
                                                    color: Colors.red,
                                                    size: 30,
                                                  ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                //  ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
