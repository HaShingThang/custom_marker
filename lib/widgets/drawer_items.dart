import 'package:flutter/material.dart';

Widget drawerItem(BuildContext context, {drawerWidth, padding, fontSize}) {
  return Drawer(
    width: MediaQuery.of(context).size.width * drawerWidth,
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          child: Text(
            'Navigation Drawer',
            style: TextStyle(fontSize: 24),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        listTitle(context, "Item One", () {
          Navigator.pop(context);
        }, padding, fontSize),
        listTitle(context, "Item Two", () {
          Navigator.pop(context);
        }, padding, fontSize),
        listTitle(context, "Item Three", () {
          Navigator.pop(context);
        }, padding, fontSize),
        listTitle(context, "Item Four", () {
          Navigator.pop(context);
        }, padding, fontSize)
      ],
    ),
  );
}

Widget listTitle(BuildContext context, title, onTap, padding, fontSize) {
  return ListTile(
    contentPadding: EdgeInsets.only(left: padding),
    title: Text(
      title,
      style: TextStyle(fontSize: fontSize),
    ),
    onTap: onTap,
  );
}
