import 'package:flutter/material.dart';

import 'ayla/AylaDevice.dart';

class DeviceDetails extends StatelessWidget {

  final AylaDevice device;

  DeviceDetails({
    this.device,
  }) : super(key: ObjectKey(device));

  Color _getColor(BuildContext context) {
    return device.online ? Colors.black54 : Theme.of(context).primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Device Details'),
      ),

      body: ListTile(
        leading: CircleAvatar(
          backgroundColor: _getColor(context),
          child: Text(device.name[0]),
        ),
        title: Text(device.name),
        subtitle: Text(device.dsn),
    ));
  }
}