import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zclub/screens/login_screen.dart';
import 'dart:ui' as ui;

import 'package:zclub/theme.dart';

void main() {
  runApp(
    EasyLocalization(
      child: MyApp(),
      path: "resources/langs",
      saveLocale: true,
      supportedLocales: [
        Locale('ar', 'AR'),
        Locale('en', 'EN'),
      ],
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Z Club',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldColor,
        primaryColor: AppColors.scaffoldColor,
        backgroundColor: AppColors.scaffoldColor,
        hintColor: AppColors.hintColor,
        buttonColor: AppColors.popupsColor.withOpacity(0.94),
        fontFamily: EasyLocalization.of(context).locale == Locale('ar', 'AR')
            ? 'GESSMEDIUM'
            : 'LatoRegular',
        accentColor: AppColors.titleColor,
      ),
      darkTheme: ThemeData.dark(),
      builder: (context, child) {
        return Directionality(
          textDirection:
              EasyLocalization.of(context).locale == Locale('ar', 'AR')
                  ? ui.TextDirection.rtl
                  : ui.TextDirection.ltr,
          child: child,
        );
      },
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.65,
              height: MediaQuery.of(context).size.width * 0.65,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  'assets/images/blacklogo.jpg',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
