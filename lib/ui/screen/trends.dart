import 'package:flutter/material.dart';
import 'package:trends/constants.dart';
import 'package:trends/lib/main.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';

class Trends extends StatefulWidget {
  final sliderValue;

  const Trends(this.sliderValue);

  @override
  _TrendsState createState() => _TrendsState();
}

class _TrendsState extends State<Trends> {
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
                'My Trends',
                style: TextStyle(
                    color: kFontYellowColor,
                    fontSize: 20,
                    decoration: TextDecoration.none),
              ),


              BarChartSample1(widget.sliderValue),

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
                  onTap: () {},
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

class BarChartSample1 extends StatefulWidget {
  final List<Color> availableColors = const [
    Colors.purpleAccent,
    Colors.yellow,
    Colors.lightBlue,
    Colors.orange,
    Colors.pink,
    Colors.redAccent,
  ];

  const BarChartSample1(this.slideValue);
  final slideValue;
  @override
  State<StatefulWidget> createState() => BarChartSample1State();
}

class BarChartSample1State extends State<BarChartSample1> {
  final Color barBackgroundColor = const Color(0xff72d8bf);
  final Duration animDuration = const Duration(milliseconds: 250);

  int touchedIndex = -1;

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width*0.85,
      height:  MediaQuery.of(context).size.width*0.85,

      child: Row(
        children: [
          Column(
            children: [
              const SizedBox(height: 100,),
              Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kDarkGreenColor
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kLightGreenColor
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kMyYellowColor
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kOrangeColor
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kRedColor
                ),
              ),
              const SizedBox(height: 10,),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.85,
            child: SafeArea(
              child: AspectRatio(
                aspectRatio: 1,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  color:kDarkBlueColor,
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            const Text(
                              'Result',
                              style: TextStyle(
                                  color: Color(0xff0f4a3c),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 4,
                            ),

                            const SizedBox(
                              height: 38,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: BarChart(
                                  isPlaying ? randomData() : mainBarData(),
                                  swapAnimationDuration: animDuration,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topRight,


                        ),
                      ),

                    ],
                  ),)
                ,
              )
              ,
            ),
          ),
        ],
      ),
    );
  }

  BarChartGroupData makeGroupData(int x,
      double y, {
        bool isTouched = false,
        Color barColor = Colors.white,
        double width = 22,
        List<int> showTooltips = const [],
      }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: isTouched ? y + 1 : y,
          colors: isTouched ? [Colors.yellow] : [barColor],
          width: width,
          borderSide: isTouched
              ? const BorderSide(color: Colors.yellow, width: 1)
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            y: 20,
            colors: [barBackgroundColor],
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() {
    return (widget.slideValue.runtimeType!=int)?  List.generate(4, (i) {
      switch (i) {
        case 0:
          return makeGroupData(0, widget.slideValue, isTouched: i == touchedIndex);
        case 1:
          return makeGroupData(1,widget.slideValue-2, isTouched: i == touchedIndex);
        case 2:
          return makeGroupData(2, widget.slideValue+3, isTouched: i == touchedIndex);
        case 3:
          return makeGroupData(3, widget.slideValue+1, isTouched: i == touchedIndex);
        default:
          return throw Error();
      }
    })
        :   List.generate(4, (i) {
      switch (i) {
        case 0:
          return makeGroupData(0, 0.0, isTouched: i == touchedIndex);
        case 1:
          return makeGroupData(1,0.0, isTouched: i == touchedIndex);
        case 2:
          return makeGroupData(2, 0.0, isTouched: i == touchedIndex);
        case 3:
          return makeGroupData(3, 0.0, isTouched: i == touchedIndex);
        default:
          return throw Error();
      }
    });

  }


  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: kDarkBlueColor,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  weekDay = 'Activity';
                  break;
                case 1:
                  weekDay = 'feeling';
                  break;
                case 2:
                  weekDay = 'visual';
                  break;
                case 3:
                  weekDay = 'Medication';
                  break;

                default:
                  throw Error();
              }
              return BarTooltipItem(
                weekDay + '\n',
                const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: (rod.y - 1).toString(),
                    style: const TextStyle(
                      color: Colors.yellow,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            }),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) =>
          const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          margin: 16,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'Activity';
              case 1:
                return 'Feeling';
              case 2:
                return 'Visual';
              case 3:
              default:
                return 'Medication';
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: FlGridData(show: false),
    );
  }

  BarChartData randomData() {
    return BarChartData(
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
          show: true,
          bottomTitles: SideTitles(
            showTitles: true,
            getTextStyles: (context, value) =>
            const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
            margin: 16,
            getTitles: (double value) {
              switch (value.toInt()) {
                case 0:
                  return 'M';
                case 1:
                  return 'T';
                case 2:
                  return 'W';
                case 3:
                  return 'T';
                default:
                  return '';
              }
            },
          ),
          leftTitles: SideTitles(
            showTitles: false,
          ),
          topTitles: SideTitles(
            showTitles: false,
          ),
          rightTitles: SideTitles(
            showTitles: false,
          )),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                Random().nextInt(widget.availableColors.length)]);
          case 1:
            return makeGroupData(1, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                Random().nextInt(widget.availableColors.length)]);
          case 2:
            return makeGroupData(2, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                Random().nextInt(widget.availableColors.length)]);
          case 3:
            return makeGroupData(3, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                Random().nextInt(widget.availableColors.length)]);

          default:
            return throw Error();
        }
      }),
      gridData: FlGridData(show: false),
    );
  }

  Future<dynamic> refreshState() async {
    setState(() {});
    await Future<dynamic>.delayed(
        animDuration + const Duration(milliseconds: 50));
    if (isPlaying) {
      await refreshState();
    }
  }
}