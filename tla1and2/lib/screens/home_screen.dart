import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tla1and2/models/counter_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('State Management Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count: ${counterModel.count}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: counterModel.increment,
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
