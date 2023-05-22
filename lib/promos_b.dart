import 'package:flutter/material.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({Key? key}) : super(key: key);
  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baluarte Promos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'PROMOS',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }*/
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Baluarte Promos'),
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
              leading: Icon(Icons.account_circle),
              title: Text('Sign in'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.stars),
              title: Text('Rewards'),
              onTap: () {},
            ),
          ],
        ),
      )),
      body: Center(
        child: Text('PROMOS'),
      ),
    );
  }
}
