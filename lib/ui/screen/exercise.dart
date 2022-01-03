import 'package:flutter/material.dart';
import 'package:trends/ui/screen/visual.dart';
import 'package:trends/constants.dart';
import 'package:intl/intl.dart';

class Exercise extends StatefulWidget {
  const Exercise(this.sliderValue);
  final sliderValue;

  @override
  _ExerciseState createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  List feelingResult=[];
  Color feelingColor=Colors.grey;
  @override
  void initState() {

    super.initState();
    feelingResult=[0,0,0,0,0];
    print(feelingResult);
    print(widget.sliderValue);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
          color: kDarkBlueColor,
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
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Divider(
                    color: Colors.white,
                    thickness: 2,
                  )),
              Row(
                children: [
                  const Spacer(flex: 1,),
                  const Text('Date/Time',style: TextStyle(color: Colors.grey),),
                  const Spacer(flex: 3,),
                  Text(
                    DateFormat.yMMMd()
                        .format(DateTime.now())
                        .toString()+' . ',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.grey),
                  ),

                  Text(
                    DateFormat.jm()
                        .format(DateTime.now())
                        .toString(),

                    style: const TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  const Spacer(flex: 1,),
                ],
              ),
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.02),
              const Text(
                'My Feelings Screen',
                style: TextStyle(
                    color: kFontYellowColor,
                    fontSize: 20,
                    decoration: TextDecoration.none),
              ),
              const SizedBox(height: 30,),
              Column(
                children: [
                  Row(
                    children: const [
                      Spacer(flex: 1,),
                      Text('None',style: TextStyle(color: kFontYellowColor,fontSize: 13),),
                      Spacer(flex: 2,),
                      Text('Mild',style: TextStyle(color: kFontYellowColor,fontSize: 13),),
                      Spacer(flex: 1,),
                      Text('Moderate',style: TextStyle(color: kFontYellowColor,fontSize: 12),),
                      Spacer(flex: 1,),
                      Text('Severe',style: TextStyle(color: kFontYellowColor,fontSize: 12),),
                      Spacer(flex: 1,),
                      Text('Unbearable',style: TextStyle(color: kFontYellowColor,fontSize: 12),),
                      Spacer(flex: 1,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Leg pulling',
                            style: TextStyle(color: kFontYellowColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[0] = 5;
                                      print(feelingResult);
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kDarkGreenColor),
                                    child: (feelingResult[0] == 5)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[0] = 4;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kLightGreenColor),
                                    child: (feelingResult[0] == 4)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[0] = 3;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kMyYellowColor),
                                    child: (feelingResult[0] == 3)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[0] = 2;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kOrangeColor),
                                    child: (feelingResult[0] == 2)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[0] = 1;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: kRedColor),
                                    child: (feelingResult[0] == 1)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Leg numbness',
                            style: TextStyle(color: kFontYellowColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[1] = 5;
                                      print(feelingResult);
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kDarkGreenColor),
                                    child: (feelingResult[1] == 5)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[1] = 4;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kLightGreenColor),
                                    child: (feelingResult[1] == 4)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[1] = 3;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kMyYellowColor),
                                    child: (feelingResult[1] == 3)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[1] = 2;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kOrangeColor),
                                    child: (feelingResult[1] == 2)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[1] = 1;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: kRedColor),
                                    child: (feelingResult[1] == 1)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Cold feet',
                            style: TextStyle(color: kFontYellowColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[2] = 5;
                                      print(feelingResult);
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kDarkGreenColor),
                                    child: (feelingResult[2] == 5)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[2] = 4;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kLightGreenColor),
                                    child: (feelingResult[2] == 4)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[2] = 3;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kMyYellowColor),
                                    child: (feelingResult[2] == 3)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[2] = 2;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kOrangeColor),
                                    child: (feelingResult[2] == 2)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[2] = 1;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: kRedColor),
                                    child: (feelingResult[2] == 1)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Walking pain',
                            style: TextStyle(color: kFontYellowColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[3] = 5;
                                      print(feelingResult);
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kDarkGreenColor),
                                    child: (feelingResult[3] == 5)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[3] = 4;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kLightGreenColor),
                                    child: (feelingResult[3] == 4)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[3] = 3;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kMyYellowColor),
                                    child: (feelingResult[3] == 3)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[3] = 2;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kOrangeColor),
                                    child: (feelingResult[3] == 2)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[3] = 1;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: kRedColor),
                                    child: (feelingResult[3] == 1)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Resting pain',
                            style: TextStyle(color: kFontYellowColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[4] = 5;
                                      print(feelingResult);
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kDarkGreenColor),
                                    child: (feelingResult[4] == 5)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[4] = 4;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kLightGreenColor),
                                    child: (feelingResult[4] == 4)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[4] = 3;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kMyYellowColor),
                                    child: (feelingResult[4] == 3)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[4] = 2;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kOrangeColor),
                                    child: (feelingResult[4] == 2)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      feelingResult[4] = 1;
                                    });
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: kRedColor),
                                    child: (feelingResult[4] == 1)
                                        ? const Icon(Icons.check_circle)
                                        : Container(),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
              const Spacer(
                flex: 1,
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
              Material(
                borderRadius: BorderRadius.circular(15),
                color: kButtonColor,
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    kNavigator(context, Visual(widget.sliderValue,feelingResult));
                    print(feelingResult);
                  },
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.65,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                        child: Text(
                          'Save',
                          style:
                          TextStyle(color: Colors.white, fontSize: 23),
                        )),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.04),
            ],
          ),
        ));
  }
}