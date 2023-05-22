import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text(' '),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
          child: Container(
        margin: EdgeInsets.only(top: 40),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text('Account Settings'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Log out'),
              onTap: () {},
            ),
          ],
        ),
      )),
      body: Center(
        child: Text('Account Page'),
      ),
    );
  }
}
