class House {
  final int id;
  final String name;
  final String location;
  final List<String> imgUrls;
  final int bedrooms;
  final int bathrooms;
  final int garage;
  final int amount;
  final String description;
  final int kitchens;
  final int sqm;
  final List<int> contactDetails;
  final String openTime;
  final String saleTime;

  House({
    required this.id,
    required this.name,
    required this.location,
    required this.imgUrls,
    required this.bedrooms,
    required this.bathrooms,
    required this.garage,
    required this.amount,
    required this.description,
    required this.kitchens,
    required this.sqm,
    required this.contactDetails,
    required this.openTime,
    required this.saleTime,
  });
}
