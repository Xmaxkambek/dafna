import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Katalog extends StatefulWidget {
  const Katalog({super.key});

  @override
  State<Katalog> createState() => _KatalogState();
}

class _KatalogState extends State<Katalog> {
  List<String> katalog_item = [
    'https://mebel.dafna.uz/img/mainpage/main1.png',
    'https://mebel.dafna.uz/img/mainpage/main2.jpg',
    'https://mebel.dafna.uz/img/mainpage/main2.jpg',
    'https://mebel.dafna.uz/img/mainpage/main2.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: katalog_item.length,
        itemBuilder: (context, index) => Container(
          height: 200,
          width: 200,
          child: Image.network(katalog_item[index]),
        ),
      ),
    );
  }
}
