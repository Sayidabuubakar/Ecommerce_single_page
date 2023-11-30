import 'package:flutter/material.dart';

void main() {
  runApp(const Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({Key? key});

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
        body: ContainerUi(),
      ),
    );
  }
}

class ContainerUi extends StatelessWidget {
  const ContainerUi({Key? key});

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
              decoration: BoxDecoration(
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
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff28E5E4),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: 80,
                          height: 80,
                          child: const Icon(
                            Icons.search,
                            size: 40,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff28E5E4),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: 80,
                          height: 80,
                          child: const Icon(
                            Icons.shopping_basket,
                            size: 40,
                          ),
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

class CustomeRow extends StatelessWidget {
  const CustomeRow({
    Key? key,
    required this.img,
    required this.money,
    required this.name,
  });

  final Image img;
  final String name;
  final String money;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Row(
        children: [
          Flexible(
            child: img,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  money,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.add,
            size: 30,
          ),
        ],
      ),
    );
  }
}
