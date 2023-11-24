import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Details extends StatefulWidget {
  final String name;
  final String status;
  final String created;
  final String url;
  final String logo;

  const Details({
    super.key,
    required this.name,
    required this.status,
    required this.created,
    required this.url,
    required this.logo
  });

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do site'),
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(
              size: 100,
            ),
            const SizedBox(height: 20),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Empresa: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: widget.name),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Status: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: widget.status),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Publicado em: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: widget.created),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Url: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: widget.url),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
               await launchUrl(Uri.parse('https://www.google.com',), mode: LaunchMode.externalApplication);
              },
              child: const Text('Acessar o site'),
            ),
          ],
        ),
      ),
    );
  }
}
