import 'package:farah_s_ecoshop/modules/altModule.dart';


class ItemModule{
  String image, name;
  String?  details;
  int? count;
  double price, carbonFootprint;
  AltModule? alternatives;


  ItemModule({
    required this.carbonFootprint,
    required this.name,
    this.count,
    required this.image,
    required this.price,
    this.details,
    this.alternatives,
  });

}

