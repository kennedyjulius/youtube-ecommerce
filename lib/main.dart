import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:youtube_ecommerce/firebase_options.dart';
import 'package:youtube_ecommerce/screens/auth/login_screen.dart';
import 'package:youtube_ecommerce/screens/auth/signup_screen.dart';
import 'package:youtube_ecommerce/screens/other/home_screen.dart';
import 'package:youtube_ecommerce/screens/other/landingScreen.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube E_Commerce',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
