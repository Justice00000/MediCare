import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_care/core/colors.dart';
import 'package:media_care/models/location.dart';
import 'package:media_care/presentation/screens/hospitals_clinics/cubit/home_cubit.dart';
import 'package:media_care/presentation/screens/pharmacies/cubit/pharmacies_cubit.dart';
import 'package:media_care/presentation/widgets/custom_line_progress_bar.dart';

class FCustomDrawer extends StatelessWidget {
  final String title;
  const FCustomDrawer({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
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
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                            context.read<PharmaciesCubit>().filterByLocation(
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
                                      FacilityLocation.locations[index].name ==
                                              state.selectedLocation.name
                                          ? MediCareColors.greenColor
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
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "View all",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("23km"),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomLineProgressBar(progress: 0.5),
              ),
              SizedBox(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1,
                            mainAxisExtent: 40,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemCount: 4,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                            context.read<PharmaciesCubit>().filterByLocation(
                                location: FacilityLocation.locations[3]);
                          },
                          child: Material(
                            elevation: 3,
                            shadowColor: Colors.black,
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      FacilityLocation.locations[3].isSelected
                                          ? MediCareColors.greenColor
                                          : Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  FacilityLocation.locations[3].name,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        )),
              )
            ],
          );
        },
      ),
    );
  }
}
