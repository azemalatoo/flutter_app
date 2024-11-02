import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  final List<Map<String, String>> mockData = const [
    {
      "name": "Main Store",
      "location": "City Center",
      "description":
          "Our flagship store offering a wide range of products and services."
    },
    {
      "name": "Downtown Branch",
      "location": "Downtown District",
      "description": "Conveniently located in the heart of the city."
    },
    {
      "name": "Suburban Mall Branch",
      "location": "Suburban Mall",
      "description": "Your one-stop shop for all your needs."
    },
    {
      "name": "University District Branch",
      "location": "University District",
      "description": "Catering to the needs of students and faculty."
    },
    {
      "name": "Airport Branch",
      "location": "Airport Terminal",
      "description": "Perfect for last-minute shopping and travel essentials."
    },
    {
      "name": "Online Store",
      "location": "Online",
      "description": "Shop anytime, anywhere with our convenient online store."
    },
  ];

  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our branches'),
      ),
      body: ListView.builder(
        itemCount: mockData.length,
        itemBuilder: (context, index) {
          final shop = mockData[index];
          return Card(
            margin: const EdgeInsets.all(4.0), // Reduced margin
            elevation: 1,
            child: SizedBox(
              height: 70, // Set desired card height
              width: 200,
              child: ListTile(
                leading: Icon(
                  Icons.store,
                  color: Colors.brown, // Set icon color
                ),
                title: Text(shop['name']!),
                subtitle: Text(shop['description']!),
                onTap: () {
                  // Handle shop tap
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(shop['name']!),
                      content: Text(shop['description']!),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Close'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
