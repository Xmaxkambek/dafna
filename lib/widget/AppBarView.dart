// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBArView extends StatefulWidget {
  const AppBArView({super.key});

  @override
  State<AppBArView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AppBArView> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 120,
      color: Colors.blue,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 50),
                row1('Category'),
                row1('Video reviewa'),
                row1('contact'),
                row1('Employment'),
                row1('Leave feedback'),
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  child: const Text(
                    'Discounts',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 100),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    '+998(71)203-11-11',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 40,
                ),
                SizedBox(
                  height: 80,
                  width: 140,
                  child: Image.asset('img/home.jpg'),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 550,
                  height: 40,
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.search),
                      filled: true,
                      // focusColor: const Color.fromARGB(255, 5, 52, 80),
                      fillColor: const Color.fromARGB(255, 101, 161, 218),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Column(
                    children: const [
                      Icon(
                        Icons.location_city,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        'Addesses',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  child: Column(
                    children: const [
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        'Basket',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  child: Column(
                    children: const [
                      Icon(
                        Icons.person_add,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        'Registration',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  child: Column(
                    children: const [
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        'Favorites',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget row1(String text) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
