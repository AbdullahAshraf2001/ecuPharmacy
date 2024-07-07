import 'package:ecu/ui/screens/home/tabs/medicine_screen/medicine_screen.dart';
import 'package:ecu/ui/utilites/app_colors.dart';
import 'package:flutter/material.dart';

import 'tabs/description_screen/description_screen.dart';
import 'tabs/main_screen/main_screen.dart';
import 'tabs/profile_screen/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;

  List<Widget> tabs = [
    MainScreen(),
    const MedicineScreen(),
    const DescriptionScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildBottomNavigationBar() => Theme(
        data:ThemeData.light(),
        child: BottomNavigationBar(
          backgroundColor: AppColors.white,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.grey,
          showUnselectedLabels: true,
          currentIndex: currentTabIndex,
          onTap: (index) {
            currentTabIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_services_sharp),
              label: "Medicine",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.note_alt_outlined),
              label: "Description",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ],
        ),
      );
}
