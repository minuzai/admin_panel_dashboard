import 'package:admin_panel_dashboard/app_bar/app_bar_widget.dart';
import 'package:admin_panel_dashboard/drawer/drawer_page.dart';
import 'package:admin_panel_dashboard/panel_center/panel_center_page.dart';
import 'package:admin_panel_dashboard/panel_left/panel_left_page.dart';
import 'package:admin_panel_dashboard/panel_right/panel_right_page.dart';
import 'package:flutter/material.dart';

import 'package:admin_panel_dashboard/responsive_layout.dart';

class WidgetTree extends StatefulWidget {
  @override
  _WidgetTreeState createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: ResponsiveLayout.isTiny(context) ||
                ResponsiveLayout.isTinyHeight(context)
            ? Container()
            : AppBarWidget(),
        preferredSize: Size(double.infinity, 100),
      ),
      body: ResponsiveLayout(
        tiny: Container(),
        phone: PanelCenterPage(),
        tablet: Row(children: [
          Expanded(child: PanelLeftPage()),
          Expanded(child: PanelCenterPage()),
        ]),
        largeTablet: Row(children: [
          Expanded(child: PanelLeftPage()),
          Expanded(child: PanelCenterPage()),
          Expanded(child: PanelRightPage()),
        ]),
        computer: Row(children: [
          Expanded(child: DrawerPage()),
          Expanded(child: PanelLeftPage()),
          Expanded(child: PanelCenterPage()),
          Expanded(child: PanelRightPage()),
        ]),
      ),
      drawer: DrawerPage(),
    );
  }
}
