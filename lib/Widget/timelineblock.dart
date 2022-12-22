import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLineBlock extends StatelessWidget {
  final int timehour;
  final String ampm;
  final String todolist;

  const TimeLineBlock({
    Key? key,
    required this.timehour,
    required this.ampm,
    required this.todolist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.02,
      indicatorStyle: IndicatorStyle(
        width: 12,
        color: Theme.of(context).cardColor,
      ),
      beforeLineStyle: LineStyle(
        color: Theme.of(context).canvasColor,
        thickness: 4,
      ),
      afterLineStyle: LineStyle(
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
              '$timehour:00 $ampm',
              style: GoogleFonts.openSans(
                  fontSize: 16, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          todolist,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
