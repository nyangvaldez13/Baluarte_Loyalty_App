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
                    /*Column(
                      children: [*/
                    SizedBox(height: 16),
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
                    )
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
