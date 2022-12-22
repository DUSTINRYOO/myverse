import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myverse/Widget/feed_connection.dart';

class ConnectionScreen extends StatelessWidget {
  const ConnectionScreen({super.key});

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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Friends",
                style: GoogleFonts.openSans(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 14,
                ),
                height: 80,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade200,
                ),
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/images/friend1.png',
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/images/friend2.png',
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/images/friend3.png',
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/images/friend4.png',
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/images/friend5.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: const [
                      FeedInConnection(
                        feedcontent: 'Travel to Turkey!',
                        friendname: 'Blaire',
                        feedpicturenumber: 3,
                        friendsnumber: 1,
                        targetdate: '23-12-20',
                      ),
                      FeedInConnection(
                        feedcontent: 'Travel to NYC!',
                        friendname: 'Yongju',
                        feedpicturenumber: 1,
                        friendsnumber: 2,
                        targetdate: '24-06-10',
                      ),
                      FeedInConnection(
                        feedcontent: 'Travel to Swiss!',
                        friendname: 'Youngjun',
                        feedpicturenumber: 2,
                        friendsnumber: 3,
                        targetdate: '24-11-12',
                      ),
                      FeedInConnection(
                        feedcontent: 'Travel to Hongkong!',
                        friendname: 'Philgeum',
                        feedpicturenumber: 4,
                        friendsnumber: 4,
                        targetdate: '24-02-16',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
