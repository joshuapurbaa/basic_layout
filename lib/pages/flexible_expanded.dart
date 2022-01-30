import 'package:flutter/material.dart';

class FlexibleExpanded extends StatelessWidget {
  const FlexibleExpanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Layouting'),
      ),
      body: Column(
        children: [
          Row(
            children: const [
              FlexibleWidget(),
              ExpandedWidget(),
            ],
          ),
          Row(
            children: const [
              ExpandedWidget(),
              ExpandedWidget(),
            ],
          ),
          Row(
            children: const [
              FlexibleWidget(),
              FlexibleWidget(),
            ],
          ),
          Row(
            children: const [
              ExpandedWidget(),
              FlexibleWidget(),
            ],
          ),
          Row(
            children: const [
              ExpandedWidget(),
            ],
          ),
          Row(
            children: const [
              FlexibleWidget(),
            ],
          ),
          const ExpandedWidget(),
          const FlexibleWidget(),
        ],
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: const Text(
          'Flexible',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border.all(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: const Text(
          'Expanded',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          border: Border.all(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
