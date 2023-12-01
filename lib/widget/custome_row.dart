import 'package:flutter/material.dart';

class CustomeRow extends StatelessWidget {
  const CustomeRow({
    super.key,
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
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  money,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
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