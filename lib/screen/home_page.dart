import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../utils/globaldata.dart';
import '../utils/salad.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isTapped = false;
  dynamic? salad;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          right: 14,
          left: 14,
        ),
        child: Column(
          children: [
            Expanded(
              //flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  //  color: Colors.green,
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on_rounded),
                          Text(
                            "Habiganj City",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('FavoritePage');
                              },
                              child: Icon(
                                Icons.favorite_outline,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(' CartPage');
                                  },
                                  child: Badge(
                                      label: Text(
                                        "${SaladData.cartSaladData.length}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      child: Icon(Icons.shopping_cart))),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  //  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12,
                    ),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "Find The  ",
                                style: TextStyle(
                                  letterSpacing: 0.9,
                                  color: Colors.black,
                                  fontSize: 31,
                                ),
                              ),
                              TextSpan(
                                text: "Best",
                                style: TextStyle(
                                  letterSpacing: 0.9,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.8,
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: "Food ",
                              style: TextStyle(
                                letterSpacing: 0.9,
                                color: Colors.black,
                                fontSize: 31,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "Around You",
                              style: TextStyle(
                                letterSpacing: 0.9,
                                color: Colors.black,
                                fontSize: 31,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 367,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey.shade200,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.search_sharp),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    "Search your favourit food",
                                    style: TextStyle(
                                      fontSize: 16.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.compare_arrows_rounded,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                // color: Colors.purple,
                alignment: Alignment.topLeft,
                //color: Colors.teal,
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 9),
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: "Find  ",
                                style: TextStyle(
                                    fontSize: 27.5,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                text: "5km",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ]),
                          ),
                          // SizedBox(
                          //   width: 2,
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6, right: 2.7),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.red,
                              size: 13.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 21),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          (isTapped == false)
                              ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      salad = null;
                                      isTapped = true;
                                    });
                                  },
                                  child: GlobalData.button(
                                    text: 'Salads',
                                  ),
                                )
                              : Ink(
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.rectangle,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        salad = null;
                                      });
                                    },
                                    child: GlobalData.button(
                                      text: 'Salads',
                                    ),
                                  ),
                                ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                salad = 'Hot sale';
                              });
                            },
                            child: GlobalData.button(
                              text: "Hot sale",
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                salad = 'Popularity';
                              });
                            },
                            child: GlobalData.button(text: "Popularity"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...SaladData.allSaladData.map(
                      (val) => Padding(
                        padding: const EdgeInsets.only(
                            bottom: 3, left: 8, top: 4, right: 8),
                        child: Container(
                          height: 283,
                          width: double.infinity,
                          //color: Colors.grey,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...val['data']
                                    .map(
                                      (Map<String, dynamic> e) =>
                                          (e['type'] == salad || salad == null)
                                              ? Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 6,
                                                          top: 8,
                                                          right: 19,
                                                          bottom: 8),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.of(context)
                                                          .pushNamed(
                                                              'DetailPage',
                                                              arguments: e);
                                                    },
                                                    child: Container(
                                                      width: 165,
                                                      height: 277,
                                                      // margin: EdgeInsets.only(right: 13),
                                                      child: Column(
                                                        children: [
                                                          Expanded(
                                                            flex: 6,
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .grey
                                                                    .shade100,
                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            25),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            25)),
                                                              ),
                                                              // color: Colors.grey.shade200,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  InkWell(
                                                                    onTap: () {
                                                                      setState(
                                                                          () {
                                                                        e['like'] =
                                                                            !e['like'];
                                                                        SaladData
                                                                            .favData
                                                                            .add(e);
                                                                        SaladData
                                                                            .convertUnique();
                                                                        if (e['like'] ==
                                                                            false) {
                                                                          SaladData
                                                                              .favSaladData
                                                                              .remove(e);
                                                                          SaladData
                                                                              .favData
                                                                              .remove(e);
                                                                        }
                                                                      });
                                                                    },
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              10,
                                                                          left:
                                                                              7,
                                                                          right:
                                                                              10),
                                                                      child: (e[
                                                                              'like'])
                                                                          ? Icon(
                                                                              Icons.favorite_rounded,
                                                                              color: Colors.red,
                                                                              size: 30,
                                                                            )
                                                                          : Icon(
                                                                              Icons.favorite_outline,
                                                                              color: Colors.red,
                                                                              size: 30,
                                                                            ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        CircleAvatar(
                                                                      radius:
                                                                          59,
                                                                      foregroundImage:
                                                                          NetworkImage(
                                                                              "${e['thumbnail']}"),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 4,
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .grey
                                                                    .shade100,
                                                                borderRadius: BorderRadius.only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            25),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            25)),
                                                              ),
                                                              child: Column(
                                                                children: [
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      Text(
                                                                        "${e['title']}",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      Text(
                                                                          "${e['time']}min"),
                                                                      Row(
                                                                        children: [
                                                                          Icon(
                                                                            Icons.star_half_outlined,
                                                                            color:
                                                                                Colors.yellow,
                                                                          ),
                                                                          Text(
                                                                              "${e['rating']}"),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top: 20,
                                                                        left:
                                                                            20),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          "\$ ${e['price']}",
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                18.5,
                                                                          ),
                                                                        ),
                                                                        (e['count'] ==
                                                                                0)
                                                                            ? InkWell(
                                                                                onTap: () {
                                                                                  setState(() {
                                                                                    SaladData.cartData.add(e);
                                                                                    SaladData.convertUniqueData();
                                                                                    e['count']++;
                                                                                  });
                                                                                },
                                                                                child: Container(
                                                                                  width: 37,
                                                                                  height: 33,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.only(
                                                                                      topLeft: Radius.circular(13),
                                                                                      bottomRight: Radius.circular(13),
                                                                                    ),
                                                                                    color: Colors.green,
                                                                                  ),
                                                                                  child: Icon(
                                                                                    Icons.add,
                                                                                    color: Colors.white,
                                                                                  ),
                                                                                ))
                                                                            : Container(
                                                                                width: 37,
                                                                                height: 33,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.only(
                                                                                    topLeft: Radius.circular(13),
                                                                                    bottomRight: Radius.circular(13),
                                                                                  ),
                                                                                  color: Color(0xff0dbf23),
                                                                                ),
                                                                                child: Icon(
                                                                                  Icons.done,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : Container(),
                                    )
                                    .toList(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
