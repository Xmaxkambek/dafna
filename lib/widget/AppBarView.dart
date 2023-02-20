import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarView extends StatefulWidget {
  const AppBarView({super.key});

  @override
  State<AppBarView> createState() => _AppBarViewState();
}

class _AppBarViewState extends State<AppBarView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            row1('Home'),
            row1('Category'),
            row1('Video reviewa'),
            row1('contact'),
            row1('Employment'),
            row1('Leave feedback'),
            TextButton(
              onPressed: () {},
              child: const Text('+998(71)203-11-11'),
            )
          ],
        ),
        Row(
          children: [
            Image.network('https://mebel.dafna.uz/img/logo.png'),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                hintText: 'I\'m looking for',
                suffixIcon: Icon(Icons.search),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget row1(String text) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
