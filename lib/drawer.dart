import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Actualiza el estado de la aplicación
              // ...
              // Luego cierra el drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // // Actualiza el estado de la aplicación
              // ...
              // Luego cierra el drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
 