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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            DrawerHeader(
              child: Text('Aura Engineering App'),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
              ),
            ),

            ListTile(
              title: Text('Devices'),
            ),
            ListTile(
              leading: Image(
                  width: 24.0,
                  height: 24.0,
                  image: AssetImage('./assets/ic_devices_black_48dp.png')),
              title: Text('Devices List'),
              onTap: () {
                _closeDrawer(context);
              },
            ),
            ListTile(
              title: Text('Shares'),
              onTap: () {
                _closeDrawer(context);
              },
            ),
            ListTile(
              title: Text('Lan OTA'),
              onTap: () {
                _closeDrawer(context);
              },
            ),
            ListTile(
              title: Text('OTA Updates'),
              onTap: () {
                _closeDrawer(context);
              },
            ),


            ListTile(
              title: Text('Account'),
            ),
            ListTile(
              title: Text('Account Information'),
              onTap: () {
                _closeDrawer(context);
              },
            ),
            ListTile(
              title: Text('Sign out'),
              onTap: () {
                _closeDrawer(context);
              },
            ),
            ListTile(
              title: Text('Delete Account'),
              onTap: () {
                _closeDrawer(context);
              },
            ),

            ListTile(
              title: Text('Support'),
            ),
            ListTile(
              title: Text('Email logs'),
              onTap: () {
                _closeDrawer(context);
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                _closeDrawer(context);
              },
            ),
          ],
        ),
      ),

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

void _openDrawer() {

}

void _closeDrawer(BuildContext context) {
  Navigator.pop(context);
}
