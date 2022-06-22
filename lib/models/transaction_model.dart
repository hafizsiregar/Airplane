import 'package:airplane/models/destination_model.dart';
import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {

  final String id;
  final DestinationModel destination;
  final int ammountOfTraveler;
  final String selectedSeats;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandTotal;

  TransactionModel({
    this.id = '',
    required this.destination,
    this.ammountOfTraveler = 0,
    this.selectedSeats = '',
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.grandTotal = 0
  });

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) =>
    TransactionModel(
      id: id,
      destination: DestinationModel.fromJson(json['destination']['id'], json['destination']),
      ammountOfTraveler: json['ammountOfTraveler'],
      selectedSeats: json['selectedSeats'],
      insurance: json['insurance'],
      refundable: json['refundable'],
      vat: json['vat'],
      price: json['price'],
      grandTotal: json['grandTotal']
    );


  @override
  List<Object?> get props => [
    destination,
    ammountOfTraveler, 
    selectedSeats, 
    insurance, 
    refundable, 
    vat, 
    price, 
    grandTotal];  
}