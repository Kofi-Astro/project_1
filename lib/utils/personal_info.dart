import 'package:flutter/material.dart';
import 'package:project_1/pages/about.dart';
import 'package:project_1/pages/payment.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  Widget divider() {
    return Divider(
      color: Colors.black12,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountEmail: Text('opokukelvin29@gmail.com'),
            accountName: Text('Opoku Kelvin'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/kay.jpg'),
            ),
            decoration: BoxDecoration(color: Theme.of(context).accentColor),
          ),
          ListTile(
              leading: Icon(Icons.payment),
              title: Text('Payment & Wallet'),
              onTap: () {
                Navigator.of(context).pushNamed('/payment');
              }),
          divider(),
          ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Trip history'),
              onTap: () {}),
          divider(),
          ListTile(
              leading: Icon(Icons.label_outlined),
              title: Text('Promotion'),
              onTap: () {}),
          divider(),
          ListTile(
              leading: Icon(Icons.support),
              title: Text('Support'),
              onTap: () {}),
          divider(),
          ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
              }),
          divider(),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Navigator.of(context).pushNamed('/about');
            },
          ),
        ],
      ),
    );
  }
}
