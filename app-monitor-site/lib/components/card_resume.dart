import 'package:flutter/material.dart';

class CardResume extends StatelessWidget {
  const CardResume({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        child: SizedBox(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text('Resumo'),
                Row(mainAxisAlignment :MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Total de Sites'),
                          Text('No ar'),
                          Text('Fora do ar'),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('6'),
                          Text('4'),
                          Text('2')
                        ],
                      ),
                    )
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
