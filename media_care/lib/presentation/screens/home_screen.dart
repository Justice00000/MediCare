import 'package:flutter/material.dart';
import 'package:media_care/presentation/widgets/filtering_header.dart';
import 'package:media_care/presentation/widgets/hospital_clinic_item_widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "homescreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140.0),
        child: Column(
          children: [
            AppBar(
              centerTitle: true,
              title: const Text("Choose Facility"),
            ),
            const FilteringHeader(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (context, index) => const HospitalClinicItemWidget()),
      ),
    );
  }
}
