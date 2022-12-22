import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedInConnection extends StatelessWidget {
  final int friendsnumber;
  final String friendname;
  final int feedpicturenumber;
  final String feedcontent;
  final String targetdate;

  const FeedInConnection({
    Key? key,
    required this.friendsnumber,
    required this.friendname,
    required this.feedpicturenumber,
    required this.feedcontent,
    required this.targetdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 42),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.asset(
                    'assets/images/travel$feedpicturenumber.png',
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(10, 0),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      width: 54,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Image.asset(
                          'assets/images/friend$friendsnumber.png',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      friendname,
                      style: GoogleFonts.openSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                feedcontent,
                style: GoogleFonts.openSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                targetdate,
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
