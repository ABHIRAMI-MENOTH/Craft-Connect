import 'package:app/home.dart';
import 'package:app/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Login(),
    ),
  ));
}
