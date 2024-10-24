import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_care/core/colors.dart';
import 'package:media_care/models/pharmacy.dart';
import 'package:media_care/presentation/screens/pharmacies/cubit/pharmacies_cubit.dart';

class PharmacyItemWidget extends StatelessWidget {
  final Pharmacy pharmacy;
  const PharmacyItemWidget({required this.pharmacy, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PharmaciesCubit, PharmaciesState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<PharmaciesCubit>().selectPharmacy(pharmacy: pharmacy);
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 17.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: pharmacy.name == state.selectedPharmacy.name
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
                          pharmacy.image,
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
                                pharmacy.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(pharmacy.location),
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
                                      "${pharmacy.rating} (${pharmacy.reviews} Reviews)"),
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
