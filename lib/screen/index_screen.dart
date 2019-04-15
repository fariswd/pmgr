import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Index Screen'),
      // ),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 30),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF0374BB),
                  Color(0xFF32A8B7),
                ],
              ),
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(30, 70, 30, 20),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Hi, Capung!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                          ),
                          Text(
                            'Kerja!!!!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: CircleAvatar(
                          child: Text('C'),
                          backgroundImage:
                              AssetImage('assets/image/capung.jpg'),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                        ),
                        width: 50.0,
                        height: 50.0,
                        padding: EdgeInsets.all(2.0), // borde width
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF), // border color
                          shape: BoxShape.circle,
                        ),
                      )
                    ],
                  ),
                ),
                ClipPath(
                  clipper: BottomClipper(),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(56),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFFDFDFD),
                          Color(0xFFEBF6F7),
                        ],
                      ),
                    ),
                    height: 280,
                    width: 340,
                    padding: EdgeInsets.all(35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/image/capung.jpg'),
                              radius: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Jumbo Dashboard',
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 3),
                                ),
                                Text(
                                  'First Privacy Assistance Platform',
                                  style: TextStyle(
                                      color: Colors.grey[800], fontSize: 13),
                                ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                        ),
                        Divider(height: 1),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 130,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'TEAMS',
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 12,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 3),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/image/kupu.jpg'),
                                        radius: 14,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 3),
                                      ),
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/image/kumbang.jpg'),
                                        radius: 14,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 3),
                                      ),
                                      CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Colors.grey[300],
                                        child: Text(
                                          '3+',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 130,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'YOUR TASK',
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 12,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.green,
                                        child:
                                            Icon(Icons.content_paste, size: 15),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 7),
                                      ),
                                      Text(
                                        '666',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 3),
                                      ),
                                      Text(
                                        'Tasks',
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Text('SOME WORM'),
                            ),
                            Column(
                              children: <Widget>[Text('EST DATE')],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            transform: Matrix4.translationValues(0.0, -20.0, 0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Container(
              child: Text('heloo'),
            ),
          )
        ],
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(15, size.height - 15);
    // path.lineTo(size.width - 15, size.height - 15);
    // path.lineTo(size.width - 15, 15);
    // path.lineTo(15, 15);
    // path.lineTo(15, size.height - 15);

    var firstControlPoint = Offset(size.width / 2, size.height);
    var firstEndPoint = Offset(size.width - 15, size.height - 15);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var firsthalfControlPoint = Offset(size.width / 2, size.height);
    var firsthalfEndPoint = Offset(size.width - 15, size.height - 15);
    path.quadraticBezierTo(firsthalfControlPoint.dx, firsthalfControlPoint.dy,
        firsthalfEndPoint.dx, firsthalfEndPoint.dy);

    var secondControlPoint = Offset(size.width, size.height / 2);
    var secondEndPoint = Offset(size.width - 15, 15);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint = Offset(size.width / 2, 0);
    var thirdEndPoint = Offset(15, 15);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    var fourthControlPoint = Offset(0, size.height / 2);
    var fourthEndPoint = Offset(15, size.height - 15);
    path.quadraticBezierTo(fourthControlPoint.dx, fourthControlPoint.dy,
        fourthEndPoint.dx, fourthEndPoint.dy);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
