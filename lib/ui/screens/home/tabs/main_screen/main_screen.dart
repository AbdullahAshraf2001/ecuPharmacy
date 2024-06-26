import 'package:ecu/ui/screens/auth/login/login_view.dart';
import 'package:ecu/ui/screens/home/tabs/medicine_screen/medicine_screen.dart';
import 'package:ecu/ui/utilites/app_assets.dart';
import 'package:ecu/ui/utilites/app_colors.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "ECU",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.white,
      ),
      drawer: Drawer(
        backgroundColor: AppColors.white,
        child: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
          child: ListView(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.medical_information,
                  color: AppColors.primary,
                ),
                title: const Text("Medicine"),
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, MedicineScreen.routeName);
                },
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.grey,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: AppColors.primary,
                ),
                title: const Text("Log out"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, Login.routeName);
                },
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.grey,
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .01),
                child: Image.asset(AppAssets.ecuIcon)),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 24),
                  child: RichText(
                      textAlign: TextAlign.start,
                      text: const TextSpan(
                          text: "Welcome to ",
                          style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: "ECU ",
                                style: TextStyle(color: AppColors.primary)),
                            TextSpan(
                              text: "Phamracy",
                            )
                          ])),
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 12),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Image.asset(AppAssets.doctorIC),
                        const Text("Top Doctors")
                      ],
                    )),
                    Expanded(
                        child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, MedicineScreen.routeName);
                            },
                            child: Column(
                              children: [
                                Image.asset(AppAssets.medicineIC),
                                const Text("Medicine")
                              ],
                            ))),
                    Expanded(
                        child: Column(
                      children: [
                        Image.asset(AppAssets.searchIC),
                        const Text("Pharmacy")
                      ],
                    )),
                  ],
                )),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                children: [
                  Text(
                    "Health article",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 14, color: AppColors.primary),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Card(
                    child: Container(
                      color: AppColors.white,
                      child: Row(
                        children: [
                          Expanded(child: Image.asset(AppAssets.doctorImage)),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .6,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist"),
                                      Text(
                                        "Jun 10, 2023 5min read",
                                        style: TextStyle(color: AppColors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.bookmark),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Card(
                    child: Container(
                      color: AppColors.white,
                      child: Row(
                        children: [
                          Expanded(child: Image.asset(AppAssets.doctorImage)),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .6,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "The Impact of COVID-19 on Healthcare Systems"),
                                      Text(
                                        "Jun 10, 2023 5min read",
                                        style: TextStyle(color: AppColors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.bookmark_border),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Card(
                    child: Container(
                      color: AppColors.white,
                      child: Row(
                        children: [
                          Expanded(child: Image.asset(AppAssets.doctorImage)),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .6,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "The Impact of COVID-19 on Healthcare Systems"),
                                      Text(
                                        "Jun 10, 2023 5min read",
                                        style: TextStyle(color: AppColors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.bookmark_border),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Card(
                    child: Container(
                      color: AppColors.white,
                      child: Row(
                        children: [
                          Expanded(child: Image.asset(AppAssets.doctorImage)),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .6,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "The Impact of COVID-19 on Healthcare Systems"),
                                      Text(
                                        "Jun 10, 2023 5min read",
                                        style: TextStyle(color: AppColors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.bookmark_border),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Card(
                    child: Container(
                      color: AppColors.white,
                      child: Row(
                        children: [
                          Expanded(child: Image.asset(AppAssets.doctorImage)),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .6,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "The Impact of COVID-19 on Healthcare Systems"),
                                      Text(
                                        "Jun 10, 2023 5min read",
                                        style: TextStyle(color: AppColors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.bookmark_border),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
