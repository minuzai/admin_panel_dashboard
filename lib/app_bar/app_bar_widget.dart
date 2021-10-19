import 'package:admin_panel_dashboard/constants.dart';
import 'package:admin_panel_dashboard/responsive_layout.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.purpleLight,
      child: Row(
        children: [
          if (ResponsiveLayout.isComputer(context))
            Container(
              margin: EdgeInsets.all(Constants.kPadding),
              height: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                      blurRadius: 10),
                ],
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 30,
                child: Image.asset('images/cat.png'),
              ),
            ),
        ],
      ),
    );
  }
}
