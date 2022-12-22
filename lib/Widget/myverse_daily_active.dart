import 'package:flutter/material.dart';

class MyverseDailyActive extends StatelessWidget {
  final IconData dailyitem;
  const MyverseDailyActive({
    Key? key,
    required this.dailyitem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
        backgroundColor: Colors.grey.shade300,
      ),
      child: Icon(
        dailyitem,
        size: 40,
        color: Colors.black,
      ),
    );
  }
}
