import 'package:dafna/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    ),
  );
}
