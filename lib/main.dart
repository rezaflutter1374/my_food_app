import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_food_app/home/create_new.dart';
import 'package:my_food_app/home/login_page.dart';
import 'package:my_food_app/welcom_page2.dart';
import 'package:my_food_app/welcome.dart';
import 'package:my_food_app/styles/app_styles.dart';
import 'package:my_food_app/welcome_page3.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.orange,
        ),
        fontFamily: AppStyles.fontFamily,
        textTheme: TextTheme(
          titleLarge: AppStyles.titleStyle,

          titleMedium: AppStyles.subtitleStyle,
          bodyMedium: AppStyles.bodyStyle,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppStyles.orangeButtonStyle,
        ),
        inputDecorationTheme: AppStyles.textFieldTheme,
      ),
      home: Welcome_page(),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/welcome_page2', page: () => Welcome_page2()),
        GetPage(name: '/welcome_page3', page: () => Welcome_page3()),
        GetPage(name: '/login_page', page: () => LoginPage()),
        GetPage(name: '/create_new', page: () => CreateNew()),
      ],
    );
  }
}
