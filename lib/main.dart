import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart/shipping.dart';
import 'package:flutter_application_1/pages/cart/chechout.dart';
import 'package:flutter_application_1/pages/dashboardpages/productdetails.dart';
import 'package:flutter_application_1/pages/dashboardpages/tailordetails.dart';
import 'package:flutter_application_1/pages/drawerpages/addtailor.dart';
import 'package:flutter_application_1/pages/drawerpages/privacy.dart';
import 'package:flutter_application_1/provider/provider.dart';
import 'package:flutter_application_1/view/bottomnavigator.dart';
import 'package:flutter_application_1/view/dashboard.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ProductProvider(),
      ),
      // ChangeNotifierProvider(
      //   create: (context) => DarkMode(),
      // ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme.of(context).copyWith(
            centerTitle: false,
            backgroundColor: Colors.white,
            iconTheme: IconTheme.of(context).copyWith(color: Colors.black)),
      ),
      home: BottomNavigatorScreen(),
      routes: {
        "/tailordetails": (context) => const TailorDetails(),
        "/productdetails": (context) => const ProductDetailsPage(),
        "/add_tailor": (context) => AddTailor(),
        "/checkoutpage": (context) => const CheckoutScreen(),
        "/privacy": (context) => const PrivacyScreen(),
        "/shippingaddress": (context) => const ShippingScreen(),
      },
    );
  }
}
