import 'package:flutter/material.dart';
import 'package:ecommerce_page_challengs/widget/custome_row.dart';
import 'package:ecommerce_page_challengs/widget/icon_button_container';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Delicious ',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Food',
                  style: TextStyle(fontSize: 34),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0, top: 79, bottom: 10),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          CustomeRow(
                            img: Image.asset('assets/rice.jpg'),
                            name: 'Bariis',
                            money: '\$ 28',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomeRow(
                            img: Image.asset('assets/rice.jpg'),
                            name: 'Bariis',
                            money: '\$ 28',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomeRow(
                            img: Image.asset('assets/rice.jpg'),
                            name: 'Bariis',
                            money: '\$ 28',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomeRow(
                            img: Image.asset('assets/rice.jpg'),
                            name: 'Bariis',
                            money: '\$ 28',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomeRow(
                            img: Image.asset('assets/rice.jpg'),
                            name: 'Bariis',
                            money: '\$ 28',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomeRow(
                            img: Image.asset('assets/rice.jpg'),
                            name: 'Basto',
                            money: '\$ 28',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          // Add more rows as needed
                          CustomeRow(
                            img: Image.asset(
                                'assets/rice.jpg'), // Replace with the actual image asset
                            name: 'Your Food',
                            money: '\$ Your Price',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomeRow(
                            img: Image.asset(
                                'assets/rice.jpg'), // Replace with the actual image asset
                            name: 'Your Food',
                            money: '\$ Your Price',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const IconButtonContainer(
                          icon: Icon(
                            Icons.search,
                          ),
                        ),
                        const IconButtonContainer(
                          icon: Icon(Icons.shopping_basket),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff28E5E4),
                            ),
                            color: const Color(0xff221831),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: 120,
                          height: 80,
                          child: const Center(
                            child: Text(
                              'Checkout',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
