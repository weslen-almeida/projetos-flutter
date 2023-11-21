import 'package:flutter/material.dart';

class CardResume extends StatelessWidget {
  const CardResume({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        child: SizedBox(
          width: 350,
          height: 100,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text('Resumo'),
                Row(
                  textDirection: TextDirection.ltr,
                  children: [
                    Text('Total de Sites'),
                  ],
                ),
                Row(
                  textDirection: TextDirection.ltr,
                  children: [
                    Text('No ar'),
                  ],
                ),
                Row(
                  textDirection: TextDirection.ltr,
                  children: [
                    Text('Fora do ar'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
