import 'package:baluarte_loyalty_app/baluarte_rewards/register_b.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class RewardPage extends StatefulWidget {
  const RewardPage({Key? key}) : super(key: key);

  @override
  _RewardPageState createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  bool _showNotifier = true;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Baluarte Rewards'),
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
      body: Stack(
        children: [
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
                        Text(
                          'See all rewards',
                          style: TextStyle(
                            fontSize: 12,
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
                          // Add your onPressed logic here
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 1),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Redeem',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Earn',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'How it works',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        width: double.infinity,
                        child: Divider(
                          thickness: 3,
                        ),
                      ),
                      // Cards
                      SizedBox(
                          height:
                              28.0), // Add spacing between the lines and cards
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
                                width: 100.0,
                                height: 110.0,
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
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                              8.0), // Adjust the top margin as needed
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            _showNotifier = true;
                                          });
                                        },
                                        child: Text('Redeem'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Card2
                      SizedBox(
                          height:
                              28.0), // Add spacing between the lines and cards
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
                                width: 100.0,
                                height: 110.0,
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
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                              8.0), // Adjust the top margin as needed
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            _showNotifier = true;
                                          });
                                        },
                                        child: Text('Redeem'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Card3
                      SizedBox(
                          height:
                              28.0), // Add spacing between the lines and cards
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
                                width: 100.0,
                                height: 110.0,
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
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                              8.0), // Adjust the top margin as needed
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            _showNotifier = true;
                                          });
                                        },
                                        child: Text('Redeem'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Card4
                      SizedBox(
                          height:
                              28.0), // Add spacing between the lines and cards
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
                                width: 100.0,
                                height: 110.0,
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
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                              8.0), // Adjust the top margin as needed
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            _showNotifier = true;
                                          });
                                        },
                                        child: Text('Redeem'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Card5
                      SizedBox(
                          height:
                              28.0), // Add spacing between the lines and cards
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
                                width: 100.0,
                                height: 110.0,
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
                                    Container(
                                      margin: EdgeInsets.only(
                                          top:
                                              8.0), // Adjust the top margin as needed
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            _showNotifier = true;
                                          });
                                        },
                                        child: Text('Redeem'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Blurry background
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
                      'Would you like to join the Baluarte Exclusives to access rewards?',
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterPage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 0, 0, 0),
                            ),
                            child: Text('Join Now'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
