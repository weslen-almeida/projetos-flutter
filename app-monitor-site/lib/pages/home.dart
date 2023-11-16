import 'package:app_monitor_site/components/card_resume.dart';
import 'package:app_monitor_site/components/card_sites.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: CardResume(),
          ),
          Expanded(
            flex: 3,
            child: CardSites(),
          ),
        ],
      ),
    );
  }
}
