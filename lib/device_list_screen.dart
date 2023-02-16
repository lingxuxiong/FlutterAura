import 'package:aura/add_device_screen.dart';
import 'package:aura/ayla/AylaDevice.dart';
import 'package:aura/device_details.dart';
import 'package:aura/device_list_item.dart';
import 'package:flutter/material.dart';

class DeviceListScreen extends StatefulWidget {

  DeviceListScreen({required Key key, required this.devices}) : super(key: key);

  final List<AylaDevice> devices;

  @override
  _DeviceListScreenState createState() => _DeviceListScreenState();
}

class _DeviceListScreenState extends State<DeviceListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Devices List'),
        backgroundColor: Colors.lightGreen,
        leading: Builder(builder: (context) =>
            IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'menu',
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
        ),
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
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.add),
        onPressed: () {
          _navToAddDeviceScreen(context);
        },
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            DrawerHeader(
              child: Column(
                children: [
                  Text('Aura Engineering App'),
                  Image(
                      width: 96.0,
                      height: 96.0,
                      image: AssetImage('./assets/android_robot.png')),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
              ),
            ),

            ListTile(
              title: Text('Devices'),
            ),
            ListTile(
              title: Text('Devices List'),
              leading: Image(
                  width: 24.0,
                  height: 24.0,
                  image: AssetImage('./assets/ic_devices_black_48dp.png')),
              onTap: () {
                _closeDrawer(context);
              },
            ),
            ListTile(
              title: Text('Shares'),
              leading: Image(
                  width: 24.0,
                  height: 24.0,
                  image: AssetImage('./assets/ic_menu_share.png')),
              onTap: () {
                _closeDrawer(context);
              },
            ),
            ListTile(
              title: Text('Lan OTA'),
              leading: Image(
                  width: 24.0,
                  height: 24.0,
                  image: AssetImage('./assets/ic_menu_manage.png')),
              onTap: () {
                _closeDrawer(context);
              },
            ),
            ListTile(
              title: Text('OTA Updates'),
              leading: Image(
                  width: 24.0,
                  height: 24.0,
                  image: AssetImage('./assets/ic_menu_manage.png')),
              onTap: () {
                _closeDrawer(context);
              },
            ),


            ListTile(
              title: Text('Account'),
            ),
            ListTile(
              title: Text('Account Information'),
              leading: Image(
                  width: 24.0,
                  height: 24.0,
                  image: AssetImage('./assets/ic_menu_manage.png')),
              onTap: () {
                _closeDrawer(context);
              },
            ),
            ListTile(
              title: Text('Sign out'),
              leading: Image(
                  width: 24.0,
                  height: 24.0,
                  image: AssetImage('./assets/ic_exit_to_app_black_48dp.png')),
              onTap: () {
                _closeDrawer(context);
              },
            ),
            ListTile(
              title: Text('Delete Account'),
              leading: Image(
                  width: 24.0,
                  height: 24.0,
                  image: AssetImage('./assets/ic_menu_delete.png')),
              onTap: () {
                _closeDrawer(context);
              },
            ),

            ListTile(
              title: Text('Support'),
            ),
            ListTile(
              title: Text('Email logs'),
              leading: Image(
                  width: 24.0,
                  height: 24.0,
                  image: AssetImage('./assets/ic_menu_manage.png')),
              onTap: () {
                _closeDrawer(context);
              },
            ),
            ListTile(
              title: Text('About'),
              leading: Image(
                  width: 24.0,
                  height: 24.0,
                  image: AssetImage('./assets/ic_menu_info_details.png')),
              onTap: () {
                _closeDrawer(context);
              },
            ),

            ListTile(
              title: Text('Settings'),
            ),
            ListTile(
              title: Text('App Settings'),
              leading: Image(
                  width: 24.0,
                  height: 24.0,
                  image: AssetImage('./assets/ic_menu_manage.png')),
              onTap: () {
                _closeDrawer(context);
              },
            ),
          ],
        ),
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
