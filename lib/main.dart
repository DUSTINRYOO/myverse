import 'package:flutter/material.dart';
import 'package:myverse/Screen/navigator.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color.fromARGB(255, 255, 210, 25),
          ),
          headline2: TextStyle(
            color: Colors.black,
          ),
          headline3: TextStyle(
            color: Colors.grey,
          ),
          headline4: TextStyle(
            color: Colors.white,
          ),
        ),
        cardColor: const Color.fromARGB(255, 255, 210, 25),
        canvasColor: Colors.grey.withOpacity(0.10),
      ),
      home: const MainNavigator(),
    );
  }
}
