import 'package:baluarte_loyalty_app/baluarte_rewards/exclusives_b.dart';
import 'package:baluarte_loyalty_app/baluarte_rewards/redeem_b.dart';
import 'package:flutter/material.dart';

class ClaimedPage extends StatelessWidget {
  const ClaimedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Baluarte Rewards'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExclusivesPage(),
              ),
            );
          },
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 16.0,
                      bottom: 16,
                      left: 36,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 26.0),
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue, // Replace with your logo color
                          ),
                          // Add your logo image here instead of the colored container
                          // child: Image.asset('path_to_your_logo'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 21.0, top: 8), // Set the left margin
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Total Points Earned',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '25',
                                    style: TextStyle(
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 8.0),
                                  Container(
                                    height: 40.0,
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 8.0),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      'Redeem now!',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
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
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RedeemPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Redeem',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  // Add your button click logic here
                                },
                                child: Text(
                                  'Earn',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  // Add your button click logic here
                                },
                                child: Text(
                                  'How it works',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
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
                                        onPressed: null,
                                        child: Text('Redeemed'),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Text(
                                          'mm-dd-yyyy',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
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
                                        onPressed: null,
                                        child: Text('Redeemed'),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Text(
                                          'mm-dd-yyyy',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
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
                                        onPressed: null,
                                        child: Text('Redeemed'),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Text(
                                          'mm-dd-yyyy',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
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
                                        onPressed: null,
                                        child: Text('Redeemed'),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Text(
                                          'mm-dd-yyyy',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
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
                                        onPressed: null,
                                        child: Text('Redeemed'),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Text(
                                          'mm-dd-yyyy',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
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
        ],
      ),
    );
  }
}
