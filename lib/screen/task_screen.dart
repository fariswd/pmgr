import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../component/header_content.dart';
import '../component/chart_work_hours.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  Widget task(name, status) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 1, color: Colors.grey[500]),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      status ? Color(0xFF37C5C7) : Colors.white,
                      status ? Color(0xFF1EB398) : Colors.white,
                    ],
                  ),
                ),
                padding: EdgeInsets.all(2),
                child: Icon(
                  Icons.check,
                  size: 15,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
              ),
              Text(
                name,
                style: TextStyle(
                  color: Colors.grey[600],
                  decoration:
                      status ? TextDecoration.lineThrough : TextDecoration.none,
                  fontSize: 16,
                ),
              )
            ],
          ),
          Icon(
            Icons.menu,
            color: Colors.grey[500],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF0374BB),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
            // height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.chevron_left,
                            size: 35,
                            color: Colors.grey[700],
                          ),
                          Text(
                            'Back',
                            style: TextStyle(
                                color: Colors.grey[700], fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      size: 35,
                      color: Colors.grey[700],
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/image/capung.jpg'),
                  radius: 25,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Text(
                  'Jumbo Dashboard',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Text(
                  'First Privacy Assistance Platform',
                  style: TextStyle(color: Colors.grey[800], fontSize: 13),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      headerContent(
                        'TEAMS',
                        () {
                          return Row(
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ],
                          );
                        },
                        width / 2 - 30,
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
                        width / 2 - 30,
                      ),
                    ],
                  ),
                ),
                Divider(height: 2),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Your Tasks',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                            ),
                          ),
                          Text(
                            '1/3 completed',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      task('Create user flow', true),
                      task('Create Wireframe', false),
                      task('Transform to High-fidelity', false),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Working Hours',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Week',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                              ),
                              Text(
                                'Month',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.trending_up,
                            color: Color(0xFF1DB395),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Text(
                              '0.6%',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF1DB395),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            'from prev. week',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[500],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  height: 200,
                  child: GroupedBarChart(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
