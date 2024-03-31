import 'package:ecommerce_app/utils/globaldata.dart';
import 'package:ecommerce_app/utils/salad.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int? newPrice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            alignment: Alignment.topCenter,
            color: Colors.green.shade800,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: (Icon(
                      Icons.arrow_back_ios_new_sharp,
                      size: 29,
                      color: Colors.white,
                    )),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    "Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 745,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            ),
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          (SaladData.cartSaladData.isEmpty)
                              ? Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 200),
                                    child: Text(
                                      "No any products added to cart yet...",
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.black),
                                    ),
                                  ),
                                )
                              : Column(
                                  children: [
                                    ...SaladData.cartSaladData.map(
                                      (e) => Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, bottom: 10),
                                        child: Container(
                                          height: 95,
                                          width: 370,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
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
                                                  child: CircleAvatar(
                                                    radius: 40,
                                                    foregroundImage:
                                                        NetworkImage(
                                                            "${e['thumbnail']}"),
                                                  ),
                                                  //    // color: Colors.red,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                  // color: Colors.yellow,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            18),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Text(
                                                          "${e['title']}",
                                                          style: TextStyle(
                                                            fontSize: 17,
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
                                                flex: 2,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 20),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Container(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  e['count']--;
                                                                  e['total'] = e[
                                                                          'price'] *
                                                                      e['count'];
                                                                  if (e['count'] ==
                                                                      0) {
                                                                    SaladData
                                                                        .cartSaladData
                                                                        .remove(
                                                                            e);
                                                                    SaladData
                                                                        .cartData
                                                                        .remove(
                                                                            e);
                                                                    e['count'] =
                                                                        0;
                                                                  }
                                                                });
                                                              },
                                                              child: GlobalData
                                                                  .button2(
                                                                      icon: Icons
                                                                          .remove),
                                                            ),
                                                          ),
                                                          Text(
                                                            " ${e['count']}",
                                                            style: TextStyle(
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          Container(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  e['count']++;
                                                                  e['total'] = e[
                                                                          'price'] *
                                                                      e['count'];
                                                                });
                                                              },
                                                              child: GlobalData
                                                                  .button2(
                                                                      icon: Icons
                                                                          .add),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                          "\$ ${e['total']}"),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 74,
                    width: 373,
                    padding: EdgeInsets.all(19),
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 5,
                            color: Colors.grey.shade400,
                            offset: Offset(0, 2))
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.fact_check_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Promo Code",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 45,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xff0dbf23),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Apply",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      //color: Colors.green,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 40, right: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Subtotal",
                                  style: TextStyle(fontSize: 17),
                                ),
                                Text(
                                  "\$ ${SaladData.price()}",
                                  style: TextStyle(
                                    fontSize: 17.5,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                                "------------------------------------------------------------------------------------------"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delivery",
                                  style: TextStyle(fontSize: 17),
                                ),
                                (SaladData.cartSaladData.isEmpty)
                                    ? Container(
                                        child: Text(
                                          "\$ 0.0",
                                          style: TextStyle(fontSize: 17.5),
                                        ),
                                      )
                                    : Text("\$ 5.67"),
                              ],
                            ),
                            Text(
                                "------------------------------------------------------------------------------------------"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$${SaladData.grandTotal()}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('CheckoutPage');
                                },
                                child: Container(
                                  height: 65,
                                  width: 360,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "CHECKOUT",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xff0dbf23),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              //:Container(),
                            ),
                          ],
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
    );
  }
}
