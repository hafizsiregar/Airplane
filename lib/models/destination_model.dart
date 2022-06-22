import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {

  final String id;
  final String name;
  final String imageUrl;
  final String city;
  final double rating;
  final int price;

  DestinationModel({
    required this.id,
    this.name= '',
    this.imageUrl = '',
    this.city = '',
    this.rating = 0.0,
    this.price = 0,
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
    DestinationModel(
      id: 'id',
      name: json['name'],
      imageUrl: json['imageUrl'],
      city: json['city'],
      rating: json['rating'].toDouble(),
      price: json['price'],
    );

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'imageUrl' : imageUrl,
    'city' : city,
    'rating' : rating,
    'price' : price,
  };

  @override
  List<Object?> get props => [id, name, imageUrl, city, rating, price];

}

