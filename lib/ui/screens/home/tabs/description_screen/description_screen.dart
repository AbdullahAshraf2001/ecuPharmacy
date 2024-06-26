import 'package:ecu/ui/utilites/app_assets.dart';
import 'package:ecu/ui/utilites/app_colors.dart';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(centerTitle: true,
        backgroundColor: AppColors.white,
        title: const Text("Description", style: TextStyle(fontWeight: FontWeight.bold),),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26,vertical: 18),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Drug Full Name",
                ) ,
              ),
            ),
            Image.asset(AppAssets.arrowTransfer),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26,vertical: 18),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Drug Full Name",
                ) ,
              ),
            ),
            Image.asset(AppAssets.yinYang),
          ],
        ),
      ),
    );
  }
}
