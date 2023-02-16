import 'package:aura/ayla/AylaDevice.dart';
import 'package:flutter/material.dart';

typedef void OnDeviceTappedCallback(AylaDevice device);

class DeviceListItem extends StatelessWidget {

  DeviceListItem({
    required this.device,
    required this.onTapped,
  }) : super(key: ObjectKey(device));

  final AylaDevice device;
  final OnDeviceTappedCallback onTapped;

  Color _getColor(BuildContext context) {
    return device.online ? Colors.lightGreen : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(device.dsn),
      leading: device.online
          ? Image(
              image: AssetImage('./assets/ic_cloud_circle_black_24dp.png'),
              color: _getColor(context),
              colorBlendMode: BlendMode.srcATop)
          : Image(
              image: AssetImage('./assets/ic_cloud_off_black_24dp.png'),
              color: _getColor(context),
              colorBlendMode: BlendMode.srcATop),
      onTap: () {
        onTapped(device);
      },
    );
  }
}
