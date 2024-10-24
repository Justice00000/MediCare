part of 'home_cubit.dart';

class HomeState extends Equatable {
  HomeState(
      {this.facilities = const [],
      this.isgettingFacilities = false,
      this.selectedLocation =
          const FacilityLocation(id: "id", name: "", isSelected: false),
      this.selectedFacility = const Facility(
          id: "",
          image: "",
          name: "",
          location: "",
          rating: "",
          reviews: 0,
          type: "")});

  final List<Facility> facilities;
  final bool isgettingFacilities;
  FacilityLocation selectedLocation;
  Facility selectedFacility;

  HomeState copyWith(
      {List<Facility>? facilities,
      bool? isgettingFacilities,
      FacilityLocation? selectedLocation,
      Facility? selectedFacility}) {
    return HomeState(
        facilities: facilities ?? this.facilities,
        selectedLocation: selectedLocation ?? this.selectedLocation,
        isgettingFacilities: isgettingFacilities ?? this.isgettingFacilities,
        selectedFacility: selectedFacility ?? this.selectedFacility);
  }

  @override
  List<Object> get props =>
      [facilities, isgettingFacilities, selectedLocation, selectedFacility];
}
