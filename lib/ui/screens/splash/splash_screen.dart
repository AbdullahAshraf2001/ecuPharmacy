import 'package:flutter/material.dart';
import '../../utilites/app_assets.dart';
import '../auth/login/login_view.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 2,), (){
      Navigator.pushNamed(context, Login.routeName);
    }
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.splash),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
