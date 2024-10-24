import 'package:uuid/uuid.dart';

class FacilityLocation {
  final String id;
  final String name;
  final bool isSelected;

  const FacilityLocation({
    required this.id,
    required this.name,
    required this.isSelected,
  });

  static List<FacilityLocation> locations = [
    FacilityLocation(id: const Uuid().v4(), name: "Niger", isSelected: false),
    FacilityLocation(id: const Uuid().v4(), name: "Chad", isSelected: false),
    FacilityLocation(id: const Uuid().v4(), name: "Comoros", isSelected: false),
    FacilityLocation(
        id: const Uuid().v4(), name: "Sierra Leone", isSelected: false),
  ];

  static FacilityLocation empty =
      FacilityLocation(id: const Uuid().v4(), name: "", isSelected: false);
}
