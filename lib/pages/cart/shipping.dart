import 'package:flutter/material.dart';

class ShippingScreen extends StatelessWidget {
  const ShippingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Select your shipping address",
              textScaleFactor: 1.5,
            ),
            Text("Kamran Sheikh"),
            Text("Dhankuta-7,Hulaktole"),
            Text("Nepal"),
            Text("Kamran123@gmail.com"),
            Text("9807062070"),
          ],
        ),
      ),
    );
  }
}
