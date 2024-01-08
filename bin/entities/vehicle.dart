import '../enums/enums.dart';

abstract class Vehicle {
  String brand;
  String model;
  DateTime year;
  String color;
  double mileage;
  FuelType fuelType;
  String plate;

  Vehicle({
    required this.brand,
    required this.model, 
    required this.year,
    required this.color,
    required this.mileage,
    required this.fuelType,
    required this.plate
  });
}
