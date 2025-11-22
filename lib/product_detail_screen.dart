import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      appBar: AppBar(
        title: Text(product["name"]),
        backgroundColor: Colors.deepPurple.shade700,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              product["icon"],
              size: 90,
              color: Colors.amberAccent,
            ),

            SizedBox(height: 20),

            Text(
              product["name"],
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 10),

            Text(
              "Rp ${product["price"]}",
              style: TextStyle(
                fontSize: 20,
                color: Colors.amberAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
