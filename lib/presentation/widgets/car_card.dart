import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rent_car/data_models/car.dart';

class CarCard extends StatelessWidget {
  final Car car;
  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: const Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 5)]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              car.imageUrl,
              height: screenHeight * 0.3,
            ),
            Text(
              car.model,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Text('${car.distance.toStringAsFixed(0)}km'),
                  const Icon(Icons.add_location_alt_sharp),
                  const SizedBox(
                    width: 10,
                  ),

                  const SizedBox(
                      width: 5), // Adds some spacing between the text and icon
                  const Icon(Icons.local_gas_station_sharp),

                  Text('${car.fuelCapacity.toStringAsFixed(0)}L'),
                ]),
                Row(
                  children: [
                    Icon(Icons.currency_rupee_sharp),
                    Text('${car.pricePerHour.toStringAsFixed(2)}/h'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
