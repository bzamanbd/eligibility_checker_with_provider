import 'package:eligibility_checker_with_provider/themes/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/controllers.dart';
import 'themes/themes.dart';
import 'views/home_screen.dart';

void main() {
  runApp( ChangeNotifierProvider<AgeController>(
    create: (_)=> AgeController(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  final String _title = 'eligibility checker'.toUpperCase();
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: ColorPalette.swColor,
        primaryColor: ColorPalette.primaryColor,
        secondaryHeaderColor: ColorPalette.secondaryColor,
        scaffoldBackgroundColor: ColorPalette.scaffoldBgColor,
        textTheme: Themes.txtTheme,
      ),
     routes: {
       '/':(_) => HomeScreen(title: _title,),
     },
    );
  }
}
