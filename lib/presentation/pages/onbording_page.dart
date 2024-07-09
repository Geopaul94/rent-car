import 'package:flutter/material.dart';
import 'package:rent_car/presentation/pages/car_list.dart';

class OnbordingPage extends StatelessWidget {
  OnbordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // SizedBox(height: screenHeight * 0.01),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Container(
                width: screenWidth * 1,
                height: screenHeight * 0.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/mustang.png'),
                    fit: BoxFit.cover,
                  ),
                )),
          ),
        ),
        Container(
          // width: screenWidth * 0.8,
          // height: screenHeight * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Preminum cars. \n Enjoy the luxury",
                style: TextStyle(
                    fontSize: screenWidth * 0.08,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenHeight * 0.03, // Set the height
              ),
              Text(
                "Preminum and prestige car daily rentel \n Experince the thrill at a lower price",
                style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenHeight * 0.03),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return CarListScreen();
                    },
                  ));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Let\'s Go',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
