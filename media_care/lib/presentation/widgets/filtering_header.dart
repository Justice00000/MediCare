import 'package:flutter/material.dart';

class FilteringHeader extends StatelessWidget {
  const FilteringHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hospitals/Clinics",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              Text("Find a hospital/clinic near you"),
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
