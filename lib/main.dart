import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:valendar/application/member/member_bloc.dart';
import 'package:valendar/presentation/core/colors.dart';
import 'package:valendar/presentation/screen/app_screen.dart';

import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // need explicit binding
  configureInjection(Environment.dev);
   SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.light)
  );
  final storage = await HydratedStorage.build(storageDirectory: await getApplicationDocumentsDirectory());
  HydratedBlocOverrides.runZoned(
    () => runApp(
      MultiBlocProvider(
        providers: [
        BlocProvider(
          create: (context) => getIt<MemberBloc>()
        ),
        ],
        child: const MyApp(),
    )),
    storage: storage,
  );
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valendar',
      theme: ThemeData.light().copyWith(
        primaryColor: blue064F60,
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: blue064F60
            ),
            gapPadding: 2,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: blue064F60
            ),
            gapPadding: 2
          )
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: blue064F60,
        ) 
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: AppScreen(),
      )
      
    );
  }
}

