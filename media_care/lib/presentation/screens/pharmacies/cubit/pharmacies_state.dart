part of 'pharmacies_cubit.dart';

class PharmaciesState extends Equatable {
  PharmaciesState(
      {this.pharmacies = const [],
      this.isgettingPharmacies = false,
      this.selectedLocation =
          const FacilityLocation(id: "id", name: "", isSelected: false),
      this.selectedPharmacy = const Pharmacy(
          id: "",
          image: "",
          name: "",
          location: "",
          rating: "",
          reviews: 0,
          type: "")});

  final List<Pharmacy> pharmacies;
  final bool isgettingPharmacies;
  FacilityLocation selectedLocation;
  Pharmacy selectedPharmacy;

  PharmaciesState copyWith(
      {List<Pharmacy>? pharmacies,
      bool? isgettingPharmacies,
      FacilityLocation? selectedLocation,
      Pharmacy? selectedPharmacy}) {
    return PharmaciesState(
        pharmacies: pharmacies ?? this.pharmacies,
        selectedLocation: selectedLocation ?? this.selectedLocation,
        isgettingPharmacies: isgettingPharmacies ?? this.isgettingPharmacies,
        selectedPharmacy: selectedPharmacy ?? this.selectedPharmacy);
  }

  @override
  List<Object> get props =>
      [pharmacies, isgettingPharmacies, selectedLocation, selectedPharmacy];
}
