import 'package:baluarte_loyalty_app/baluarte_rewards/redeem_b.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class ExclusivesPage extends StatefulWidget {
  const ExclusivesPage({Key? key}) : super(key: key);

  @override
  _ExclusivesPageState createState() => _ExclusivesPageState();
}

class _ExclusivesPageState extends State<ExclusivesPage> {
  bool _showNotifier = false;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text('Baluarte Exclusives'),
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
        body: Stack(children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 16.0),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Baluarte Points',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RedeemPage()),
                              );
                            },
                            child: Text(
                              'See all rewards',
                              style: TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, size: 12),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: LinearProgressIndicator(
                        value: 0.25, // Replace with actual progress value
                        minHeight: 18,
                        backgroundColor: Colors.grey[200],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '25 points',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '50 points',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '100 points',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 26.0),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _showNotifier = true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 14.0),
                          ),
                          child: Text(
                            'Scan Receipt',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Divider(
                      // Add this line
                      color: Colors.grey, // Customize the color of the divider
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 16.0),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Daily Promos',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            'See all promos',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, size: 12),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 190.0, // Adjust the height as needed
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                // Add border color and width
                                side:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Title',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                              height:
                                                  8.0), // Add spacing between title and description
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 23.0),
                                            child: Text(
                                              'Description',
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            6.0), // Add spacing between content and image
                                    Padding(
                                      padding: const EdgeInsets.only(top: 16.0),
                                      child: Container(
                                        width: 84.0,
                                        height: 114.0,
                                        color: Colors
                                            .grey, // Replace with your image
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0), // Add spacing between cards
                        Expanded(
                          child: Container(
                            height: 190.0, // Adjust the height as needed
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                // Add border color and width
                                side:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Title',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                              height:
                                                  8.0), // Add spacing between title and description
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 23.0),
                                            child: Text(
                                              'Description',
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            6.0), // Add spacing between content and image
                                    Padding(
                                      padding: const EdgeInsets.only(top: 16.0),
                                      child: Container(
                                        width: 84.0,
                                        height: 114.0,
                                        color: Colors
                                            .grey, // Replace with your image
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 16.0),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Event Today',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        // Add border color and width
                        side: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            // Left Image
                            Container(
                              width: 120.0,
                              height: 140.0,
                              color: Colors.grey, // Replace with your image
                            ),
                            SizedBox(
                                width:
                                    16.0), // Add spacing between image and content
                            // Right Content
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Title',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          8.0), // Add spacing between title and description
                                  Text(
                                    'Description',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  SizedBox(
                                      height:
                                          8.0), // Add spacing between description and button
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          if (_showNotifier)
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
          if (_showNotifier)
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 80),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Baluarte Exclusives would like to access the camera',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _showNotifier = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 3, 0, 0),
                            ),
                            child: Text('Cancel'),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your button click logic here to access camera
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 0, 0, 0),
                            ),
                            child: Text('Allow'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ]));
  }
}
