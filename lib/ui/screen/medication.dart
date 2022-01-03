import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trends/constants.dart';
import 'package:trends/main.dart';

class Medication extends StatefulWidget {
  final sliderValue;
  final feeilingResult;
  final visualResult;
  
  const Medication(this.sliderValue, this.feeilingResult, this.visualResult);
  
  @override
  _MedicationState createState() => _MedicationState();
  
}

class _MedicationState extends State<Medication> {
  int questionNum = 0;
  late bool ansNum = false;
  List medicationResult = [];
  int colorNum = 0;

  @override
  void initState() {
    super.initState();
    {
      medicationResult = [-1, -1, -1, -1];
      print(widget.visualResult);
      print(widget.sliderValue);
      print(widget.feeilingResult);
    }
    print("user.anse" + medicationResult.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kDarkBlueColor,
      child: SafeArea(
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

          color: kDarkBlueColor,
          //child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          kNavigatorBack(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_outlined,
                          color: kFontYellowColor,
                          size: 40,
                        )),
                  ],
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                Row(
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    const Text(
                      'Date/Time',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    Text(
                      DateFormat.yMMMd().format(DateTime.now()).toString() +
                          ' . ',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    Text(
                      DateFormat.jm().format(DateTime.now()).toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.02),
                const Text(
                  'My Medication',
                  style: TextStyle(
                      color: kFontYellowColor,
                      fontSize: 20,
                      decoration: TextDecoration.none),
                ),
                Row(
                  children: const [
                    Spacer(),
                    Text(
                      'YES',
                      style: TextStyle(color: kFontYellowColor),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'NO',
                      style: TextStyle(color: kFontYellowColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  child: Container(
                      color: kDarkBlueColor,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.6,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.7,
                                height:
                                MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.15,
                                child: const Text(
                                  'Did you take your diabetes medication?',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: kFontYellowColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Spacer(),
                              Material(
                                color: (medicationResult[0] == true)
                                    ? kDarkGreenColor
                                    : Colors.grey,
                                child: InkWell(
                                  onTap: () {
                                    medicationResult[0] = true;

                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 10),

                                  ),
                                ),
                              ),
                              const Spacer(),
                              const SizedBox(
                                width: 20,
                              ),
                              Material(
                                color: (medicationResult[0] == false)
                                    ? kRedColor
                                    : Colors.grey,
                                child: InkWell(
                                  onTap: () {
                                    medicationResult[0] = false;

                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 10),

                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.7,
                                height:
                                MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.15,
                                child: const Text(
                                  'Did you take your blood pressure medication?',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: kFontYellowColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Spacer(),
                              Material(
                                color: (medicationResult[1] == true)
                                    ? kDarkGreenColor
                                    : Colors.grey,
                                child: InkWell(
                                  onTap: () {
                                    medicationResult[1] = true;

                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 10),

                                  ),
                                ),
                              ),
                              const Spacer(),
                              const SizedBox(
                                width: 20,
                              ),
                              Material(
                                color: (medicationResult[1] == false)
                                    ? kRedColor
                                    : Colors.grey,
                                child: InkWell(
                                  onTap: () {
                                    medicationResult[1] = false;

                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 10),

                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.7,
                                height:
                                MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.15,
                                child: const Text(
                                  'Did you take your cholesterol medication?',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: kFontYellowColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Spacer(),
                              Material(
                                color: (medicationResult[2] == true)
                                    ? kDarkGreenColor
                                    : Colors.grey,
                                child: InkWell(
                                  onTap: () {
                                    medicationResult[2] = true;

                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 10),

                                  ),
                                ),
                              ),
                              const Spacer(),
                              const SizedBox(
                                width: 20,
                              ),
                              Material(
                                color: (medicationResult[2] == false)
                                    ? kRedColor
                                    : Colors.grey,
                                child: InkWell(
                                  onTap: () {
                                    medicationResult[2] = false;

                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 10),

                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.7,
                                height:
                                MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.15,
                                child: const Text(
                                  'Did you take your blood thinner medication?',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: kFontYellowColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Spacer(),
                              Material(
                                color: (medicationResult[3] == true)
                                    ? kDarkGreenColor
                                    : Colors.grey,
                                child: InkWell(
                                  onTap: () {
                                    medicationResult[3] = true;

                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 10),

                                  ),
                                ),
                              ),
                              const Spacer(),
                              const SizedBox(
                                width: 20,
                              ),
                              Material(
                                color: (medicationResult[3] == false)
                                    ? kRedColor
                                    : Colors.grey,
                                child: InkWell(
                                  onTap: () {
                                    medicationResult[3] = false;

                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 10),

                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),

                        ],
                      )
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 40,
                ),
                Material(
                  color: kButtonColor,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: InkWell(
                    onTap: () {
                      kNavigator(
                          context,
                          HomePage(widget.sliderValue, widget.feeilingResult,
                              widget.visualResult, medicationResult));
                    },
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .8,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.06,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: const Center(
                          child: Text(
                            "NEXT",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // ),
    );
  }
}