import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String name;
  final String status;
  final String created;
  final String url;

  const Details({
    super.key,
    required this.name,
    required this.status,
    required this.created,
    required this.url,
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              const FlutterLogo(
                size: 50,
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
                onPressed: () {
                  print('teste de clique');
                  // launchUrl(Uri.parse('https://www.google.com'));
                },
                child: const Text('Ir para o site'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
