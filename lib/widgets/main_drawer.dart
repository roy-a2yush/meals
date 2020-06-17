import 'package:flutter/material.dart';

import '../screens/tabs_screen.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            fontSize: 24),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontSize: 30, color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(height: 10),
          buildListTile(
            'Meals',
            Icons.restaurant,
            () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => TabsScreen(),
                ),
              );
            },
          ),
          SizedBox(height: 10),
          buildListTile(
            'Filters',
            Icons.settings,
            () {
              Navigator.pushReplacementNamed(context, FiltersScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
