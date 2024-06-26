import 'package:ecu/ui/screens/home/home_screen.dart';
import 'package:ecu/ui/utilites/app_assets.dart';
import 'package:ecu/ui/utilites/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicineScreen extends StatelessWidget {
  static const String routeName = "medicine";
  const MedicineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                        },
                        child: const Icon(CupertinoIcons.back),
                      ),

                      SizedBox(width: MediaQuery.of(context).size.width*.3,),
                      const Text(
                        "Medicine",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Column(children: [
                  Card(
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin:const EdgeInsets.only(top: 30,left: 30),
                                child: const Text(
                                  "Medicine Name",
                                  style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold,fontSize: 18),
                                ),
                              ),



                              Container(
                                margin: const EdgeInsets.only(bottom: 28,top: 20,left: 36),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primary, // Text color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10), // Rounded corners
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Button padding
                                  ),
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("More details >>",style: TextStyle(color: AppColors.white),),
                                      SizedBox(width: 6),
                                    ],
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),
                        const Spacer(),
                        Expanded(flex: 30,
                            child: Image.asset(AppAssets.maskIC)
                        ),

                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin:const EdgeInsets.only(top: 30,left: 30),
                                child: const Text(
                                  "Medicine Name",
                                  style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold,fontSize: 18),
                                ),
                              ),



                              Container(
                                margin: const EdgeInsets.only(bottom: 28,top: 20,left: 36),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primary, // Text color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10), // Rounded corners
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Button padding
                                  ),
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("More details >>",style: TextStyle(color: AppColors.white),),
                                      SizedBox(width: 6),
                                    ],
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),
                        const Spacer(),
                        Expanded(flex: 30,
                            child: Image.asset(AppAssets.maskIC)
                        ),

                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin:const EdgeInsets.only(top: 30,left: 30),
                                child: const Text(
                                  "Medicine Name",
                                  style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold,fontSize: 18),
                                ),
                              ),



                              Container(
                                margin: const EdgeInsets.only(bottom: 28,top: 20,left: 36),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primary, // Text color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10), // Rounded corners
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Button padding
                                  ),
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("More details >>",style: TextStyle(color: AppColors.white),),
                                      SizedBox(width: 6),
                                    ],
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),
                        const Spacer(),
                        Expanded(flex: 30,
                            child: Image.asset(AppAssets.maskIC)
                        ),

                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin:const EdgeInsets.only(top: 30,left: 30),
                                child: const Text(
                                  "Medicine Name",
                                  style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold,fontSize: 18),
                                ),
                              ),



                              Container(
                                margin: const EdgeInsets.only(bottom: 28,top: 20,left: 36),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primary, // Text color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10), // Rounded corners
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Button padding
                                  ),
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("More details >>",style: TextStyle(color: AppColors.white),),
                                      SizedBox(width: 6),
                                    ],
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),
                        const Spacer(),
                        Expanded(flex: 30,
                            child: Image.asset(AppAssets.maskIC)
                        ),

                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin:const EdgeInsets.only(top: 30,left: 30),
                                child: const Text(
                                  "Medicine Name",
                                  style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold,fontSize: 18),
                                ),
                              ),



                              Container(
                                margin: const EdgeInsets.only(bottom: 28,top: 20,left: 36),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primary, // Text color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10), // Rounded corners
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Button padding
                                  ),
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("More details >>",style: TextStyle(color: AppColors.white),),
                                      SizedBox(width: 6),
                                    ],
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),
                        const Spacer(),
                        Expanded(flex: 30,
                            child: Image.asset(AppAssets.maskIC)
                        ),

                      ],
                    ),
                  ),
                ],),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
