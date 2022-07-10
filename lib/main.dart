import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:valendar/home_page.dart';

void main() {
   SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.light)
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valendar',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

