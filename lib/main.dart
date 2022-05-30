import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_app/screens/home/components/home_screens.dart';

import 'package:plant_app/values/colors_palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: ColorsPalette.kPrimaryColor),
        scaffoldBackgroundColor: ColorsPalette.kBackgroundColor,
        primaryColor: ColorsPalette.kPrimaryColor,
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: ColorsPalette.kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
