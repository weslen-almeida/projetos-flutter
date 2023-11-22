import 'package:app_monitor_site/pages/details.dart';
import 'package:flutter/material.dart';

class CardSites extends StatelessWidget {
  const CardSites({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: <Widget>[
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            child: const Text("Site 01"),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Details(
                    name: 'Site 01', status: 'No ar', created: '01/01/2023'),
              ),
            );
          },
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child: const Text("Site 02"),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Details(
                    name: 'Site 02', status: 'No ar', created: '01/01/2023'),
              ),
            );
          },
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[300],
            child: const Text("Site 03"),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Details(
                    name: 'Site 03', status: 'No ar', created: '01/01/2023'),
              ),
            );
          },
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[400],
            child: const Text("Site 04"),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Details(
                    name: 'Site 04', status: 'No ar', created: '01/01/2023'),
              ),
            );
          },
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[500],
            child: const Text("Site 05"),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Details(
                    name: 'Site 05', status: 'No ar', created: '01/01/2023'),
              ),
            );
          },
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[600],
            child: const Text("Site 06"),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Details(
                    name: 'Site 06', status: 'No ar', created: '01/01/2023'),
              ),
            );
          },
        ),
      ],
    );
  }
}
