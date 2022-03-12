import 'package:flutter/material.dart';

class TryScreen extends StatelessWidget {
  const TryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 5.0,
                // mainAxisSpacing: 5.0,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  // color: Colors.blue,
                  child: Center(
                    child: SizedBox(
                      width: 360,
                      height: 900,
                      child: Card(
                        elevation: 6,
                        child: GridTile(
                          header: GridTileBar(
                            backgroundColor: Colors.white,
                            // leading: const CircleAvatar(
                            //   backgroundColor: Colors.deepOrange,
                            //   child: Text(
                            //     'K',
                            //     style: TextStyle(color: Colors.white, fontSize: 30),
                            //   ),
                            // ),
                            title: const Text(
                              'Shirt',
                              style: TextStyle(color: Colors.black),
                            ),
                            subtitle: const Text('Designs',
                                style: TextStyle(color: Colors.grey)),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_vert_rounded,
                                  color: Colors.black54,
                                )),
                          ),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1594938291221-94f18cbb5660?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHNoaXJ0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                            fit: BoxFit.cover,
                          ),
                          footer: GridTileBar(
                            backgroundColor: Colors.white,
                            title: Row(
                              children: const [
                                Icon(
                                  Icons.favorite_outline,
                                  color: Colors.grey,
                                ),
                                Text('20',
                                    style: TextStyle(color: Colors.black)),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.chat_bubble_outline,
                                  color: Colors.grey,
                                ),
                                Text(
                                  '5',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            trailing: const Icon(
                              Icons.bookmark_outline,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            // Center(
            //   child: SizedBox(
            //     width: 360,
            //     height: 500,
            //     child: Card(
            //       elevation: 6,
            //       child: GridTile(
            //           header: GridTileBar(
            //             backgroundColor: Colors.white,
            //             // leading: const CircleAvatar(
            //             //   backgroundColor: Colors.deepOrange,
            //             //   child: Text(
            //             //     'K',
            //             //     style: TextStyle(color: Colors.white, fontSize: 30),
            //             //   ),
            //             // ),
            //             title: const Text(
            //               'Shirt',
            //               style: TextStyle(color: Colors.black),
            //             ),
            //             subtitle: const Text('Designs',
            //                 style: TextStyle(color: Colors.grey)),
            //             trailing: IconButton(
            //                 onPressed: () {},
            //                 icon: const Icon(
            //                   Icons.more_vert_rounded,
            //                   color: Colors.black54,
            //                 )),
            //           ),
            //           child: Image.network(
            //             'https://images.unsplash.com/photo-1594938291221-94f18cbb5660?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHNoaXJ0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
            //             fit: BoxFit.cover,
            //           ),
            //           footer: GridTileBar(
            //             backgroundColor: Colors.white,
            //             title: Row(
            //               children: const [
            //                 Icon(
            //                   Icons.favorite_outline,
            //                   color: Colors.grey,
            //                 ),
            //                 Text('20', style: TextStyle(color: Colors.black)),
            //                 SizedBox(
            //                   width: 20,
            //                 ),
            //                 Icon(
            //                   Icons.chat_bubble_outline,
            //                   color: Colors.grey,
            //                 ),
            //                 Text(
            //                   '5',
            //                   style: TextStyle(color: Colors.black),
            //                 ),
            //               ],
            //             ),
            //             trailing: const Icon(
            //               Icons.bookmark_outline,
            //               color: Colors.black,
            //             ),
            //           )),
            //     ),
            //   ),
            // ),
            // // Expanded(
            // //   child: Card(
            // //       elevation: 10,
            // //       child: GridTile(
            // //         child: Image.network(
            // //             "https://images.unsplash.com/photo-1529220813929-597ff9755c1f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80",
            // //             fit: BoxFit.cover),
            // //         footer: Container(
            // //             padding: EdgeInsets.only(top: 3),
            // //             height: 30,
            // //             decoration: BoxDecoration(
            // //               color: Colors.grey[800]?.withOpacity(0.6),
            // //               // color: Colors.white70,
            // //             ),
            // //             child: Text(
            // //               "Text",
            // //               textAlign: TextAlign.center,
            // //               style: TextStyle(fontSize: 15, color: Colors.grey[100]),
            // //             )),
            // //       )),
            // // )
            // Expanded(
            //   child: GridView.builder(
            //       padding: const EdgeInsets.all(10),
            //       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            //           maxCrossAxisExtent: 200,
            //           childAspectRatio: 2 / 3,
            //           crossAxisSpacing: 20,
            //           mainAxisSpacing: 20),
            //       itemCount: 10,
            //       itemBuilder: (BuildContext ctx, index) {
            //         return GridTile(
            //           // key: ValueKey(_products[index]['id']),
            //           child: Image.network(
            //             'https://www.kindacode.com/wp-content/uploads/2021/12/phone.jpeg',
            //             fit: BoxFit.cover,
            //           ),
            //           footer: GridTileBar(
            //             backgroundColor: Colors.black54,
            //             title: Text(
            //               "Apple",
            //               style: const TextStyle(
            //                   fontSize: 18, fontWeight: FontWeight.bold),
            //             ),
            //             subtitle: Text("fruit"),
            //             trailing: const Icon(Icons.shopping_cart),
            //           ),
            //         );
            //       }),
            // ),
          ],
        ),
      ),
    );
  }
}
