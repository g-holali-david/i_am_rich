import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Center(
          child: Text(
            "I Am Rich",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Image(image: AssetImage('images/diamond_2.png')),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                width: 150,
                height: 150,
                image: AssetImage('images/logo.png'),
              ),
              Container(
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                width: 250,
                height: 250,
                color: Colors.white,
                child: Stack(
                  children: [
                    CustomPaint(
                      painter: MyPaint(),
                    ),
                    Positioned(
                      top: 50,
                      left: 50,
                      child: Image(
                        width: 150,
                        height: 150,
                        image: AssetImage('images/diamond_2.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ),
  ));
}

class MyPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var orgine = Offset(50, 200);
    var p1 = Offset(200, 200);
    var p2 = Offset(200, 50);

    var p3 = Offset(50, 50);

    var l1 = Offset(70, 180);
    var l2 = Offset(180, 180);

    var o = Offset(size.width / 3, size.height / 2);

    //var p2 = Offset(50, 200);

    var paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;

    var paint2 = Paint()
      ..color = Colors.blueGrey
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;

    var paint3 = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill
      ..strokeWidth = 3;

    var paint4 = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill
      ..strokeWidth = 3;

    canvas.drawCircle(o, 10.0, paint4);

    canvas.drawLine(orgine, p1, paint);
    canvas.drawLine(p1, p2, paint);
    canvas.drawLine(p2, p3, paint);
    canvas.drawLine(p3, orgine, paint);

    canvas.drawLine(l1, l2, paint3);

    canvas.drawCircle(orgine, 10.0, paint2);
    canvas.drawCircle(p1, 10.0, paint2);
    canvas.drawCircle(p2, 10.0, paint2);
    canvas.drawCircle(p3, 10.0, paint2);

    canvas.drawCircle(l1, 7.0, paint3);
    canvas.drawCircle(l2, 7.0, paint3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
