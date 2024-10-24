import 'package:uuid/uuid.dart';

class Facility {
  final String id;
  final String image;
  final String name;
  final String location;
  final String rating;
  final int reviews;
  final String type;
  final bool isSelected;

  Facility({
    required this.id,
    required this.image,
    required this.name,
    required this.location,
    required this.rating,
    required this.reviews,
    required this.type,
    this.isSelected = false,
  });

  static List<Facility> facilities = [
    Facility(
        id: const Uuid().v4(),
        image:
            "https://fixedassetsmn.com/wp-content/uploads/2018/06/childrenshospitalclinic_woodbury.jpg",
        name: "Woodbury Clinic",
        location: "Niger",
        rating: '4.5',
        reviews: 2342,
        type: "clinic"),
    Facility(
        id: const Uuid().v4(),
        image:
            "https://healthcaredesignmagazine.com/wp-content/uploads/2023/08/massgen1.png",
        name: "Bringham Clinic",
        location: "Niger",
        rating: '4.5',
        reviews: 2342,
        type: "clinic"),
    Facility(
        id: const Uuid().v4(),
        image:
            "https://rwedesignbuild.com/wp-content/uploads/2023/05/5E5A7522-scaled.jpg",
        name: "Bringham Clinic",
        location: "Niger",
        rating: '4.5',
        reviews: 2342,
        type: "clinic"),
    Facility(
        id: const Uuid().v4(),
        image: "https://www.wpr.org/wp-content/uploads/2024/01/froedtert.png",
        name: "Bringham Clinic",
        location: "Niger",
        rating: '4.5',
        reviews: 2342,
        type: "clinic"),
    Facility(
        id: const Uuid().v4(),
        image:
            "https://www.jsonline.com/gcdn/presto/2020/01/23/PMJS/c6be963f-093d-41e4-81e9-52d8009830cc-Heart_Hospital_1.JPG?width=660&height=352&fit=crop&format=pjpg&auto=webp",
        name: "Bringham Clinic",
        location: "Niger",
        rating: '4.5',
        reviews: 2342,
        type: "clinic"),
    Facility(
        id: const Uuid().v4(),
        image:
            "https://www.cannondesign.com/img/0e65f18d-1491-44a5-aebe-fce8c8cdf4c8/mayo-clinic-1.jpg?fm=jpg&q=80&fit=max&crop=2843%2C1599%2C0%2C0&w=1000",
        name: "Bringham Clinic",
        location: "Niger",
        rating: '4.5',
        reviews: 2342,
        type: "clinic"),
    Facility(
        id: const Uuid().v4(),
        image:
            "https://i.pinimg.com/736x/e6/aa/e0/e6aae0c45231a39bc5b17293ced66d63.jpg",
        name: "Bringham Clinic",
        location: "Niger",
        rating: '4.5',
        reviews: 2342,
        type: "clinic"),
    Facility(
        id: const Uuid().v4(),
        image: "https://myvalleynews.com/wp-content/uploads/2023/06/radys.jpg",
        name: "Bringham Clinic",
        location: "Niger",
        rating: '4.5',
        reviews: 2342,
        type: "clinic"),
    Facility(
        id: const Uuid().v4(),
        image:
            "https://assets.businessalabama.com/uploads/2017/09/robins-and-morton.jpg",
        name: "Bringham Clinic",
        location: "Niger",
        rating: '4.5',
        reviews: 2342,
        type: "clinic"),
    Facility(
        id: const Uuid().v4(),
        image:
            "https://www.ucsf.edu/sites/default/files/styles/article_feature_banner__image/public/2024-07/bch-oakland-new-hospital-building-dover-extension.jpg",
        name: "Bringham Clinic",
        location: "Niger",
        rating: '4.5',
        reviews: 2342,
        type: "clinic"),
    Facility(
        id: const Uuid().v4(),
        image:
            "https://www.mccarthy.com/sites/default/files/styles/full_width_md_desktop_1x/public/2023-04/CHOC-Erlanger-002.jpg?h=9782657d&itok=Ov3HiRXY",
        name: "Bringham Clinic",
        location: "Niger",
        rating: '4.5',
        reviews: 2342,
        type: "clinic"),
  ];
}
