import 'package:flutter/material.dart';
import '../responsive.dart';
import 'drawer_items.dart';

Widget responsiveDrawer(BuildContext context) {
  return Responsive.isSmall(context)
      ? drawerItem(context, drawerWidth: 0.8, padding: 10, fontSize: 16)
      : Responsive.isMedium(context)
          ? drawerItem(context, drawerWidth: 0.6, padding: 20, fontSize: 16)
          : drawerItem(context, drawerWidth: 0.4, padding: 30, fontSize: 26);
}
