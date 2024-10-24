import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_care/core/colors.dart';
import 'package:media_care/models/hospital_clinic.dart';
import 'package:media_care/presentation/screens/hospitals_clinics/cubit/home_cubit.dart';

class HospitalClinicItemWidget extends StatelessWidget {
  final Facility facility;
  const HospitalClinicItemWidget({required this.facility, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<HomeCubit>().selectFacility(facility: facility);
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 17.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: facility.name == state.selectedFacility.name
                        ? Border.all(
                            width: 1.2, color: MediCareColors.greenColor)
                        : null),
                height: 130,
                child: Row(
                  children: [
                    Container(
                        decoration: const BoxDecoration(),
                        height: 130,
                        width: 160,
                        child: Image.network(
                          facility.image,
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                facility.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(facility.location),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                      "${facility.rating} (${facility.reviews} Reviews)"),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: MediCareColors.greenColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Text(
                                    "VIEW",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
