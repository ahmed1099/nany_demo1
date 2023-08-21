import 'dart:ui';

import 'package:flutter/material.dart';

class Otpp extends StatelessWidget {
  const Otpp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      right: screenWidth * 0.0641025641,
                      top: screenHeight * 0.08293838862),
                  child: Image(
                    image: AssetImage('assets/nanny.png'),
                    width: 45,
                    height: 42,
                  ))
            ],
          ),
        ],
      ),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Padding(
          padding: EdgeInsets.only(
              top: screenHeight * 0.14099526066,
              right: screenWidth * 0.06153846153),
          child: SizedBox(
            width: 277,
            child: Text(
              'عرفنا',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF041023),
                fontSize: 18,
                fontFamily: 'IBM Plex Sans Arabic',
                fontWeight: FontWeight.w400,
                height: 2.44,
              ),
            ),
          ),
        )
      ]),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: screenHeight * 0.17535545023,
                right: screenWidth * 0.06153846153),
            child: SizedBox(
              width: screenWidth * 0.71025641025,
              child: Text(
                'بنفسك اكثر',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF041023),
                  fontSize: 26,
                  fontFamily: 'IBM Plex Sans Arabic',
                  fontWeight: FontWeight.w700,
                  height: 1.69,
                ),
              ),
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.only(
              right: screenWidth * 0.06666666666,
              top: screenHeight * 0.25947867298,
            ),
            child: Stack(children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/profile.png',
                ),
                radius: 50,
              ),
              Container(
                padding: EdgeInsets.only(
                  right: 60,
                  top: 47,
                ),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 10),
                      child: IconButton(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          onPressed: () {},
                          icon: ImageIcon(AssetImage('assets/upload.png'))),
                    ),
                  ),
                ),
              )
            ]),
          )
          /*Container(
            padding: EdgeInsets.only(
              right: 26,
              top: 219,
            ),
            width: 92,
            height: 92,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(60)),
              image: DecorationImage(
                image: AssetImage('assets/profile.png'),
                fit: BoxFit.fill,
              ),
            ),
          )*/
        ],
      ),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
          width: screenWidth,
          padding: EdgeInsets.only(
              left: 24, right: 24, top: screenHeight * 0.39928909952),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
              textAlign: TextAlign.right,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Align(
                  alignment: Alignment.center,
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: ImageIcon(
                    AssetImage('assets/email.png'),
                    color: Color.fromRGBO(180, 136, 247, 1),
                    size: 45,
                  ),
                ),
                border: OutlineInputBorder(),
                labelText: 'البريد الالكتروني',
              ),
            ),
          ),
        ),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
          width: screenWidth,
          padding: EdgeInsets.only(
              left: 24, right: 24, top: screenHeight * 0.49170616113),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
              textAlign: TextAlign.right,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Align(
                  alignment: Alignment.center,
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: ImageIcon(
                    AssetImage('assets/person.png'),
                    color: Color.fromRGBO(180, 136, 247, 1),
                    size: 45,
                  ),
                ),
                border: OutlineInputBorder(),
                labelText: 'اسمك بالكامل',
              ),
            ),
          ),
        ),
      ]),
      Row(children: [
        Container(
          width: screenWidth,
          padding: EdgeInsets.only(
              left: 24, right: 24, top: screenHeight * 0.90521327014),
          child: MaterialButton(
              minWidth: 342,
              height: 50,
              color: const Color.fromRGBO(180, 136, 247, 1),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(34))),
              child: const Text(
                "حفظ",
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
              ),
              onPressed: () {
                print('.');
              }),
        ),
      ])
    ]));
  }
}
