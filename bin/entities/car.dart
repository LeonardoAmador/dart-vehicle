import './vehicle.dart';
import '../enums/enums.dart';

class Car extends Vehicle {
  int numberOfDoors;
  int numberOfSeats;

  Car({
    required String brand,
    required String model,
    required DateTime year,
    required String color,
    required double mileage,
    required FuelType fuelType,
    required String plate,
    required this.numberOfDoors,
    required this.numberOfSeats,
  }) : super(
    brand: brand, 
    model: model, 
    year: year, 
    color: color, 
    mileage: mileage, 
    fuelType: fuelType, 
    plate: plate
  );

  // ignore: prefer_final_fields
  Map<Door, bool> _doorState = {
    Door.FrontLeft: false,
    Door.FrontRight: false,
    Door.RearLeft: false,
    Door.RearRigth: false
  };

  void openDoor(Door door) {
    if (numberOfDoors > 0) {
      if (_isValidDoor(door)) {
        if (_doorState[door] == false) {
          print('Opening ${door.toString()} door');
          _doorState[door] = true;
        } else {
          print('${door.toString()} door is already open.');
        }
      } else {
        print('Invalid door for this vehicle.');
      }
    } else {
      print('This vehicle does not have any doors');
    }
  }

  void closeDoor(Door door) {
    if (numberOfDoors > 0) {
      if (_isValidDoor(door)) {
        if (_doorState[door] == true) {
          print('Closing ${door.toString()} door.');
          _doorState[door] = false;
        } else {
          print('${door.toString()} door is already closed.');
        }
      } else {
        print('Invalid door for this vehicle.');
      }
    } else {
      print('This vehicle does not have any doors');
    }
  }

  bool _isValidDoor(Door door) {
    switch(door) {
      case Door.FrontLeft:
      case Door.FrontRight:
        return true;
      case Door.RearLeft:
      case Door.RearRigth:
        return numberOfDoors > 2; // Rear doors are valid if the vehicle has more than 2 doors.
    }
  }

  void showInfos() {
    print('Vehicle Information:');
    print('Brand: $brand');
    print('Model: $model');
    print('Year: ${year.year}');
    print('Color: $color');
    print('Mileage: $mileage');
    print('Fuel Type: $fuelType');
    print('Plate: $plate');
    print('Number of Doors: $numberOfDoors');
    print('Number of Seats: $numberOfSeats');

    print('Door States: ');
    for (var entry in _doorState.entries) {
      print('${entry.key.toString()} is ${entry.value ? 'open' : 'closed'}');
    }
  }
}