import 'package:aura/add_device_screen.dart';
import 'package:aura/ayla/AylaDevice.dart';
import 'package:aura/device_details.dart';
import 'package:aura/device_list_item.dart';
import 'package:flutter/material.dart';

class DeviceListScreen extends StatefulWidget {

  DeviceListScreen({Key key, this.devices}) : super(key: key);

  final List<AylaDevice> devices;

  @override
  _DeviceListScreenState createState() => _DeviceListScreenState();
}

class _DeviceListScreenState extends State<DeviceListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('TODO: to open drawer menu');
          },
        ),
        title: Text('Devices List'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              print('TODO: to replace search action');
            },
          ),
        ],
      ),

      body: widget.devices.isNotEmpty
          ? ListView(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              children: widget.devices.map((AylaDevice device) {
               return DeviceListItem(
                    device: device,
                    onTapped: (AylaDevice device) {
                     _navToDeviceDetailsScreen(context, device);
                   });
             }).toList())
          : Center(child: GestureDetector(
                    onTap: () => _navToAddDeviceScreen(context),
                    child: Text('Empty Device'),
      )),

      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: () {
          _navToAddDeviceScreen(context);
        },
      ),
    );
  }
}

void _navToDeviceDetailsScreen(BuildContext context, AylaDevice device) {
  Navigator.of(context).push(
      MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return DeviceDetails(device: device);
          }
      )
  );
}

void _navToAddDeviceScreen(BuildContext context) {
  Navigator.of(context).push(
      MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return AddDeviceScreen();
          }
      )
  );
}
