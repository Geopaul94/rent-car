import 'package:flutter/material.dart';
import 'package:rent_car/data_models/car.dart';
import 'package:rent_car/presentation/widgets/car_card.dart';
import 'package:rent_car/presentation/widgets/more_card.dart';

class CarDetailsPage extends StatelessWidget {
  const CarDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.info_outline),
          Text("Information"),
        ],
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarCard(
                car: Car(
              imageUrl: 'assets/camaro4.png',
              model: ' Camaro',
              distance: 640,
              fuelCapacity: 52,
              pricePerHour: 400,
            )),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/camaro4.png'),
                        ),
                        Text(
                          "Geo Paulson",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.currency_rupee_sharp,
                                color: Colors.blueGrey),
                            Text(
                              "16520",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    width: 150,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/maps.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
                color: Colors.black,
                child: Column(
                  children: [
                    MoreCards(
                      car: Car(
                          imageUrl: 'assets/mustang1.png',
                          model: 'Mustang',
                          distance: 500,
                          fuelCapacity: 45,
                          pricePerHour: 500),
                    ),
                    MoreCards(
                      car: Car(
                          imageUrl: 'assets/d5.png',
                          model: 'Dodge challenger',
                          distance: 850,
                          fuelCapacity: 64,
                          pricePerHour: 500),
                    ),
                    MoreCards(
                      car: Car(
                          imageUrl: 'assets/d5.png',
                          model: 'Dodge challenger',
                          distance: 850,
                          fuelCapacity: 64,
                          pricePerHour: 500),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
