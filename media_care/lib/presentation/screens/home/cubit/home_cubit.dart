import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:media_care/models/hospital_clinic.dart';
import 'package:media_care/models/location.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  Future<void> gettingFacilities() async {
    try {
      emit(state.copyWith(isgettingFacilities: true));
      await Future.delayed(const Duration(seconds: 2));
      final List<Facility> fetchedFacilities = Facility.facilities;
      emit(state.copyWith(
          facilities: fetchedFacilities, isgettingFacilities: false));
    } catch (e) {
      emit(state.copyWith(isgettingFacilities: false));
      throw Exception(e);
    }
  }

  Future<void> filterByLocation({required FacilityLocation location}) async {
    try {
      emit(state.copyWith(isgettingFacilities: true));

      await Future.delayed(const Duration(seconds: 2));
      final FacilityLocation selectedLocation = FacilityLocation.locations
          .firstWhere((element) => element.name == location.name);
      selectedLocation.isSelected == true;

      final List<Facility> fetchedFacilities = Facility.facilities
          .where((element) => element.location == location.name)
          .toList();
      emit(state.copyWith(
          isgettingFacilities: false, facilities: fetchedFacilities));
    } catch (e) {
      emit(state.copyWith(isgettingFacilities: false));

      throw Exception(e);
    }
  }
}
