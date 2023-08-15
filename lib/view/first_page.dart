import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:location/location.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GoogleMap(
            zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(
              target: LatLng(37.43296265331129, -122.08832357078792),
            ),
          ),
          Positioned(
            top: 85,
            left: 15,
            width: 380,
            child: Container(
              height: 85,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.purple,
                        blurRadius: 19.0,
                        spreadRadius: 0.5,
                        offset: Offset(0.7, 0.7))
                  ]),
              child: Column(children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'موقعك الحالى',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(31, 20, 20, 20),
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.location_on_rounded),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    MaterialButton(
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Text(
                        "تغيير الموقع",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        print('.');
                      },
                    ),
                    const SizedBox(
                      width: 140,
                    ),
                    const Text(
                      'الرياض، العزيزية',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ]),
            ),
          ),
          Positioned(
            top: 250,
            left: 15,
            width: 380,
            child: Container(
                height: 555,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.purple,
                          blurRadius: 19.0,
                          spreadRadius: 0.5,
                          offset: Offset(0.7, 0.7))
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CloseButton(
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/1.jpg'),
                          radius: 30,
                        )
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'اسماء خالد',
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    ),
                    const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'عضو منذ 2011',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 123, 123, 123)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.circle,
                              color: Color.fromARGB(255, 236, 236, 236),
                              size: 10),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'فلبينية',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 123, 123, 123)),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '350',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  'ريال/الساعة',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            )
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 180,
                                ),
                                Text(
                                  '30',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text('طلب سابق')
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      width: 180,
                                    ),
                                    Text(
                                      '37',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('سنه')
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                          indent: 20,
                          endIndent: 20,
                          thickness: 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  'التقيمات السابقة',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'تجربة مثالية و رائعة جدا، تعاملت معها عدة مرات و ذات التزام عالي و خلق',
                                      style: TextStyle(fontSize: 14),
                                      softWrap: false,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            RatingBar.builder(
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemSize: 20,
                                              itemPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 2.0,
                                                      vertical: 7),
                                              itemBuilder: (context, _) =>
                                                  const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Text(
                                                'احمد ابراهيم       14 مارس،2020 '),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Divider(
                                  color: Colors.black,
                                  indent: 20,
                                  endIndent: 20,
                                  thickness: 0.05,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('تجربة مختلفة تماما'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    RatingBar.builder(
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 20,
                                      itemPadding: const EdgeInsets.symmetric(
                                          horizontal: 2.0, vertical: 7),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    const Text(
                                        'يوسف اليوسف       14 مارس،2020 '),
                                    /*Column(
                                      children: [
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            padding: const EdgeInsets.all(5.0),
                                            textStyle:
                                                const TextStyle(fontSize: 5),
                                          ),
                                          onPressed: () {},
                                          child: const Text('Gradient'),
                                        ),
                                      ],
                                    )*/
                                  ],
                                ),
                                MaterialButton(
                                    minWidth: 350,
                                    height: 30,
                                    color: const Color.fromARGB(
                                        255, 170, 100, 182),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: const Text(
                                      "ارسال طلب حجز",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      print('.');
                                    }),
                              ],
                            ),
                          ],
                        ),
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/1.jpg'),
                                radius: 25,
                              ),
                              SizedBox(
                                width: 75,
                              ),
                              Icon(
                                Icons.notifications,
                                size: 35,
                              ),
                              SizedBox(
                                width: 75,
                              ),
                              Icon(
                                Icons.shopping_bag_rounded,
                                size: 35,
                              ),
                              SizedBox(
                                width: 65,
                              ),
                              Icon(
                                Icons.home,
                                size: 35,
                              ),
                            ])
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
