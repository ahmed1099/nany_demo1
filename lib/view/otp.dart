import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  late ValueNotifier<bool> isPin1EmptyNotifier;
  late ValueNotifier<bool> isPin2EmptyNotifier;
  late ValueNotifier<bool> isPin3EmptyNotifier;
  late ValueNotifier<bool> isPin4EmptyNotifier;

  TextEditingController pin1Controller = TextEditingController();
  TextEditingController pin2Controller = TextEditingController();
  TextEditingController pin3Controller = TextEditingController();
  TextEditingController pin4Controller = TextEditingController();
  FocusNode? pin1FocusNode;
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin1FocusNode = FocusNode();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    isPin1EmptyNotifier = ValueNotifier<bool>(true);
    isPin2EmptyNotifier = ValueNotifier<bool>(true);
    isPin3EmptyNotifier = ValueNotifier<bool>(true);
    isPin4EmptyNotifier = ValueNotifier<bool>(true);
  }

  @override
  void dispose() {
    super.dispose();
    pin1Controller.dispose();
    pin2Controller.dispose();
    pin3Controller.dispose();
    pin4Controller.dispose();
    pin1FocusNode!.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  void lastField(String value, FocusNode? focusNode) {
    if (value.isEmpty) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(children: [
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
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Padding(
          padding: EdgeInsets.only(
              top: screenHeight * 0.14099526066,
              right: screenWidth * 0.06153846153),
          child: SizedBox(
            width: 277,
            child: Text(
              'قم بتأكيد',
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
                'الرقم السري المتغير',
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
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Padding(
          padding: EdgeInsets.only(
              top: screenHeight * 0.24763033175,
              right: screenWidth * 0.06666666666),
          child: SizedBox(
            width: 265,
            child: Text(
              'تم إرساله إلى الرقم 05993888201',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color.fromRGBO(69, 79, 96, 1),
                fontSize: 14,
                fontFamily: 'IBM Plex Sans Arabic',
                fontWeight: FontWeight.w400,
                height: 2.44,
              ),
            ),
          ),
        )
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: EdgeInsets.only(
              top: screenHeight * 0.29028436019,
              left: screenWidth * 0.06666666666),
          child: SizedBox(
            width: screenWidth * 0.15989743589,
            child: Container(
              width: 62.36,
              height: 68,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x47979FB8),
                    blurRadius: 40,
                    offset: Offset(4, 10),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: TextFormField(
                maxLength: 1,
                autofocus: true,
                obscureText: true,
                focusNode: pin1FocusNode,
                style: TextStyle(
                    fontSize: 24, color: Color.fromRGBO(4, 16, 35, 1)),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  counterText: "",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19),
                      borderSide: BorderSide.none),
                  focusColor: Color.fromRGBO(255, 255, 255, 1),
                ),
                onChanged: (value) {
                  nextField(value, pin2FocusNode);
                  if (value.isEmpty) {
                    pin1FocusNode!.unfocus();
                    // Then you need to check is the code is correct or not
                  }
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: screenHeight * 0.29028436019,
          ),
          child: SizedBox(
            width: screenWidth * 0.15989743589,
            child: ValueListenableBuilder<bool>(
                valueListenable: isPin2EmptyNotifier,
                builder: (context, isEmpty, child) {
                  return isEmpty
                      ? Container(
                          width: 62.36,
                          height: 68,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 62.36,
                                  height: 68,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFECF0F1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(19),
                                    ),
                                  ),
                                  child: TextFormField(
                                    //                              readOnly: true,
                                    initialValue: '─',
                                    focusNode: pin2FocusNode,
                                    maxLength: 1,
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Color.fromRGBO(4, 16, 35, 1)),
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        /*prefixIcon: pin2Controller.text.isNotEmpty &&
                              pin2FocusNode!.hasFocus
                          ? null // No icon when focused
                          : Image.asset('assets/otp0.png'),*/
                                        counterText: "",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(19),
                                            borderSide: BorderSide.none),
                                        focusColor:
                                            Color.fromRGBO(255, 255, 255, 1)),
                                    onChanged: (value) {
                                      nextField(value, pin3FocusNode);
                                      if (value.isEmpty) {
                                        lastField(value,
                                            pin1FocusNode); // Then you need to check is the code is correct or not
                                        isPin2EmptyNotifier.value = true;
                                      } else {
                                        isPin2EmptyNotifier.value = false;
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(
                          width: 62.36,
                          height: 68,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x47979FB8),
                                blurRadius: 40,
                                offset: Offset(4, 10),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: TextFormField(
                            controller: pin2Controller,
                            focusNode: pin2FocusNode,
                            maxLength: 1,
                            obscureText: true,
                            style: TextStyle(
                                fontSize: 24,
                                color: Color.fromRGBO(4, 16, 35, 1)),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                /*prefixIcon: pin2Controller.text.isNotEmpty &&
                              pin2FocusNode!.hasFocus
                          ? null // No icon when focused
                          : Image.asset('assets/otp0.png'),*/
                                counterText: "",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(19),
                                    borderSide: BorderSide.none),
                                focusColor: Color.fromRGBO(255, 255, 255, 1)),
                            onChanged: (value) {
                              nextField(value, pin3FocusNode);
                              if (value.isEmpty) {
                                lastField(value,
                                    pin1FocusNode); // Then you need to check is the code is correct or not
                              }
                            },
                          ),
                        );
                }),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.29028436019),
          child: SizedBox(
            width: screenWidth * 0.15989743589,
            child: ValueListenableBuilder<bool>(
                valueListenable: isPin2EmptyNotifier,
                builder: (context, isEmpty, child) {
                  return isEmpty
                      ? Container(
                          width: 62.36,
                          height: 68,
                          child: Container(
                            width: 62.36,
                            height: 68,
                            decoration: ShapeDecoration(
                              color: Color(0xFFECF0F1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(19),
                              ),
                            ),
                            child: TextFormField(
//                              readOnly: true,
                              initialValue: '─',
                              focusNode: pin3FocusNode,
                              maxLength: 1,
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Color.fromRGBO(4, 16, 35, 1)),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  /*prefixIcon: pin2Controller.text.isNotEmpty &&
                              pin2FocusNode!.hasFocus
                          ? null // No icon when focused
                          : Image.asset('assets/otp0.png'),*/
                                  counterText: "",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(19),
                                      borderSide: BorderSide.none),
                                  focusColor: Color.fromRGBO(255, 255, 255, 1)),
                              onChanged: (value) {
                                nextField(value, pin4FocusNode);
                                if (value.isEmpty) {
                                  lastField(value,
                                      pin2FocusNode); // Then you need to check is the code is correct or not
                                  isPin3EmptyNotifier.value = true;
                                } else {
                                  isPin3EmptyNotifier.value = false;
                                }
                              },
                            ),
                          ),
                        )
                      : Container(
                          width: 62.36,
                          height: 68,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x47979FB8),
                                blurRadius: 40,
                                offset: Offset(4, 10),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: TextFormField(
                            focusNode: pin3FocusNode,
                            maxLength: 1,
                            obscureText: true,
                            decoration: InputDecoration(
                                counterText: "",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(19),
                                    borderSide: BorderSide.none),
                                focusColor: Color.fromRGBO(255, 255, 255, 1)),
                            style: TextStyle(
                                fontSize: 24,
                                color: Color.fromRGBO(4, 16, 35, 1)),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            onChanged: (value) => {
                              nextField(value, pin4FocusNode),
                              if (value.isEmpty)
                                {
                                  lastField(value,
                                      pin2FocusNode) // Then you need to check is the code is correct or not
                                }
                            },
                          ),
                        );
                }),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: screenHeight * 0.29028436019, right: screenWidth * 0.063),
          child: SizedBox(
              width: screenWidth * 0.15989743589,
              child: ValueListenableBuilder<bool>(
                  valueListenable: isPin4EmptyNotifier,
                  builder: (context, isEmpty, child) {
                    return isEmpty
                        ? Container(
                            width: 62.36,
                            height: 68,
                            child: Container(
                              width: 62.36,
                              height: 68,
                              decoration: ShapeDecoration(
                                color: Color(0xFFECF0F1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(19),
                                ),
                              ),
                              child: TextFormField(
                                initialValue: '─',
                                focusNode: pin4FocusNode,
                                maxLength: 1,
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Color.fromRGBO(4, 16, 35, 1)),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    /*prefixIcon: pin2Controller.text.isNotEmpty &&
                              pin2FocusNode!.hasFocus
                          ? null // No icon when focused
                          : Image.asset('assets/otp0.png'),*/
                                    counterText: "",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(19),
                                        borderSide: BorderSide.none),
                                    focusColor:
                                        Color.fromRGBO(255, 255, 255, 1)),
                                onChanged: (value) {
                                  nextField(value, pin4FocusNode);
                                  if (value.isEmpty) {
                                    lastField(value,
                                        pin3FocusNode); // Then you need to check is the code is correct or not
                                    isPin4EmptyNotifier.value = true;
                                  } else {
                                    isPin4EmptyNotifier.value = false;
                                  }
                                },
                              ),
                            ),
                          )
                        : Container(
                            width: 62.36,
                            height: 68,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(19),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x47979FB8),
                                  blurRadius: 40,
                                  offset: Offset(4, 10),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: TextFormField(
                                focusNode: pin4FocusNode,
                                maxLength: 1,
                                decoration: InputDecoration(
                                  counterText: "",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(19),
                                      borderSide: BorderSide.none),
                                  filled: false,
                                  fillColor: Color.fromRGBO(236, 240, 241, 1),
                                  focusColor: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                obscureText: true,
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Color.fromRGBO(4, 16, 35, 1)),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    pin4FocusNode!.unfocus();
                                    // Then you need to check is the code is correct or not
                                  } else if (value.isEmpty) {
                                    lastField(value,
                                        pin3FocusNode); // Then you need to check is the code is correct or not
                                  }
                                }),
                          );
                  })),
        ),
      ]),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: screenHeight * 0.53199052132,
                right: screenWidth * 0.06153846153),
            child: SizedBox(
              width: screenWidth * 0.11282051282,
              height: screenHeight * 0.05213270142,
              child: Opacity(
                opacity: 0.20,
                child: Container(
                  width: screenWidth * 0.11282051282,
                  height: screenHeight * 0.05213270142,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 0.75, color: Color(0xFFFEA3B5)),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.01303317535,
                        right: screenWidth * 0.03076923076),
                    child: Text(
                      '45',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFFFEA3B5),
                        fontSize: 16,
                        fontFamily: 'IBM Plex Sans Arabic',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Padding(
          padding: EdgeInsets.only(
              top: screenHeight * 0.59241706161,
              right: screenWidth * 0.0641025641),
          child: SizedBox(
            width: screenWidth * 0.89743589743,
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'لم يصلك الرقم السري المتغير؟ ',
                  style: TextStyle(
                    color: Color.fromRGBO(69, 79, 96, 1),
                    fontSize: 14,
                    fontFamily: 'IBM Plex Sans Arabic',
                    fontWeight: FontWeight.w400,
                    height: 2.44,
                  ),
                ),
                TextSpan(
                  text: 'إعادة إرسال خلال 45 ثانية',
                  style: TextStyle(
                    color: Color.fromRGBO(4, 16, 35, 1),
                    fontSize: 14,
                    fontFamily: 'IBM Plex Sans Arabic',
                    fontWeight: FontWeight.w400,
                    height: 2.44,
                  ),
                )
              ]),
              textAlign: TextAlign.right,
            ),
          ),
        )
      ]),
    ]));
  }
}
