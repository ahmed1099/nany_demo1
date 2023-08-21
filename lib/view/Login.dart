import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const Row(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 320, top: 70),
                child: Image(
                  image: AssetImage('assets/Maskgroup.png'),
                  width: 45,
                  height: 42,
                ))
          ],
        ),
        const Row(children: [
          Padding(
            padding: EdgeInsets.only(top: 119, left: 89),
            child: SizedBox(
                width: 277,
                child: Text(
                  'مرحبا بك مجددا',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Color.fromRGBO(4, 16, 35, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      fontFamily: 'IBM Plex Sans Arabic'),
                )),
          )
        ]),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 89, top: 149),
              child: SizedBox(
                width: 277,
                child: Text(
                  textAlign: TextAlign.right,
                  'اكتب رقم جوالك',
                  style: TextStyle(
                      color: Color.fromRGBO(4, 16, 35, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                      fontFamily: 'IBM Plex Sans Arabic'),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 222, left: 35),
              child: Container(
                width: 342,
                height: 62,
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  languageCode: "en",
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
                ),
              ),
            ),
          ],
        ),
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 300),
            child: MaterialButton(
                minWidth: 342,
                height: 55,
                color: const Color.fromRGBO(180, 136, 248, 1),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: const Text(
                  "تسجيل الدخول",
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                ),
                onPressed: () {
                  print('.');
                }),
          ),
        ])
      ],
    ));
  }
}
