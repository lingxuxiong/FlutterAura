import 'package:flutter/material.dart';

class AddDeviceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Device'),
      ),
      body: Center(
        child: Text(
          'Add New Device',
          textDirection: TextDirection.ltr,
        ),
      )
    );
  }
}