import 'package:ecommerce_app/utils/salad.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0dbf23),
        actions: [
          Padding(
            padding: EdgeInsets.all(13),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    data['like'] = !data['like'];
                  },
                  child: (data['like'])
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
              ],
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xff0dbf23),
          ),
          Container(
            width: 410,
            height: 670,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
              color: Colors.white,
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...data['image'].map((e) {
                    return Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(bottom: 540),
                      child: CircleAvatar(
                        child: Container(
                          height: 2200,
                          width: 260,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              shape: BoxShape.circle,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  spreadRadius: 24,
                                  color: Colors.green,
                                  blurRadius: 300,
                                ),
                              ]),
                        ),
                        radius: 140,
                        foregroundImage: NetworkImage(e),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              height: 512,
              width: 380,
              child: Column(
                children: [
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              children: [
                                (data['count'] == 0)
                                    ? Container()
                                    : Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 112,
                                            top: 34,
                                          ),
                                          child: Container(
                                            height: 52,
                                            width: 130,
                                            decoration: BoxDecoration(
                                              color: Color(0xff0dbf23),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(9.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        if (data['count'] >= 1)
                                                          data['count']--;
                                                      });
                                                    },
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    "${data['count']}",
                                                    style: TextStyle(
                                                      fontSize: 25,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        data['count']++;
                                                      });
                                                    },
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
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
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 30,
                                    left: 9.5,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "${data['title']}",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        "${data['description']}...",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                    )),
                                                TextSpan(
                                                  text: "Read More",
                                                  style: TextStyle(
                                                    color: Color(0xff0dbf23),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 15, right: 20, left: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "⭐ ${data['rating']}",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "🔥${data['kcal']} Kcal",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "⏰ ${data['average']}min",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Ingradients",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 15, bottom: 15, top: 20),
                            child: Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ...data['ingradients'].map((e) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 55,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            color: Colors.grey.shade200,
                                          ),
                                          child: Text(
                                            '${e}',
                                            style: TextStyle(
                                              fontSize: 23,
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        SaladData.cartData.add(data);
                        SaladData.convertUniqueData();
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 348,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xff0dbf23),
                      ),
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(
                          fontSize: 23.5,
                          color: Colors.white,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
