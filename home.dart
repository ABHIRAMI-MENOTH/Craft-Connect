// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/blog.dart';
import 'package:app/product.dart';
import 'package:flutter/material.dart';
import 'package:app/globals.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';
// import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 70,
          title: Image.asset("assets/images/craft_logo_black.png", width: 20),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Iconsax.logout,
                  color: Colors.black54,
                  size: 20,
                ),
              ),
            ),
          ],
          leading: Icon(
            Ionicons.options,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Iconsax.add),
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Container(
          color: Colors.white,
          child: ListView(
            children: [
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 13.0, right: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: FractionallySizedBox(
                        widthFactor: 0.92,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: TextField(
                            // controller: _query,
                            autofocus: false,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 14),
                                filled: true,
                                hintStyle: TextStyle(
                                    fontFamily: "HelveticaMedium",
                                    fontWeight: FontWeight.w500),
                                enabledBorder: InputBorder.none,
                                fillColor: Colors.black.withOpacity(0.04),
                                hintText: "search craft",
                                prefixIcon: Icon(
                                  Iconsax.search_normal,
                                  size: 16,
                                ),
                                focusedBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 47,
                          height: 47,
                          color: Color.fromARGB(255, 33, 119, 190),
                          child: Icon(
                            Icons.search_rounded,
                            size: 19,
                            semanticLabel: "Search",
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 28),
              Stack(
                children: [
                  Center(
                    child: FractionallySizedBox(
                      widthFactor: 0.99,
                      child: Container(
                        child: Image.asset("assets/images/banner9.png"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Our Services",
                      style: TextStyle(fontFamily: "PoppinsBold", fontSize: 17),
                    ),
                    Text(
                      "View all",
                      style:
                          TextStyle(fontFamily: "PoppinsMedium", fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(
                  left: 0.0,
                ),
                child: SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        padding: EdgeInsets.all(0),
                        width: 80,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.0),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.black45,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      Icon(Icons.upload, color: Colors.white)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    "Upload",
                                    style: TextStyle(
                                        fontFamily: "HelveticaBold",
                                        fontSize: 14,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        padding: EdgeInsets.all(0),
                        width: 80,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.0),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.blue,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Iconsax.scissor,
                                      color: Colors.white)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    "Crafts",
                                    style: TextStyle(
                                        fontFamily: "HelveticaBold",
                                        fontSize: 14,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        padding: EdgeInsets.all(0),
                        width: 80,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.0),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.brown,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Iconsax.calendar,
                                      color: Colors.white)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    "Events",
                                    style: TextStyle(
                                        fontFamily: "HelveticaBold",
                                        fontSize: 14,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        padding: EdgeInsets.all(0),
                        width: 80,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.0),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.green,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Iconsax.message1,
                                      color: Colors.white)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    "Chatbot",
                                    style: TextStyle(
                                        fontFamily: "HelveticaBold",
                                        fontSize: 14,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        padding: EdgeInsets.all(0),
                        width: 80,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.0),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Iconsax.calendar,
                                      color: Colors.white)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    "Community",
                                    style: TextStyle(
                                        fontFamily: "HelveticaBold",
                                        fontSize: 14,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Plants",
                      style: TextStyle(fontFamily: "PoppinsBold", fontSize: 17),
                    ),
                    Text(
                      "View all",
                      style:
                          TextStyle(fontFamily: "PoppinsMedium", fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35),
              Column(
                children: [
                  Product(
                    name: "Fox origami",
                    image: "assets/images/origami2.png",
                    price: "\$ ${13}",
                    description: "Test description",
                    pk: 1,
                  ),
                  Product(
                    name: "Dragon origami",
                    image: "assets/images/origami1.png",
                    price: "\$ ${18}",
                    description:
                        "This is some test description about craft 2 product",
                    pk: 1,
                  ),
                  Product(
                    name: "Origami flower",
                    image: "assets/images/origami3.png",
                    price: "\$ ${18}",
                    description:
                        "This is some test description about craft 2 product",
                    pk: 1,
                  ),
                ],
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Learn 📄",
                      style: TextStyle(fontFamily: "PoppinsBold", fontSize: 17),
                    ),
                    Text(
                      "View all",
                      style:
                          TextStyle(fontFamily: "PoppinsMedium", fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35),
              BlogCard(
                  name: "Unleashing Your Creative Ingenuity",
                  image:
                      "https://images.unsplash.com/photo-1560421683-6856ea585c78?q=80&w=1774&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  description:
                      "Embark on a crafting journey with expert tips and inspiring ideas. Whether you're a novice or seasoned crafter, discover the joy of creating beautiful and meaningful projects through a spectrum of artistic endeavors",
                  pk: "pk",
                  date: "20 may 2000"),
              BlogCard(
                  name: "Crafting Your Imagination into Reality",
                  image:
                      "https://images.unsplash.com/photo-1535837487710-a191373a20ae?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  description:
                      "Immerse yourself in the world of crafting, where imagination meets hands-on creativity. From DIY wonders to personalized masterpieces, this guide is your key to unlocking the limitless possibilities of artisanal expression.",
                  pk: "pk",
                  date: "20 may 2000"),
            ],
          ),
        ),
      ),
    );
  }
}
