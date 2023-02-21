import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'drawer_view.dart';

class AppBarView extends StatefulWidget {
  const AppBarView({super.key});

  @override
  State<AppBarView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AppBarView> {
  final TextEditingController _controller = TextEditingController();
  bool menu = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        height: 120,
        color: Colors.blue,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 50),
                  TextButton(
                      onPressed: () => context.go('/'),
                      child: const Text('Asosiy',
                          style: TextStyle(color: Colors.white))),
                  TextButton(
                      onPressed: () => context.go('catalog'),
                      child: const Text('Katalog',
                          style: TextStyle(color: Colors.white))),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Vedio sharhlar',
                          style: TextStyle(color: Colors.white))),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Kontaklar',
                          style: TextStyle(color: Colors.white))),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Bandlik',
                          style: TextStyle(color: Colors.white))),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Fikr Qoldiring',
                          style: TextStyle(color: Colors.white))),
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
                  const SizedBox(width: 80),
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
              padding: const EdgeInsets.only(right: 59, left: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                      width: 120,
                      height: 80,
                      child:
                          Image.network('https://mebel.dafna.uz/img/logo.png')),
                  IconButton(
                      onPressed: () {
                        menu = !menu;
                        setState(() {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                child: Column(
                                  children: [
                                    Row(
                                      children: const [MainDrawer()],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        });
                        print(menu);
                      },
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
                        hintText: 'Men ...ni qidirayabman',
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
      ),
    );
  }
}
