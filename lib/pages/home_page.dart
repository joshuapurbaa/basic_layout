import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Layouting'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        textBaseline: TextBaseline.alphabetic,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: const [
          Text(
            'HEY',
            style: TextStyle(fontSize: 25),
          ),
          Text(
            'HO',
            style: TextStyle(fontSize: 70),
          ),
          Text(
            'LETS',
            style: TextStyle(fontSize: 35),
          ),
          Text(
            'GO',
            style: TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  final String text;
  final Color color;
  const ColorBox({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 22),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  final String text;
  const BlueBox({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(5),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

class BiggerBlueBox extends StatelessWidget {
  const BiggerBlueBox({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
