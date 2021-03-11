import 'package:aura/ayla/AylaDevice.dart';
import 'package:aura/device_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Aura App',
    home: DeviceListScreen(
      devices: <AylaDevice>[
        AylaDevice(dsn: 'AC0000W00001', name: 'Device1', online: true),
        AylaDevice(dsn: 'AC0000W00002', name: 'Device2', online: false),
        AylaDevice(dsn: 'AC0000W00003', name: 'Device3', online: true),
      ],
    ),
  ));
}