import 'package:admin_panel_dashboard/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:admin_panel_dashboard/constants.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class ButtonsInfo {
  String title;
  IconData icon;

  ButtonsInfo({required this.title, required this.icon});
}

int _currentIndex = 0;

List<ButtonsInfo> _buttonNames = [
  ButtonsInfo(title: 'Home', icon: Icons.home),
];

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
            ...List.generate(
              _buttonNames.length,
              (index) => Column(
                children: [
                  Container(
                    decoration: index == _currentIndex
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Constants.redDark.withOpacity(0.9),
                                Constants.orangeDark.withOpacity(0.9),
                              ],
                            ),
                          )
                        : null,
                    child: ListTile(
                      title: Text(
                        _buttonNames[index].title,
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: Padding(
                        padding: const EdgeInsets.all(Constants.kPadding),
                        child: Icon(
                          _buttonNames[index].icon,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 0.1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
