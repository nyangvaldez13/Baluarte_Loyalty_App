import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class StampPainter extends CustomPainter {
  final bool isFilled;

  StampPainter({required this.isFilled});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.black
      ..style = isFilled ? PaintingStyle.fill : PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final Path path = Path();

    // Draw the glass shape
    path.moveTo(size.width * 0.25, size.height * 0.1);
    path.lineTo(size.width * 0.75, size.height * 0.1);
    path.lineTo(size.width * 0.75, size.height * 0.9);
    path.lineTo(size.width * 0.25, size.height * 0.9);
    path.lineTo(size.width * 0.25, size.height * 0.1);

    // Draw the top part of the glass
    path.moveTo(size.width * 0.35, size.height * 0.1);
    path.lineTo(size.width * 0.65, size.height * 0.1);

    // Draw the bottom part of the glass
    path.moveTo(size.width * 0.35, size.height * 0.9);
    path.lineTo(size.width * 0.65, size.height * 0.9);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class LoyaltyPage extends StatelessWidget {
  const LoyaltyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    String loyaltyUser = 'John Doe';
    String loyaltyCardNumber = '123456789';
    String expirationDate = '05-31-2023';

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
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
                              color:
                                  Colors.blue, // Replace with your logo color
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
                                  ' Your Total Visits',
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
                                    Padding(
                                      padding: EdgeInsets.only(left: 3.0),
                                      child: Text(
                                        '2',
                                        style: TextStyle(
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                      padding: EdgeInsets.only(bottom: 6.0),
                                      child: SizedBox(
                                        width:
                                            130.0, // Specify the desired width here
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            color: Colors.black,
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              // Add your button action here
                                            },
                                            child: Text(
                                              'Scan Receipt',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
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
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Divider(
                        thickness: 3,
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PROFILE',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              // Add any other desired styles
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'Loyalty User: ',
                                style: TextStyle(
                                  fontSize: 16,
                                  // Add any other desired styles
                                ),
                              ),
                              Text(
                                loyaltyUser,
                                style: TextStyle(
                                  fontSize: 16,
                                  // Add any other desired styles
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                'Loyalty Card Number: ',
                                style: TextStyle(
                                  fontSize: 16,
                                  // Add any other desired styles
                                ),
                              ),
                              Text(
                                loyaltyCardNumber,
                                style: TextStyle(
                                  fontSize: 16,
                                  // Add any other desired styles
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5), // Add margin between data

                          Row(
                            children: [
                              Text(
                                'Expiration Date: ',
                                style: TextStyle(
                                  fontSize: 16,
                                  // Add any other desired styles
                                ),
                              ),
                              Text(
                                expirationDate,
                                style: TextStyle(
                                  fontSize: 16,
                                  // Add any other desired styles
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    /*Column(
                      children: [*/
                    SizedBox(height: 8),
                    Container(
                      height: 200, // Set the desired height
                      margin: EdgeInsets.all(16.0), // Set the desired margin
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 30.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomPaint(
                                    size: Size(40, 40),
                                    painter: StampPainter(isFilled: true),
                                  ),
                                  CustomPaint(
                                    size: Size(40, 40),
                                    painter: StampPainter(isFilled: true),
                                  ),
                                  CustomPaint(
                                    size: Size(40, 40),
                                    painter: StampPainter(isFilled: false),
                                  ),
                                  CustomPaint(
                                    size: Size(40, 40),
                                    painter: StampPainter(isFilled: false),
                                  ),
                                  CustomPaint(
                                    size: Size(40, 40),
                                    painter: StampPainter(isFilled: false),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomPaint(
                                    size: Size(40, 40),
                                    painter: StampPainter(isFilled: false),
                                  ),
                                  CustomPaint(
                                    size: Size(40, 40),
                                    painter: StampPainter(isFilled: false),
                                  ),
                                  CustomPaint(
                                    size: Size(40, 40),
                                    painter: StampPainter(isFilled: false),
                                  ),
                                  CustomPaint(
                                    size: Size(40, 40),
                                    painter: StampPainter(isFilled: false),
                                  ),
                                  CustomPaint(
                                    size: Size(40, 40),
                                    painter: StampPainter(isFilled: false),
                                  ),
                                ],
                                //),
                                //],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 16.0),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Refer a friend',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.all(16.0), // Adjust the margin as needed
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          // Add border color and width
                          side: BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width:
                                          16.0), // Add spacing between image and content
                                  // Right Content
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height:
                                                8.0), // Add spacing between title and description
                                        Text(
                                          'Share your code, and your card will be marked as 1 visit for every 5 of your friends that marks their first visit.',
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
                            Container(
                              height: 60,
                              margin: EdgeInsets.all(15.0),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'ABC123', // Replace with your code
                                              style: TextStyle(fontSize: 14.0),
                                            ),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.copy),
                                            iconSize: 16,
                                            onPressed: () {
                                              String code =
                                                  'ABC123'; // Replace with your code
                                              Clipboard.setData(
                                                  ClipboardData(text: code));
                                              final snackBar = SnackBar(
                                                content: Text(
                                                    'Code copied to clipboard'),
                                              );
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(snackBar);
                                            },
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
