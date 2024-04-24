import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';

class ColumnTable extends StatefulWidget {
  const ColumnTable({Key? key}) : super(key: key);

  @override
  _ColumnTableState createState() => _ColumnTableState();
}

class _ColumnTableState extends State<ColumnTable> {
  final Set<String> _selectedButtons = {};
  final List<List<String>> categories = [
    ["All", "Amortisseurs", "Eclairage"],
    ["Climatisation", "Freinage", "Moteur"],
    ["Boites de vitesses", "Filtres", "Roulements"],
    ["Filtre a huile", "Rétroviseurs", "Moteur"],
    ["Courroies", "Roulements", "Intérieur"]
  ];

  Widget _buildButton(String text) {
    bool isSelected = _selectedButtons.contains(text);
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isSelected
              ? _selectedButtons.remove(text)
              : _selectedButtons.add(text);
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isSelected ? AppColors.primaryColor : AppColors.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: AppColors.primaryColor),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? AppColors.secondaryColor : AppColors.primaryColor,
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: categories.map((List<String> category) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Row(
              children: category.map((String title) {
                return Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 8.0),
                    height: 50,
                    child: title == "All"
                        ? ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              "All",
                              style: TextStyle(
                                color: AppColors.secondaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        : _buildButton(title),
                  ),
                );
              }).toList(),
            ),
          );
        }).toList(),
      ),
    );
  }
}
