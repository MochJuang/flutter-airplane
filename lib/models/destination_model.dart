import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  String id;
  String name;
  String city;
  String imageUrl;
  double rating;
  int price;

  DestinationModel(
      {required this.id,
      this.name = "",
      this.city = "",
      this.imageUrl = "",
      this.rating = 0.0,
      this.price = 0});

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) {
    return DestinationModel(
      id: id,
      name: json['name'],
      city: json['city'],
      imageUrl: json['imageUrl'],
      rating: json['rating'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['city'] = city;
    data['imageUrl'] = imageUrl;
    data['rating'] = rating;
    data['price'] = price;
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, city, imageUrl, rating, price];
}
