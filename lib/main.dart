
import 'package:ecommerce_page_challengs/screens/home.dart/home.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff28E5E4),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.arrow_back_ios,
            size: 30,
          ),
          actions: const [
            Icon(
              Icons.filter_list,
              size: 30,
            ),
            SizedBox(
              width: 90,
            ),
            Icon(
              Icons.menu,
              size: 30,
            ),
          ],
        ),
        body: const HomeScreen(),
      ),
    );
  }
}

