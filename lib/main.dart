import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
        maxWidth: MediaQuery.of(context).size.width,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.resize(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        background: Container(
          color: Color(0xFFF5F5F5),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
