// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:depression/banner.dart';
// import 'package:depression/productView.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:ionicons/ionicons.dart';
// import 'package:iconsax/iconsax.dart';

class BlogCard extends StatefulWidget {
  final name;
  final image;
  final description;
  final pk;
  final date;
  const BlogCard({
    required this.name,
    required this.image,
    required this.description,
    required this.pk,
    required this.date,
    Key? key,
  }) : super(key: key);

  @override
  State<BlogCard> createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  bool isExpanded = false;

  void toggleExpand() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, bottom: 10),
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/user.png"),
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Admin",
                              style: TextStyle(
                                  fontFamily: "PoppinsBold",
                                  color: Colors.black,
                                  fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "30 Nov 2023",
                              style: TextStyle(
                                  fontFamily: "PoppinsMedium",
                                  color: Color.fromARGB(255, 127, 127, 127),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                      ],
                    ),
                    Icon(
                      Iconsax.verify,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    widget.image,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 15, top: 10),
                child: Text(
                  widget.name,
                  style: TextStyle(
                      fontFamily: "PoppinsBold",
                      color: Colors.black,
                      fontSize: 19),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  widget.description,
                  maxLines: isExpanded ? null : 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "PoppinsMedium",
                      color: Color.fromARGB(255, 114, 114, 114),
                      fontSize: 15,
                      height: 1.6),
                ),
              ),
              GestureDetector(
                // onTap: toggleExpand,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: toggleExpand,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(
                                      Icons.remove_red_eye_rounded,
                                      size: 18,
                                      color: Colors.black,
                                    ),
                                    backgroundColor: const Color.fromARGB(
                                        179, 234, 234, 234),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "View post",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "PoppinsBold",
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  child: Icon(
                                    Icons.share,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                  backgroundColor: Colors.grey,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "Share",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "PoppinsBold",
                                      fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
