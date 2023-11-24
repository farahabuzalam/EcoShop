class AltModule{
  String image, name;
  String?  details;
  int? count;
  double price, carbonFootprint;

  AltModule({
    required this.carbonFootprint,
    required this.name,
    this.count,
    required this.image,
    required this.price,
    this.details,
  });

}