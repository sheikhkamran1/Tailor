import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/utility/chip.dart';

class TailorDetails extends StatelessWidget {
  const TailorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppBar(
              // iconTheme: const IconThemeData(
              //     size: 50,
              //     // color: Color(0xff30404f),
              //     color: Colors.red),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 350,
                child: Image.network(
                  "https://i.pinimg.com/originals/9e/63/57/9e6357714801b7904279f5f5e684e1cf.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 230),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  //------------------------profile pic----------------------------//
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Bombay Style\nTailors",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 28),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Text(
                                "Hulaktole-7,Dhankuta",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border_outlined))
                      ],
                    ),
                  ),
                  //------------------------ Rating ----------------------------//
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffa41c),
                                    size: 25,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffa41c),
                                    size: 25,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    size: 25,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    size: 25,
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.ac_unit,
                                    color: Colors.black87,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Rate this Tailor",
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "35.4K",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                "Reviews",
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //------------------------ elevated botton ----------------------------//
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "/dashboard");
                                },
                                child: const Text('Order Now'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ListTile(
                        title: Text(
                          "Description",
                        ),
                        subtitle: Text(
                            "Our Services: All Your Tailoring Needs. From complete alterations to the final touches: Your garments are in the best hands at Peters Tailor Shop.Alteration By Fay is a Tailor Shop where we do Dry Cleaning, Embroidery Services and also many other best services are available here at."),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CustomChip(
                        title: "Free Delivery",
                        icon: Icons.directions_bike,
                      ),
                      CustomChip(
                        title: "Emergency Stitch",
                        icon: Icons.fast_forward,
                      ),
                    ],
                  ),

                  const Divider(),
                  ListTile(
                    title: Text(
                      "Stitch Rates",
                      // textScaleFactor: 1.3,
                    ),
                    subtitle: Text("Find suitable cost for stitch"),
                  ),

                  SizedBox(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            ListTile(
                              trailing: Image.network(
                                "https://images.tailorstore.com/YToyOntzOjU6IndpZHRoIjtzOjQ6IjEwMDAiO3M6NjoiaGVpZ2h0IjtzOjA6IiI7fQ%3D%3D/images/cms/tailor-store-major-mobile-lines-2021.jpg",
                              ),
                              // leading: Icon(Icons.ac_unit_rounded),
                              title: Text("Shirt"),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Special services in stay home"),
                                  Text(
                                    "\$200",
                                    textScaleFactor: 1.4,
                                  ),
                                  Row(
                                    children: [
                                      OutlinedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              side: BorderSide(
                                                  color: Colors.green),
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Color(0xffffa41c),
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Color(0xffffa41c),
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Color(0xffffa41c),
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.black12,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.black12,
                                            ),
                                          ],
                                        ),
                                      ),
                                      MaterialButton(
                                        textColor: Colors.green,
                                        onPressed: () {},
                                        child: Text("Order Now"),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            ),
                            Divider()
                          ],
                        );
                      },
                    ),
                  ),
                  // ListTile(
                  //   title: Text("Servies"),
                  //   subtitle: Text(
                  //       "By the suitable deals we stitches Shirt,Pant & Coat."),
                  // ),
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text(
                  //     "shirt",
                  //     textScaleFactor: 1.7,
                  //   ),
                  // ),
                  // ListTile(
                  //   title: Text("Shirt"),
                  //   trailing: Text(
                  //     "view All",
                  //     style: TextStyle(color: Colors.green),
                  //   ),
                  // ),
                  // Container(
                  //   height: 300,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: [
                  //       Container(
                  //         width: 160,
                  //         child: Card(
                  //           child: Wrap(
                  //             children: [
                  //               Image.network(
                  //                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqWLTxDAQOz-AMn8PM9qCwCBeB_gPcZc5iLA&usqp=CAU"),
                  //               ListTile(
                  //                 title: Text("Shirt Name"),
                  //                 subtitle: Text(""),
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),

                  // SizedBox(
                  //   // height: 170,
                  //   child: ListView.builder(
                  //     itemCount: 10,
                  //     scrollDirection: Axis.horizontal,
                  //     itemBuilder: (context, index) => Container(
                  //       height: 100,
                  //       width: 170,
                  //       // color: Colors.green,
                  //       // margin: EdgeInsets.all(10),
                  //       child: Container(
                  //         color: Color(0xffD5DADA),
                  //         child: Card(
                  //           clipBehavior: Clip.hardEdge,
                  //           shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(5.0),
                  //           ),
                  //           child: Expanded(
                  //             child: Column(
                  //               children: [
                  //                 Expanded(
                  //                   child: Image.network(
                  //                     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqWLTxDAQOz-AMn8PM9qCwCBeB_gPcZc5iLA&usqp=CAU",
                  //                     fit: BoxFit.cover,
                  //                   ),
                  //                 ),
                  //                 Text("wrweesf")
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  // Flexible(
                  //   child: ListView.builder(
                  //     itemCount: 15,
                  //     shrinkWrap: true,
                  //     physics: NeverScrollableScrollPhysics(),
                  //     itemBuilder: (context, index) => ListTile(
                  //       title: Text("Banana"),
                  //     ),
                  //   ),
                  // ),
                  // CustomChip(),
                  // CustomChip(),
                  // CustomChip(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
