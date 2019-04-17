import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:carousel_slider/carousel_slider.dart';

import './component/clipper.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int _current = 0;
  var data = [0.0, 5.0, 2.0, 4.0, 3.0, 8.0, 10.0];

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Widget headerContent(title, content) {
    return Container(
      width: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 12,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
          ),
          content(),
        ],
      ),
    );
  }

  Widget headerGreeting() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
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
                "Let's get work done",
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
              backgroundImage: AssetImage('assets/image/capung.jpg'),
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
    );
  }

  Widget headerBox() {
    return ClipPath(
      clipper: Clipper(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(43.5),
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
        height: 260,
        width: 330,
        padding: EdgeInsets.fromLTRB(35, 35, 20, 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/image/capung.jpg'),
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
                      style: TextStyle(color: Colors.grey[800], fontSize: 13),
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
                headerContent(
                  'TEAMS',
                  () {
                    return Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/image/kupu.jpg'),
                          radius: 14,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3),
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/image/kumbang.jpg'),
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
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                headerContent(
                  'YOUR TASK',
                  () {
                    return Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.green,
                          child: Icon(Icons.content_paste, size: 15),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7),
                        ),
                        Text(
                          '666',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3),
                        ),
                        Text(
                          'Tasks',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                headerContent(
                  'GRAPHIC',
                  () {
                    return Container(
                      height: 25,
                      width: 105,
                      child: Sparkline(
                        data: data,
                        lineWidth: 5.0,
                        lineGradient: new LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xFFE5788C), Color(0xFFFFC195)],
                        ),
                        pointsMode: PointsMode.last,
                        pointSize: 10.0,
                        pointColor: Colors.amber,
                      ),
                    );
                  },
                ),
                headerContent(
                  'EST. DATE',
                  () {
                    return Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.red[300],
                          child: Icon(
                            Icons.folder_open,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7),
                        ),
                        Text(
                          'Mar 30, 2019',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget progressBox(title, progress, iconName, boxColorStart, boxColorEnd) {
    return ClipPath(
      clipper: Clipper(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(43.5),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              boxColorStart,
              boxColorEnd,
            ],
          ),
        ),
        height: 120,
        width: 120,
        padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 20.0,
              left: 50.0,
              right: 0.0,
              child: Icon(
                iconName,
                size: 50,
                color: Color(0x77FFFFFF),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(
                  progress.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget summary() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 15),
            child: Text(
              'Task Summary',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              progressBox(
                'Complete',
                86,
                Icons.done_all,
                Color(0xFF3DC9D2),
                Color(0xFF1CB293),
              ),
              progressBox(
                'On Progress',
                16,
                Icons.settings,
                Color(0xFFFFA464),
                Color(0xFFFD7B5B),
              ),
              progressBox(
                'OverDue',
                0,
                Icons.report_problem,
                Color(0xFFFC888F),
                Color(0xFFE059A3),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'On-time Completion Rate',
                      style: TextStyle(color: Colors.grey[800], fontSize: 16),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '99%',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                        Icon(
                          Icons.trending_up,
                          color: Color(0xFF1DB395),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2.0),
                          child: Text(
                            '0.6%',
                            style: TextStyle(
                                color: Color(0xFF1DB395),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 45,
                  width: 150,
                  child: Sparkline(
                    data: data,
                    lineWidth: 5.0,
                    lineGradient: new LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFE5788C), Color(0xFFFFC195)],
                    ),
                    pointsMode: PointsMode.last,
                    pointSize: 10.0,
                    pointColor: Colors.amber,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    List headerList = [0, 1, 2, 3];
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            // padding: EdgeInsets.only(bottom: 30),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF0374BB),
                  Color(0xFF32A8B7),
                  Colors.teal,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                headerGreeting(),
                CarouselSlider(
                  height: 260,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                  items: headerList.map((index) => headerBox()).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: headerList.map(
                    (index) {
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 2.0,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? Color(0xFFCDEBEE)
                              : Color(0xFF64C7C8),
                        ),
                      );
                    },
                  ).toList(),
                ),
                summary(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(width: 2, color: Colors.grey[200])
          )
        ),
        height: 68,
        child: TabBar(
          labelPadding: EdgeInsets.only(top: 4),
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Color(0xFFBEC6D0),
          labelColor: Color(0xFF1FB499),
          // unselectedLabelStyle: TextStyle(color: Color(0xFFBEC6D0)),
          controller: tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 32,
              ),
              child: Container(
                transform: Matrix4.translationValues(0.0, -5.0, 0.0),
                child: Text('Home'),
              ),
            ),
            Tab(
              icon: Icon(Icons.query_builder),
              child: Container(
                transform: Matrix4.translationValues(0.0, -5.0, 0.0),
                child: Text('Task'),
              )
            ),
            Tab(
              icon: Icon(Icons.chat_bubble_outline),
              child: Container(
                transform: Matrix4.translationValues(0.0, -5.0, 0.0),
                child: Text('Chat'),
              )
            ),
            Tab(
              icon: Icon(Icons.apps),
              child: Container(
                transform: Matrix4.translationValues(0.0, -5.0, 0.0),
                child: Text('Menu'),
              )
            )
          ],
        ),
      ),
    );
  }
}
