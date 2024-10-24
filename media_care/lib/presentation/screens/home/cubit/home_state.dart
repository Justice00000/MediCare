part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState(
      {this.facilities = const [],
      this.isgettingFacilities = false,
      this.isFiltering = false});

  final List<Facility> facilities;
  final bool isgettingFacilities;
  final bool isFiltering;

  HomeState copyWith(
      {List<Facility>? facilities,
      bool? isgettingFacilities,
      bool? isFiltering}) {
    return HomeState(
        facilities: facilities ?? this.facilities,
        isFiltering: isFiltering ?? this.isFiltering,
        isgettingFacilities: isgettingFacilities ?? this.isgettingFacilities);
  }

  @override
  List<Object> get props => [facilities, isgettingFacilities, isFiltering];
}
