import 'entities/car.dart';
import './enums/enums.dart';
void main(List<String> arguments) {
  Car c1 = Car(
    brand: 'Toyota', 
    model: 'Camry', 
    year: DateTime(2022), 
    color: 'Blue', 
    mileage: 30.5, 
    fuelType: FuelType.Etanol, 
    plate: 'ABC123', 
    numberOfDoors: 4, 
    numberOfSeats: 5
  );

  c1.openDoor(Door.FrontLeft);
  print('\n');
  c1.showInfos();
  print('\n');
  c1.closeDoor(Door.FrontLeft);
  print('\n');
  c1.showInfos();
}