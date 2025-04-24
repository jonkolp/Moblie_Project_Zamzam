import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'name': 'Pens', 'icon': Icons.edit},
    {'name': 'Notebooks', 'icon': Icons.menu_book},
    {'name': 'Art Supplies', 'icon': Icons.brush},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ZamZam Stationery'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting
            Text(
              'Welcome to ZamZam!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Find all your stationery needs in one place.',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 20),

            // Banner image placeholder
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  '📚 Back to School Deals!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(height: 30),

            // Categories
            Text(
              'Featured Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: categories
                  .map((cat) => Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blue[50],
                            child: Icon(cat['icon'], size: 30, color: Colors.blue),
                          ),
                          SizedBox(height: 6),
                          Text(cat['name']),
                        ],
                      ))
                  .toList(),
            ),
            SizedBox(height: 30),

            // Browse products button
            Center(
              child: ElevatedButton.icon(
                icon: Icon(Icons.shopping_bag),
                label: Text('Browse Products'),
                onPressed: () {
                  Navigator.pushNamed(context, '/products');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  backgroundColor: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
