import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:vroom/views/auth/login.dart';
import 'package:vroom/views/auth/password_recover.dart';
import 'package:vroom/views/main_screens/home.dart';
import 'views/auth/register.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MyApp(),
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        useInheritedMediaQuery: true,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/HOMESY': (context) => const HOME(),
        "/Register": (context) => const Register(),
        "/Login": (context) => const Login(),
        "/Recover": (context) => const Recover(),
        //"/SplashScreen":(context)=> SplashScreen(),
      },
      home: const Login(),
    );
  }
}
