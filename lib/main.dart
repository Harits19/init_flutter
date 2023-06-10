import 'package:flutter/material.dart';
import 'package:init_flutter/konstans/konstans.dart';

void main() async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        splashColor: KColor.primary.withOpacity(0.4),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Scaffold(
        body: SafeArea(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
