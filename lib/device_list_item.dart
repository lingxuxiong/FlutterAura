import 'package:aura/ayla/AylaDevice.dart';
import 'package:flutter/material.dart';

typedef void OnDeviceTappedCallback(AylaDevice device);

class DeviceListItem extends StatelessWidget {

  DeviceListItem({
    this.device,
    this.onTapped,
  }) : super(key: ObjectKey(device));

  final AylaDevice device;
  final OnDeviceTappedCallback onTapped;

  Color _getColor(BuildContext context) {
    return device.online ? Colors.lightGreen : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTapped(device);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(device.name[0]),
      ),
      title: Text(device.dsn),
    );
  }
}
