// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

class Product extends StatefulWidget {
  final name;

  final price;
  final description;
  final image;
  final type;
  final pk;
  const Product({
    this.name,
    this.price,
    this.description,
    this.image,
    this.type,
    this.pk,
    Key? key,
  }) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 10, top: 10, right: 20),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              widget.image,
              width: 150,
              height: 350,
              fit: BoxFit.contain,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(fontFamily: "PoppinsBold", fontSize: 17),
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontFamily: "PoppinsRegular",
                        fontSize: 14,
                        height: 1.7),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Container(
                      //   padding: EdgeInsets.all(8),
                      //   decoration: BoxDecoration(
                      //       color: Colors.green,
                      //       borderRadius: BorderRadius.circular(10)),
                      //   width: 70,
                      //   child: Text(
                      //     widget.price,
                      //     textAlign: TextAlign.center,
                      //     style: TextStyle(
                      //         color: Colors.white,
                      //         fontFamily: "PoppinsBold",
                      //         fontSize: 15),
                      //   ),
                      // ),
                      Text(
                        widget.price,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "PoppinsBold",
                            fontSize: 17),
                      ),
                      CircleAvatar(
                        child: Icon(
                          Icons.remove_red_eye_rounded,
                          size: 18,
                          color: Colors.black,
                        ),
                        backgroundColor:
                            const Color.fromARGB(179, 234, 234, 234),
                      ),
                      CircleAvatar(
                        child: Icon(
                          Ionicons.cart_outline,
                          size: 18,
                          color: Colors.black,
                        ),
                        backgroundColor: Color.fromARGB(179, 234, 234, 234),
                      ),
                      // CircleAvatar(
                      //   child: Icon(
                      //     Icons.share,
                      //     size: 18,
                      //     color: Colors.white,
                      //   ),
                      //   backgroundColor: Colors.grey,
                      // ),
                      SizedBox(width: 0),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
