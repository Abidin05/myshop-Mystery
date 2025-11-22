import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {"label": "Artifacts", "icon": Icons.auto_awesome},
    {"label": "Crystals", "icon": Icons.bubble_chart},
    {"label": "Enchanted Items", "icon": Icons.local_fire_department},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900, // warna RPG tapi sederhana
      appBar: AppBar(
        title: Text("Mystery Shop"),
        backgroundColor: Colors.deepPurple.shade700,
        centerTitle: true,
      ),

      body: Column(
        children: [
          SizedBox(height: 20),

          Text(
            "Choose Category",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: categories.map((cat) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ProductListScreen(
                        selectedCategory: cat["label"],
                      ),
                    ),
                  );
                },
                child: Container(
                  width: 110,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade400, // tidak glow
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Icon(cat["icon"], size: 35, color: Colors.amberAccent),
                      SizedBox(height: 8),
                      Text(
                        cat["label"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
