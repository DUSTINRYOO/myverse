import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myverse/Widget/myverse_daily_active.dart';
import 'package:myverse/Widget/timelineblock.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          shape: Border(
            bottom: BorderSide(color: Theme.of(context).cardColor, width: 4),
          ),
          foregroundColor: Theme.of(context).textTheme.headline4!.color,
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: const Icon(Icons.person),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 2,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  'assets/images/Logo_main.png',
                  scale: 2.8,
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: const Icon(Icons.settings_rounded),
              )
            ],
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Container(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Today',
                        style: GoogleFonts.openSans(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.02,
                        isFirst: true,
                        indicatorStyle: IndicatorStyle(
                          width: 12,
                          color: Theme.of(context).cardColor,
                        ),
                        beforeLineStyle: LineStyle(
                          color: Theme.of(context).canvasColor,
                          thickness: 4,
                        ),
                        endChild: Container(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '6:00 am',
                                style: GoogleFonts.openSans(
                                    fontSize: 16, fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 240,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "",
                                            style: GoogleFonts.openSans(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Text(
                                            '',
                                            style: GoogleFonts.openSans(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 240,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Theme.of(context).canvasColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "",
                                            style: GoogleFonts.openSans(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Text(
                                            '',
                                            style: GoogleFonts.openSans(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const TimeLineBlock(
                        timehour: 7,
                        ampm: 'am',
                        todolist: 'Morning Routine',
                      ),
                      const TimeLineBlock(
                        timehour: 8,
                        ampm: 'am',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 9,
                        ampm: 'am',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 10,
                        ampm: 'am',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 11,
                        ampm: 'am',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 12,
                        ampm: 'am',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 1,
                        ampm: 'pm',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 2,
                        ampm: 'pm',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 3,
                        ampm: 'pm',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 4,
                        ampm: 'pm',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 5,
                        ampm: 'pm',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 6,
                        ampm: 'pm',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 7,
                        ampm: 'pm',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 8,
                        ampm: 'pm',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 9,
                        ampm: 'pm',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 10,
                        ampm: 'pm',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 11,
                        ampm: 'pm',
                        todolist: '',
                      ),
                      const TimeLineBlock(
                        timehour: 12,
                        ampm: 'pm',
                        todolist: '',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    height: 100,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.grey.shade300,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '  Bucket List',
                          style: GoogleFonts.openSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 15,
                          ),
                          height: 60,
                          width: 370,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Theme.of(context).cardColor,
                          ),
                          child: Expanded(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const <Widget>[
                                MyverseDailyActive(
                                  dailyitem: Icons.golf_course_rounded,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                MyverseDailyActive(
                                  dailyitem: Icons.rule_rounded,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                MyverseDailyActive(
                                  dailyitem: Icons.computer_rounded,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                MyverseDailyActive(
                                  dailyitem: Icons.book_rounded,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                MyverseDailyActive(
                                  dailyitem: Icons.tiktok_rounded,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
