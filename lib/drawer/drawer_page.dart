import 'package:admin_panel_dashboard/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:admin_panel_dashboard/constants.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Constants.kPadding),
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Admin Menu',
                style: TextStyle(color: Colors.white),
              ),
              trailing: ResponsiveLayout.isComputer(context)
                  ? null
                  : IconButton(
                      icon: Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
