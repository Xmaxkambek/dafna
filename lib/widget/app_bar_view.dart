// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class AppBarView extends StatefulWidget {
  const AppBarView({super.key});

  @override
  State<AppBarView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AppBarView> {
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
                row1('Uy'),
                row1('Katalog'),
                row1('Vedio sharhlar'),
                row1('Kontaklar'),
                row1('Bandlik'),
                row1('Fikr Qoldiring'),
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  child: const Text(
                    'Chegirmalar',
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
                // SizedBox(
                //   height: 80,
                //   width: 140,
                //   child: Image.asset('img/home.jpg'),
                // ),
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
                      hintText: 'qidiruv',
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
                        'Manzillar',
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
                        'Savat',
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
                        'Ro\'yxattan o\'tish ',
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
                        'Sevimlilar',
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
