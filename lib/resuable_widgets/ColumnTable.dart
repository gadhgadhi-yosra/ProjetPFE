import 'package:flutter/material.dart';

class ColumnTable extends StatefulWidget {
  const ColumnTable({super.key});

  @override
  State<ColumnTable> createState() => _ColumnTableState();
}

class _ColumnTableState extends State<ColumnTable> {
  ElevatedButton _buildButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.black),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "All",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 50,
                  child: _buildButton("Amortisseurs"),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 50,
                  child: _buildButton("Eclairage"),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  child: _buildButton("Climatisation"),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 50,
                  child: _buildButton("Freinage"),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 50,
                  child: _buildButton("Moteur"),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  child: _buildButton("Boites vitesses"),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 50,
                  child: _buildButton("Filtres"),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 50,
                  child: _buildButton("Roulements"),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  child: _buildButton("Filtre a huile"),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 50,
                  child: _buildButton("Rétroviseurs"),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 50,
                  child: _buildButton("Moteur"),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  child: _buildButton("Courroies"),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 50,
                  child: _buildButton("Roulements"),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 50,
                  child: _buildButton("Intérieur"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
