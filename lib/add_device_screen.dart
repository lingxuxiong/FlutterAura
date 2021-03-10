import 'package:flutter/material.dart';

class AddDeviceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Device Screen'),
      ),
      body: Center(
        child: Text(
          'Add Device Screen',
          textDirection: TextDirection.ltr,
        ),
      )
    );
  }
}