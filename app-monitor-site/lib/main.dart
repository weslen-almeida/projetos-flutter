import 'package:app_monitor_site/pages/details.dart';
import 'package:app_monitor_site/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff67750a4),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Monitoramento de Sites'),
        ),
        body: const Home(),
      ),
      routes: {
        '/details': (context) => const Details(
              name: '',
              status: '',
              created: '',
              url: '',
              logo: ''
            ),
      },
    );
  }
}
