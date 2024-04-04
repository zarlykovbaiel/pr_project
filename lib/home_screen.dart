import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Skip",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 124,
              height: 124,
              child: Image.asset("lib/assets/mm.png"),
            ),
          ),
          const Text(
            "Connect your wearables",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          ButtonChange(imageBrand: "lib/assets/i1.png", nameBrand: 'Apple'),
          SizedBox(height: 20),
          ButtonChange(imageBrand: "lib/assets/i2.png", nameBrand: 'Concept2'),
          SizedBox(height: 20),
          ButtonChange(imageBrand: "lib/assets/i3.png", nameBrand: 'Eight'),
          SizedBox(height: 20),
          ButtonChange(imageBrand: "lib/assets/i4.png", nameBrand: 'FitBit'),
          SizedBox(height: 20),
          ButtonChange(imageBrand: "lib/assets/i5.png", nameBrand: 'Garmin'),
          ButtonChange(
              imageBrand: "lib/assets/i6.png", nameBrand: 'Google Fit'),
        ],
      ),
    );
  }
}

class ButtonChange extends StatelessWidget {
  const ButtonChange({
    super.key,
    required this.imageBrand,
    required this.nameBrand,
  });

  final String imageBrand;
  final String nameBrand;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 80,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.06),
              offset: const Offset(0, 4),
              blurRadius: 15)
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              // "lib/assets/i1.png",
              imageBrand,
              width: 50,
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                nameBrand,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {},
              child: Text(
                "Connect",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
