import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart/chechout.dart';
import 'package:flutter_application_1/pages/cart/shipping.dart';
import 'package:flutter_application_1/pages/drawerpages/privacy.dart';
import 'package:flutter_application_1/view/dashboard.dart';
import 'package:get/get.dart';

class BottomNavigatorScreen extends StatefulWidget {
  const BottomNavigatorScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorScreen> createState() => _BottomNavigatorScreenState();
}

class _BottomNavigatorScreenState extends State<BottomNavigatorScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.blue,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: index,
          onTap: (value) {
            setState(() {});
            index = value;
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Notification"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Profile"),
          ]),
      body: index == 0
          ? DashboradScreen()
          : index == 1
              ? CheckoutScreen()
              : index == 2
                  ? PrivacyScreen()
                  : CustomDrawer(),
    );
  }
}
