import 'package:flutter/material.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final String selectedCategory;

  ProductListScreen({required this.selectedCategory});

  final List<Map<String, dynamic>> products = [
    {"name": "Ancient Relic Tablet", "price": "50.000", "icon": Icons.auto_stories, "category": "Artifacts"},
    {"name": "Rune Stone", "price": "40.000", "icon": Icons.abc, "category": "Artifacts"},
    {"name": "Gold Seal", "price": "75.000", "icon": Icons.stars, "category": "Artifacts"},

    {"name": "Crystal Orb", "price": "60.000", "icon": Icons.bubble_chart, "category": "Crystals"},
    {"name": "Dark Crystal", "price": "80.000", "icon": Icons.blur_on, "category": "Crystals"},
    {"name": "Light Fragment", "price": "45.000", "icon": Icons.wb_incandescent, "category": "Crystals"},

    {"name": "Fire Gem", "price": "90.000", "icon": Icons.local_fire_department, "category": "Enchanted Items"},
    {"name": "Water Amulet", "price": "55.000", "icon": Icons.water_drop, "category": "Enchanted Items"},
    {"name": "Wind Talisman", "price": "70.000", "icon": Icons.air, "category": "Enchanted Items"},
  ];

  @override
  Widget build(BuildContext context) {
    final filtered = products.where((p) => p["category"] == selectedCategory).toList();

    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      appBar: AppBar(
        title: Text(selectedCategory),
        backgroundColor: Colors.deepPurple.shade700,
      ),

      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(12),
        childAspectRatio: 3 / 4,
        children: filtered.map((product) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductDetailScreen(product: product),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade400, 
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(product["icon"], size: 45, color: Colors.amberAccent),
                  SizedBox(height: 10),
                  Text(
                    product["name"],
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Rp ${product["price"]}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.amberAccent,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
