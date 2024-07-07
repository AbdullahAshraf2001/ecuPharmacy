import 'package:flutter/material.dart';
import 'package:ecu/ui/utilites/app_assets.dart';
import 'package:ecu/ui/utilites/app_colors.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  final TextEditingController _medicine1Controller = TextEditingController();
  final TextEditingController _medicine2Controller = TextEditingController();
  String _interactionResult = '';

  final Map<String, List<String>> _medicineConflicts = {
    "glibenclamide": [
      "diuretics",
      "angiotensin-converting enzyme inhibitors",
      "non-steroidal anti-inflammatory drugs",
      "fluconazole",
      "miconazole",
      "ciprofloxacin",
      "erythromycin",
      "co-trimoxazole",
      "rifampicin",
      "corticosteroids",
      "hydrochlorothiazide",
      "salbutamol",
      "chlorpromazine"
    ],
  };

  void _checkInteraction() {
    String medicine1 = _medicine1Controller.text.trim().toLowerCase();
    String medicine2 = _medicine2Controller.text.trim().toLowerCase();

    if (medicine1.isEmpty || medicine2.isEmpty) {
      setState(() {
        _interactionResult = "No Data";
      });
      return;
    }

    if (_medicineConflicts.containsKey(medicine1) &&
        _medicineConflicts[medicine1]!.contains(medicine2)) {
      setState(() {
        _interactionResult = "There is a conflict";
      });
    } else if (_medicineConflicts.containsKey(medicine2) &&
        _medicineConflicts[medicine2]!.contains(medicine1)) {
      setState(() {
        _interactionResult = "There is a conflict";
      });
    } else {
      setState(() {
        _interactionResult = "There is no conflict";
      });
    }
  }

  List<String> _getAllMedicineNames() {
    return _medicineConflicts.keys
        .followedBy(_medicineConflicts.values.expand((e) => e))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: const Text(
          "Description",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 18),
              child: Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text.isEmpty) {
                    return const Iterable<String>.empty();
                  }
                  return _getAllMedicineNames().where((String option) {
                    return option
                        .toLowerCase()
                        .contains(textEditingValue.text.toLowerCase());
                  });
                },
                fieldViewBuilder: (BuildContext context,
                    TextEditingController textEditingController,
                    FocusNode focusNode,
                    VoidCallback onFieldSubmitted) {
                  return TextField(
                    controller: _medicine1Controller,
                    focusNode: focusNode,
                    onChanged: (text) {
                      textEditingController.value = TextEditingValue(
                        text: text,
                        selection: TextSelection.fromPosition(
                          TextPosition(offset: text.length),
                        ),
                      );
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Drug Full Name",
                    ),
                  );
                },
                onSelected: (String selection) {
                  _medicine1Controller.text = selection;
                },
              ),
            ),
            Image.asset(AppAssets.arrowTransfer),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 18),
              child: Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text.isEmpty) {
                    return const Iterable<String>.empty();
                  }
                  return _getAllMedicineNames().where((String option) {
                    return option
                        .toLowerCase()
                        .contains(textEditingValue.text.toLowerCase());
                  });
                },
                fieldViewBuilder: (BuildContext context,
                    TextEditingController textEditingController,
                    FocusNode focusNode,
                    VoidCallback onFieldSubmitted) {
                  return TextField(
                    controller: _medicine2Controller,
                    focusNode: focusNode,
                    onChanged: (text) {
                      textEditingController.value = TextEditingValue(
                        text: text,
                        selection: TextSelection.fromPosition(
                          TextPosition(offset: text.length),
                        ),
                      );
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Drug Full Name",
                    ),
                  );
                },
                onSelected: (String selection) {
                  _medicine2Controller.text = selection;
                },
              ),
            ),
            Image.asset(AppAssets.yinYang),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Drug Interaction",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: AppColors.black,
                        backgroundColor: AppColors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onPressed: _checkInteraction,
                    child: const Text('Check Interaction'),
                  ),
                  const SizedBox(height: 20),
                  if (_interactionResult == "No Data")
                    Image.asset(AppAssets.noData)
                  else
                    Text(
                      textAlign: TextAlign.center,
                      _interactionResult,
                      style: const TextStyle(fontSize: 20, color: Colors.red),
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
