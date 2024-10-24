import 'package:flutter/material.dart';

class FilteringHeader extends StatelessWidget {
  const FilteringHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
              Icon(
                Icons.search,
                size: 35,
                color: Color.fromARGB(255, 255, 224, 130),
              ),
              Icon(
                size: 35,
                Icons.tune,
                color: Color.fromARGB(255, 255, 224, 130),
              )
            ],
          ),
        ],
      ),
    );
  }
}
