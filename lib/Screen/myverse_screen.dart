import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myverse/Widget/custom_oval.dart';
import 'package:myverse/Widget/myverse_daily_active.dart';

class MyverseScreen extends StatelessWidget {
  const MyverseScreen({super.key});

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
                icon: const Icon(Icons.schema_rounded),
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
                icon: const Icon(Icons.calendar_month_rounded),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 40,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Dustin Ryoo',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Design Engineer in Automotive 🛻",
                        style: GoogleFonts.openSans(
                          color: Theme.of(context).textTheme.headline1!.color,
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "Mobile App Developer 📱",
                        style: GoogleFonts.openSans(
                          color: Theme.of(context).textTheme.headline1!.color,
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "Solo Entrepreneur 🕴️",
                        style: GoogleFonts.openSans(
                          color: Theme.of(context).textTheme.headline1!.color,
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "Golfer ⛳️",
                        style: GoogleFonts.openSans(
                          color: Theme.of(context).textTheme.headline1!.color,
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "I'm the founder of Myverse. I'd like to develop and provide something valuable that can help people live their own lives they truly want .  ",
                        style: GoogleFonts.openSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: const Offset(0, -32),
                      child: ClipPath(
                        clipper: CustomOval(),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -28),
                      child: ClipPath(
                        clipper: CustomOval(),
                        child: Container(
                          height: 190,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, 70),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 120,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "  Today",
                              style: GoogleFonts.openSans(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Expanded(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const <Widget>[
                                  MyverseDailyActive(
                                    dailyitem: Icons.golf_course_rounded,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  MyverseDailyActive(
                                    dailyitem: Icons.rule_rounded,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  MyverseDailyActive(
                                    dailyitem: Icons.computer_rounded,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  MyverseDailyActive(
                                    dailyitem: Icons.book_rounded,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  MyverseDailyActive(
                                    dailyitem: Icons.tiktok_rounded,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -100),
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).cardColor,
                          radius: 70,
                          child: const CircleAvatar(
                            radius: 66,
                            backgroundImage:
                                AssetImage('assets/images/Profile.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                  ),
                  height: 190,
                  child: Column(
                    children: [
                      Text(
                        "App Development",
                        style: GoogleFonts.openSans(
                          shadows: [
                            const Shadow(
                              blurRadius: 20.0,
                              color: Color.fromARGB(255, 255, 255, 255),
                              offset: Offset(0.0, 5.0),
                            ),
                          ],
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel1.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel2.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel3.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel4.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel5.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  height: 190,
                  child: Column(
                    children: [
                      Text(
                        "Golfing",
                        style: GoogleFonts.openSans(
                          shadows: [
                            const Shadow(
                              blurRadius: 20.0,
                              color: Color.fromARGB(255, 255, 0, 200),
                              offset: Offset(0.0, 5.0),
                            ),
                          ],
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel1.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel2.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel3.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel4.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel5.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  height: 190,
                  child: Column(
                    children: [
                      Text(
                        "Travel",
                        style: GoogleFonts.openSans(
                          shadows: [
                            const Shadow(
                              blurRadius: 20.0,
                              color: Color.fromARGB(255, 255, 0, 0),
                              offset: Offset(0.0, 5.0),
                            ),
                          ],
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel1.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel2.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel3.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel4.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel5.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  height: 190,
                  child: Column(
                    children: [
                      Text(
                        "Working out",
                        style: GoogleFonts.openSans(
                          shadows: [
                            const Shadow(
                              blurRadius: 15.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                              offset: Offset(0.0, 5.0),
                            ),
                          ],
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel1.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel2.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel3.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel4.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/travel5.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: const Text(
                    'Broaden your universe',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
