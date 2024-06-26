import 'package:ecu/ui/screens/home/tabs/main_screen/main_screen.dart';
import 'package:ecu/ui/screens/home/tabs/medicine_screen/medicine_screen.dart';
import 'package:ecu/ui/screens/home/tabs/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

import 'ui/screens/auth/login/login_view.dart';
import 'ui/screens/auth/register/register_view.dart';
import 'ui/screens/home/home_screen.dart';
import 'ui/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        RegisterScreen.routeName: (_) => RegisterScreen(),
        MedicineScreen.routeName: (_) => MedicineScreen(),
        ProfileScreen.routeName: (_) => ProfileScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        Login.routeName: (_) => Login(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
