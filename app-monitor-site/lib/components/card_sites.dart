import 'package:app_monitor_site/pages/details.dart';
import 'package:flutter/material.dart';

class CardSites extends StatelessWidget {
   CardSites({super.key});

  final List<Details> detailsList = [
    const Details(
      name: 'Web Construp',
      status: 'No ar',
      created: '01/01/2023',
      url: 'https://www.web-cms.construp.com.br',
      logo: ''
    ),
    const Details(
      name: 'Alfix Parafusos',
      status: 'No ar',
      created: '10/01/2023',
      url: 'https://www.alfixparafusos.com.br',
      logo: ''
    ),
    const Details(
      name: 'Google',
      status: 'No ar',
      created: '01/01/2000',
      url: 'https://www.google.com',
      logo: ''
    ),
    const Details(
      name: 'Construp',
      status: 'No ar',
      created: '10/05/2020',
      url: 'https://www.construp.com.br',
      logo: ''
    ),
    const Details(
      name: 'Belenus',
      status: 'No ar',
      created: '21/02/2000',
      url: 'https://www.belenus.com.br',
      logo: ''
    ),
    const Details(
      name: 'Git Hub',
      status: 'No ar',
      created: '19/08/2003',
      url: 'https://www.github.com',
      logo: ''
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: [
              ...detailsList.map((site) => 
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.tealAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FlutterLogo(
                        size: 25,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        site.name,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 2),
                      Text(site.status),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => site
                    ),
                  );
                },
              ),),
               ],
          ),
        ),
      ],
    );
  }
}
