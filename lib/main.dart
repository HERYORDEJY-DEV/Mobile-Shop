import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_shop/screens/home-stack/home_tab_screen.dart';
import 'package:mobile_shop/styles/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xFFE5E5E5),
        systemNavigationBarColor: Color(0xFFE5E5E5),
        systemNavigationBarContrastEnforced: true,
        systemNavigationBarDividerColor: AppColors.dark,
        systemNavigationBarIconBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'OpenSans'),
      home: const HomeTabScreen(),
    );
  }
}
