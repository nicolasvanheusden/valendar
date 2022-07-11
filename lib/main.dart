import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:valendar/presentation/screen/app_screen.dart';

import 'injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // need explicit binding
  configureInjection(Environment.dev);
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
      home: const AppScreen(),
    );
  }
}

