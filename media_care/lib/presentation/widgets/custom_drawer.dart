import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_care/models/location.dart';
import 'package:media_care/presentation/screens/home/cubit/home_cubit.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Filter(Hospitals/Clinics)",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close))
            ],
          ),
          const Text("Location"),
          SizedBox(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    mainAxisExtent: 40,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: FacilityLocation.locations.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                        context.read<HomeCubit>().filterByLocation(
                            location: FacilityLocation.locations[index]);
                      },
                      child: Material(
                        elevation: 3,
                        shadowColor: Colors.black,
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(
                              color:
                                  FacilityLocation.locations[index].isSelected
                                      ? const Color.fromARGB(255, 71, 200, 157)
                                      : Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              FacilityLocation.locations[index].name,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
