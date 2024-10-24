import 'package:flutter/material.dart';

class FilteringHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  const FilteringHeader(
      {required this.title, required this.subtitle, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              Text(subtitle),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.search,
                size: 35,
                color: Color.fromARGB(255, 255, 224, 130),
              ),
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(size: 35, Icons.tune),
                color: const Color.fromARGB(255, 255, 224, 130),
              )
            ],
          ),
        ],
      ),
    );
  }
}
