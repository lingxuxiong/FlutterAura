import 'package:aura/add_device_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Add Device Screen',
    home: DevicesListScreen(),
  ));
}

class DevicesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Show Navigation Drawer',
          onPressed: () {
            print('TODO: to open drawer menu');
          },
        ),
        title: Text('Devices List Screen'),
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
      // body is the majority of the screen.
      body: Center(
        child: GestureAwarenessButton(),
      ),
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

class GestureAwarenessButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (){
        _navToAddDeviceScreen(context);
      },
      child: Text('No devices found')
    );
  }
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

