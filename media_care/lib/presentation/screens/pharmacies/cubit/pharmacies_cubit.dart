import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:media_care/models/location.dart';
import 'package:media_care/models/pharmacy.dart';

part 'pharmacies_state.dart';

class PharmaciesCubit extends Cubit<PharmaciesState> {
  PharmaciesCubit() : super(PharmaciesState());

// GETTING ALL HOSPITALS AND CLINICS
  Future<void> gettingPharmacies() async {
    try {
      emit(state.copyWith(isgettingPharmacies: true));
      await Future.delayed(const Duration(seconds: 2));
      final List<Pharmacy> fetchedFacilities = Pharmacy.pharmacies;
      emit(state.copyWith(
          pharmacies: fetchedFacilities, isgettingPharmacies: false));
    } catch (e) {
      emit(state.copyWith(isgettingPharmacies: false));
      throw Exception(e);
    }
  }

// FILTERING CLINICS AND HOSPITALS
  Future<void> filterByLocation({required FacilityLocation location}) async {
    try {
      emit(state.copyWith(isgettingPharmacies: true));

      final FacilityLocation selectedLocation = FacilityLocation.locations
          .firstWhere((element) => element.name == location.name);
      selectedLocation.isSelected == true;
      emit(state.copyWith(selectedLocation: selectedLocation));
      await Future.delayed(const Duration(seconds: 2));

      final List<Pharmacy> fetchedFacilities = Pharmacy.pharmacies
          .where((element) => element.location == location.name)
          .toList();
      emit(state.copyWith(
          isgettingPharmacies: false, pharmacies: fetchedFacilities));
    } catch (e) {
      emit(state.copyWith(isgettingPharmacies: false));

      throw Exception(e);
    }
  }

  // SELECT  SINGLE CLINIC OR HOSPITAL
  selectPharmacy({required Pharmacy pharmacy}) {
    final Pharmacy selectedFacility = Pharmacy.pharmacies
        .firstWhere((element) => element.name == pharmacy.name);

    emit(state.copyWith(selectedPharmacy: selectedFacility));
  }
}
