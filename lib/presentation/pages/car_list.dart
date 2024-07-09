import 'package:flutter/material.dart';
import 'package:rent_car/data_models/car.dart';
import 'package:rent_car/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});

  final List<Car> cars = [
    Car(
        imageUrl: 'assets/mustang1.png',
        model: 'Mustang',
        distance: 500,
        fuelCapacity: 45,
        pricePerHour: 500),
    Car(
        imageUrl: 'assets/d5.png',
        model: 'Dodge challenger',
        distance: 850,
        fuelCapacity: 64,
        pricePerHour: 500),
    Car(
      imageUrl: 'assets/camaro4.png',
      model: ' Camaro',
      distance: 640,
      fuelCapacity: 52,
      pricePerHour: 400,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Choose Your Car",
            style:
                TextStyle(color: Colors.black), // Set text color here if needed
          ),
          backgroundColor: Colors.white,
          centerTitle: true, // Center the title text
          iconTheme:
              IconThemeData(color: Colors.black), // Set icon color if needed
        ),
        body: ListView.builder(
            itemCount: cars.length,
            itemBuilder: (context, index) {
              return CarCard(car: cars[index]);
            }));
  }
}
