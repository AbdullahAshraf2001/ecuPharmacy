import 'package:ecu/ui/screens/home/home_screen.dart';
import 'package:ecu/ui/utilites/app_assets.dart';
import 'package:ecu/ui/utilites/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicineScreen extends StatefulWidget {
  static const String routeName = "medicine";
  const MedicineScreen({super.key});

  @override
  _MedicineScreenState createState() => _MedicineScreenState();
}

class _MedicineScreenState extends State<MedicineScreen> {
  TextEditingController _searchController = TextEditingController();
  final List<String> _medicines = [
    "Glibenclamide",
    "Gliclazide",
    "Repaglinide",
    "Semaglutide",
    "Panadol",
    "Profen"
  ];
  late List<String> _filteredMedicines;

  @override
  void initState() {
    super.initState();
    _filteredMedicines = _medicines;
    _searchController.addListener(_filterMedicines);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterMedicines() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      _filteredMedicines = _medicines.where((medicine) {
        return medicine.toLowerCase().contains(query);
      }).toList();
    });
  }

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
                      SizedBox(width: MediaQuery.of(context).size.width * .3),
                      const Text(
                        "Medicine",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .07,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppColors.accent),
                  ),
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: "Search drugs, medicine...",
                      hintStyle: TextStyle(color: AppColors.grey, fontWeight: FontWeight.normal),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, color: AppColors.grey),
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),


                Column(
                  children: _filteredMedicines.map((medicine) {
                    return Card(
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(top: 30, left: 30),
                                  child: Text(
                                    medicine,
                                    style: const TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 28, top: 20, left: 36),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.primary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                    ),
                                    onPressed: () {},
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("More details >>", style: TextStyle(color: AppColors.white)),
                                        SizedBox(width: 6),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Expanded(flex: 30, child: Image.asset(AppAssets.maskIC)),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
