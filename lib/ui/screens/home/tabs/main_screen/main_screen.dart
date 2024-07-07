import 'package:ecu/ui/screens/auth/login/login_view.dart';
import 'package:ecu/ui/screens/home/tabs/medicine_screen/medicine_screen.dart';
import 'package:ecu/ui/utilites/app_assets.dart';
import 'package:ecu/ui/utilites/app_colors.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<bool> isBookMarkedList =
      List.generate(5, (index) => false); //3dd el list el article

  void _toggleBookmark(int index) {
    setState(() {
      isBookMarkedList[index] = !isBookMarkedList[index];
    });
  }

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
                child: Padding(
                  padding: MediaQuery.of(context).padding * 0.8,
                  child: Row(
                    children: [
                      Expanded(
                          child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, MedicineScreen.routeName);
                              },
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.medical_information,
                                    color: AppColors.primary,
                                  ),
                                  const Text("Medicine")
                                ],
                              ))),
                      Expanded(
                          child: Column(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: AppColors.primary,
                          ),
                          const Text("Favourite Medicine")
                        ],
                      )),
                    ],
                  ),
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
                                          "Combining flavonoid with vitamin B6 may help preserve cognitive function"),
                                      Text(
                                        "JUNE 27, 2024",
                                        style: TextStyle(color: AppColors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () => _toggleBookmark(0),
                              // Pass the index of the article
                              child: Icon(
                                isBookMarkedList[0]
                                    ? Icons.bookmark
                                    : Icons.bookmark_border,
                              ),
                            ),
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
                                          "Could microplastics found in penises affect fertility and sperm count?"),
                                      Text(
                                        "JUNE 26, 2024",
                                        style: TextStyle(color: AppColors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () => _toggleBookmark(1),
                              // Pass the index of the article
                              child: Icon(
                                isBookMarkedList[1]
                                    ? Icons.bookmark
                                    : Icons.bookmark_border,
                              ),
                            ),
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
                                          "Weight loss: New dietary guidelines for people taking Wegovy, Ozempic"),
                                      Text(
                                        "JUNE 26, 2024",
                                        style: TextStyle(color: AppColors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () => _toggleBookmark(2),
                              // Pass the index of the article
                              child: Icon(
                                isBookMarkedList[2]
                                    ? Icons.bookmark
                                    : Icons.bookmark_border,
                              ),
                            ),
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
                                          "Missing a specific blood group may genetically predispose people to obesity"),
                                      Text(
                                        "JUNE 26, 2024",
                                        style: TextStyle(color: AppColors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () => _toggleBookmark(3),
                              // Pass the index of the article
                              child: Icon(
                                isBookMarkedList[3]
                                    ? Icons.bookmark
                                    : Icons.bookmark_border,
                              ),
                            ),
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
                                          "Peptide treatment could reverse cognitive decline in Alzheimer's disease"),
                                      Text(
                                        "JUNE 26, 2024",
                                        style: TextStyle(color: AppColors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () => _toggleBookmark(4),
                              // Pass the index of the article
                              child: Icon(
                                isBookMarkedList[4]
                                    ? Icons.bookmark
                                    : Icons.bookmark_border,
                              ),
                            ),
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
