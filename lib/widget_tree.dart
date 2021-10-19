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
            : AppBar(),
        preferredSize: Size(double.infinity, 100),
      ),
      body: ResponsiveLayout(
        tiny: Container(),
        phone: Container(),
        tablet: Container(),
        largeTablet: Container(),
        computer: Container(),
      ),
    );
  }
}
