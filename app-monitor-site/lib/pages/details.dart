import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String name;
  final String status;
  final String created;

  const Details({
    super.key,
    required this.name,
    required this.status,
    required this.created,
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
          children: [
            Text(widget.name),
            Text(widget.status),
            Text(widget.created),
            ElevatedButton(
              onPressed: () {
                print('teste de clique');
              },
              child: Text('Ir para o site'),
            ),
          ],
        ),
      ),
    );
  }
}
