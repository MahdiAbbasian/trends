import 'package:flutter/material.dart';
import 'package:trends/constants.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _currentSliderValue1 = 20;
  double _currentSliderValue2 = 20;
  double _currentSliderValue3 = 20;
  double value = 0.0;

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
                    DateFormat.yMMMd().format(DateTime.now()).toString() + ' . ',
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Text(
                'My Physical Activity',
                style: TextStyle(
                    color: kFontYellowColor,
                    fontSize: 20,
                    decoration: TextDecoration.none),
              ),
              Material(
                color: kDarkBlueColor,
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      color: kDarkBlueColor,
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: const Text(
                        "How many minutes walked?",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: kFontYellowColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Slider(
                      value: _currentSliderValue1,
                      min: 0,
                      max: 100,
                      divisions: 100,
                      activeColor: Colors.red,
                      inactiveColor: Colors.grey,
                      label: _currentSliderValue1.round().toString() + 'min',
                      onChanged: (value) {
                        setState(() {
                          _currentSliderValue1 = value;
                        });
                      },
                    ),
                    Text(
                      '$_currentSliderValue1'' min',
                      style: const TextStyle(fontSize: 20, color: kFontYellowColor),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      color: kDarkBlueColor,
                      height: MediaQuery.of(context).size.height * 0.02,
                      child: const Text(
                        "How many minutes of other exercise did you do?",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: kFontYellowColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Slider(
                      value: _currentSliderValue2,
                      min: 0,
                      max: 100,
                      divisions: 100,
                      activeColor: Colors.red,
                      inactiveColor: Colors.grey,
                      label: _currentSliderValue2.round().toString() + 'min',
                      onChanged: (value) {
                        setState(() {
                          _currentSliderValue2 = value;
                        });
                      },
                    ),
                    Text(
                      '$_currentSliderValue2' '+' ' min',
                      style: const TextStyle(fontSize: 20, color: kFontYellowColor),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      color: kDarkBlueColor,
                      height: MediaQuery.of(context).size.height * 0.02,
                      child: const Text(
                        "How many minutes before you had pain?",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: kFontYellowColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Slider(
                      value: _currentSliderValue3,
                      min: 0,
                      max: 100,
                      divisions: 100,
                      activeColor: Colors.red,
                      inactiveColor: Colors.grey,
                      label: _currentSliderValue3.round().toString() + 'min',
                      onChanged: (value) {
                        setState(() {
                          _currentSliderValue3 = value;
                        });
                      },
                    ),
                    Text(
                      '$_currentSliderValue3' "+" ' min',
                      style: const TextStyle(fontSize: 20, color: kFontYellowColor),
                    )
                  ],
                ),
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Material(
                borderRadius: BorderRadius.circular(15),
                color: kButtonColor,
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    height: 40,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                        child: Text(
                          'Save',
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        )),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            ],
          ),
        ));
  }
}