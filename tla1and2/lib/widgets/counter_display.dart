import 'package:flutter/material.dart';
import 'package:tla1and2/models/counter_model.dart';

class CounterDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final count = Provider.of<CounterModel>(context).count;

    return Text(
      'Count: $count',
      style: TextStyle(fontSize: 24),
    );
  }
}
