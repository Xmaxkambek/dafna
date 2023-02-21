import 'package:dafna/service/dafna_api.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      body: FutureBuilder(
        future: getCatalog(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) => Container(
                  height: 200,
                  width: 200,
                  child: Image.network(snapshot.data![index]['img_url']),
                ),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child:  CircularProgressIndicator());
          } else {
            throw Exception('Error');
          }
        },
      ),
    );
  }
}
