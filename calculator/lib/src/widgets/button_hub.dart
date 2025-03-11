import 'package:flutter/material.dart';

class ButtonHub extends StatelessWidget {
  const ButtonHub({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
        const Button(value: '0'),
        const Button(value: '1'),
        const Button(value: '2'),
        const Button(value: '3'),
        const Button(value: '4'),
        const Button(value: '5'),
        const Button(value: '6'),
        const Button(value: '7'),
        const Button(value: '8'),
        const Button(value: '9'),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String value;
  final Color? color;
  const Button({super.key, required this.value, this.color});

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorScheme.primaryContainer;
    return Container(
      padding: const EdgeInsets.all(8),
      color: color,
      child: Center(
        child: Text(
          value,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}
