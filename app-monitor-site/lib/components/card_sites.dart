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
            child: const Column(
              children: [
                FlutterLogo(
                  size: 25,
                ),
                SizedBox(height: 2),
                Text("Web Construp"),
                SizedBox(height: 2),
                Text("No ar"),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Details(
                  name: 'Web Construp',
                  status: 'No ar',
                  created: '01/01/2023',
                  url: 'https://www.web-cms.construp.com.br',
                ),
              ),
            );
          },
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child: const Column(
              children: [
                FlutterLogo(
                  size: 25,
                ),
                SizedBox(height: 2),
                Text(
                  "Alfix Parafusos",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 2),
                Text("No ar"),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Details(
                  name: 'Alfix Parafusos',
                  status: 'No ar',
                  created: '10/01/2023',
                  url: 'https://www.alfixparafusos.com.br',
                ),
              ),
            );
          },
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[300],
            child: const Column(
              children: [
                FlutterLogo(
                  size: 25,
                ),
                SizedBox(height: 2),
                Text(
                  "Google",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 2),
                Text("No ar"),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Details(
                  name: 'Google',
                  status: 'No ar',
                  created: '01/01/2000',
                  url: 'https://www.google.com',
                ),
              ),
            );
          },
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[400],
            child: const Column(
              children: [
                FlutterLogo(
                  size: 25,
                ),
                SizedBox(height: 2),
                Text(
                  "Construp",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 2),
                Text("No ar"),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Details(
                  name: 'Construp',
                  status: 'No ar',
                  created: '10/05/2020',
                  url: 'https://www.construp.com.br',
                ),
              ),
            );
          },
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[500],
            child: const Column(
              children: [
                FlutterLogo(
                  size: 25,
                ),
                SizedBox(height: 2),
                Text(
                  "Blenus",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 2),
                Text("No ar"),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Details(
                  name: 'Belenus',
                  status: 'No ar',
                  created: '21/02/2000',
                  url: 'https://www.belenus.com.br',
                ),
              ),
            );
          },
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[600],
            child: const Column(
              children: [
                FlutterLogo(
                  size: 25,
                ),
                SizedBox(height: 2),
                Text(
                  "Git Hub",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 2),
                Text("No ar"),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Details(
                  name: 'Git Hub',
                  status: 'No ar',
                  created: '19/08/2003',
                  url: 'https://www.github.com',
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
