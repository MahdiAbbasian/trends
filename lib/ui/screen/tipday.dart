import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trends/constants.dart';
import 'package:trends/list/tip.dart';
import 'package:trends/lib/main.dart';

class TipDay extends StatefulWidget {
  const TipDay({Key? key}) : super(key: key);

  @override
  _TipDayState createState() => _TipDayState();
}

class _TipDayState extends State<TipDay> {

  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int randomNumber = random.nextInt(6);
    return Material(
      color: kDarkBlueColor,
      child: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),

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
                  'Tip Of The Day',
                  style: TextStyle(
                      color: kFontYellowColor,
                      fontSize: 20,
                      decoration: TextDecoration.none),
                ),



                const SizedBox(
                  height: 20,
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height*0.6,
                  child: Column(
                    children: [
                      Text(
                        tipList[randomNumber].question,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            decoration: TextDecoration.none,
                            color: kFontYellowColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.05,),
                      Text(
                        tipList[randomNumber].answer,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          decoration: TextDecoration.none,
                          color: kFontYellowColor,
                          fontSize: 16,
                        ),
                      ),

                    ],
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

                    },
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .8,
                      height: MediaQuery.of(context).size.height * 0.06,
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
    );
  }
}