import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/intl.dart';
import 'package:trends/ui/screen/exercise.dart';
import 'package:trends/ui/screen/home.dart';
import 'package:trends/ui/screen/medication.dart';
import 'package:trends/ui/screen/tipday.dart';
import 'package:trends/ui/screen/trends.dart';
import 'package:trends/constants.dart';
import 'package:trends/ui/screen/visual.dart';
import 'package:trends/ui/widget/shape/circle.dart';
import 'package:trends/ui/widget/shape/square.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(-1, -1, -1, -1),
    );
  }
}

class HomePage extends StatefulWidget {
  final sliderValue;
  final feeilingResult;
  final visualResult;
  final MedicationResult;

  HomePage(this.sliderValue, this.feeilingResult, this.visualResult,
      this.MedicationResult);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color activityColor = Colors.grey;
  Color feelingColor = Colors.grey;
  Color visualColor = Colors.grey;
  Color medicationColor = Colors.grey;

  @override
  void initState() {
    print(widget.sliderValue);
    print(widget.feeilingResult);
    print(widget.visualResult);
    print(widget.MedicationResult);

    super.initState();
    if (widget.MedicationResult != -1) {

      checkActivityAns();
      checkFeelingAns();
      checkVisualAns();
      checkMedicationAns();

    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Container(
            color: kDarkBlueColor,
            child: Column(
              children: [

                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.02),
                Row(
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    checkTime(),
                    const Spacer(
                      flex: 1,
                    ),
                    IconButton(
                        onPressed: () {
                          kNavigator(context, HomePage(-1, -1, -1, -1));
                        },
                        icon: const Icon(
                          Icons.add,
                          color: kFontYellowColor,
                          size: 40,
                        )),
                    const Spacer(
                      flex: 1,
                    )
                  ],
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Divider(
                      color: Colors.white,
                      thickness: 2,
                    )),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.02),
                circleContainer(
                    100.0,
                    100.0,
                    const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40,
                    ),
                    '',
                    context),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.04),
                const Text(
                  'How are you feeling?',
                  style: TextStyle(color: kFontYellowColor, fontSize: 19),
                ),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.08),
                Row(
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    RawMaterialButton(onPressed: () {
                      kNavigator(context, const Home());
                    },
                        child: activityCircleContainer(
                            70.0, 70.0, Container(), 'Activity', context,activityColor)),
                    const Spacer(
                      flex: 4,
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        kNavigator(context, const Medication(-1, -1, -1));
                      },
                      child: medicationCircleContainer(
                          70.0, 70.0, Container(), 'Medications', context,
                          medicationColor),
                    ),

                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.05),
                Row(
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    RawMaterialButton(onPressed: () {
                      kNavigator(context, const Exercise(-1));
                    },
                        child: exerciseCircleContainer(
                            70.0, 70.0, Container(), 'Feeling', context,feelingColor)),
                    const Spacer(
                      flex: 1,
                    ),
                    RawMaterialButton(onPressed: () {
                      kNavigator(context, const Visual(-1, -1));
                    },
                        child: visualCircleContainer(
                            70.0, 70.0, Container(), 'Visual', context,visualColor)),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
                const Spacer(),
                const Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.13,
                  child: Row(
                    children: [
                      squareContainer(
                          MediaQuery
                              .of(context)
                              .size
                              .width * 0.3,
                          1.0,
                          //MediaQuery.of(context).size.height * 0.13,
                          Icons.home,
                          'Home',
                          context, HomePage(-1, -1, -1, -1)),
                      const VerticalDivider(color: Colors.white),
                      squareContainer(
                          MediaQuery
                              .of(context)
                              .size
                              .width * 0.3,
                          1.0,
                          //MediaQuery.of(context).size.height * 0.13,
                          Icons.show_chart_sharp,
                          'Trends',
                          context, Trends(widget.sliderValue)),
                      const VerticalDivider(color: Colors.white),
                      squareContainer2(
                          MediaQuery
                              .of(context)
                              .size
                              .width * 0.3,
                          1.0,
                          //MediaQuery.of(context).size.height * 0.13,
                          "assets/trending.png",
                          'Tip of the day',
                          context, const TipDay()),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  checkActivityAns() {
    setState(() {
      //20-30 minutes is green, 10-20 minutes is orange, 0-10 minutes is red
      if (20 <= widget.sliderValue && widget.sliderValue <= 1000) {
        setState(() {
          activityColor = kDarkGreenColor;
        });
      }
      else if (10 <= widget.sliderValue && widget.sliderValue < 20) {
        setState(() {
          activityColor = kOrangeColor;
        });
      }
      else if (0 <= widget.sliderValue && widget.sliderValue < 10) {
        setState(() {
          activityColor = kRedColor;
        });
      }

    }
    );
  }

  checkFeelingAns() {
    int count = 0;
    setState(() {
      for (int i = 0; i <5; i++) {
        if (widget.feeilingResult[i] == 5) {
          count++;}
        if (count == 4) {
          setState(() {
            feelingColor = kDarkGreenColor;
          });
        }
        else if (count == 3) {
          setState(() {
            feelingColor = kLightGreenColor;
          });
        }
        else if (count == 2) {
          setState(() {
            feelingColor = kMyYellowColor;
          });
        }
        else if (count == 1 || count == 0) {
          setState(() {
            feelingColor = kRedColor;
          });
        }
      }

    });
  }

  checkVisualAns() {
    int count = 0;
    setState(() {
      for (int i = 0; i < 4; i++) {
        if (widget.visualResult[i] == 5) {
          count++;}
        if (count == 4) {
          setState(() {
            visualColor = kDarkGreenColor;
          });
        }
        else if (count == 3) {
          setState(() {
            visualColor = kLightGreenColor;
          });
        }
        else if (count == 2) {
          setState(() {
            visualColor = kMyYellowColor;
          });
        }
        else if (count == 1 || count == 0) {
          setState(() {
            visualColor = kRedColor;
          });
        }
      }

    });
  }

  checkMedicationAns() {
    int count = 0;
    setState(() {
      for (int i = 0; i < 4; i++) {
        if (widget.MedicationResult[i] == true) {
          count++;
          if (count == 4) {
            setState(() {
              medicationColor = kDarkGreenColor;
            });
          }
          else if (count == 3) {
            setState(() {
              medicationColor = kLightGreenColor;
            });
          }
          else if (count == 2) {
            setState(() {
              medicationColor = kMyYellowColor;
            });
          }
          else if (count == 1 || count == 0) {
            setState(() {
              medicationColor = kRedColor;
            });
          }
        }
      }
    });
  }

  checkTime() {
    var time= DateFormat.H()
        .format(DateTime.now()).toString();

    var myInt = int.parse(time);
    if(myInt>5&&myInt<12){ return const Text(
      'Good morning',style: TextStyle(
        color: kFontYellowColor,
        fontSize: 20,
        decoration: TextDecoration.none),
    );}
    else   if(myInt>12&&myInt<16){ return const Text(
      'Good Afternoon ',style: TextStyle(
        color: kFontYellowColor,
        fontSize: 20,
        decoration: TextDecoration.none),
    );}
    else   if(myInt>16&&myInt<19){ return const Text(
      'Good evening',style: TextStyle(
        color: kFontYellowColor,
        fontSize: 20,
        decoration: TextDecoration.none),
    );}
    else   if(myInt>19&&myInt<24){ return const Text(
      'Good Night',style: TextStyle(
        color: kFontYellowColor,
        fontSize: 20,
        decoration: TextDecoration.none),
    );}
    else   { return const Text(
      'Hello',style: TextStyle(
        color: kFontYellowColor,
        fontSize: 20,
        decoration: TextDecoration.none),
    );}
  }
}