import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart/chechout.dart';
import 'package:flutter_application_1/view/utility/form.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ShippingScreen extends StatelessWidget {
  const ShippingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        // color: Colors.green,
        // hasNotch: false,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 0, blurRadius: 5),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: "Selected Items",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black)),
                              TextSpan(
                                  text: " (2)",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: "Subtotal :",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black)),
                              TextSpan(
                                  text: " \$500",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xffffbf00)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'Deliver',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            onPressed: () {
                              Get.to(const ShippingScreen());
                              // ignore: avoid_print
                              print('Pressed');
                            },
                          )),
                        ],
                      ),
                    )
                    // CustomElevatedBotton(
                    //   title: "Deliver",
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.5,
        title: Text(
          "Select your shipping address",
          style: TextStyle(color: Colors.black),
          // textScaleFactor: 1.7,
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
              // color: Colors.amber,
              // height: 100,
              // width: 100,
              child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Image.network(
                "https://www.callcentrehelper.com/images/stories/2019/05/scooter-delivery-map-760.jpg"),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kamran Sheikh",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Edit",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Dhankuta-7,Hulaktole",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      "Nepal",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      "Kamran123@gmail.com",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      "9807062070",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Divider(),
                    ),
                    ListTile(
                      title: Text("Payment System"),
                      subtitle: Text("Your payment will be on deliver"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ))),
    );
  }
}


// Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color.fromRGBO(0, 209, 191, 1),
//               // Colors.greenAccent,
//               Colors.white
//             ],
//             stops: [0.3, 0.7],
//           ),
//         ),
//         child:

// Text(
  //                       "Kamran Sheikh",
  //                       style: GoogleFonts.roboto(
  //                         textStyle: TextStyle(
  //                          
  //                           fontSize: 20,
  //                           fontWeight: FontWeight.bold,
  //                         ),
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 10,
  //                     ),
  //                     Text(
  //                       "Dhankuta-7,Hulaktole",
  //                       style: GoogleFonts.roboto(
  //                         textStyle: TextStyle(
  //                          
  //                           fontSize: 20,
  //                         ),
  //                       ),
  //                     ),
  //                     Text(
  //                       "Nepal",
  //                       style: GoogleFonts.roboto(
  //                         textStyle: TextStyle(
  //                          
  //                           fontSize: 20,
  //                         ),
  //                       ),
  //                     ),
  //                     Text(
  //                       "Kamran123@gmail.com",
  //                       style: GoogleFonts.roboto(
  //                         textStyle: TextStyle(
  //                          
  //                           fontSize: 20,
  //                         ),
  //                       ),
  //                     ),
  //                     Text(
  //                       "9807062070",
  //                       style: GoogleFonts.roboto(
  //                         textStyle: TextStyle(
  //                          
  //                           fontSize: 20,
  //                         ),
  //                       ),
  //                     ),