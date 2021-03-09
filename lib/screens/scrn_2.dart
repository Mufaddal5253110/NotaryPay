import 'dart:ui';

import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = new TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        bottom: new TabBar(
          tabs: <Widget>[
            new Tab(
              child: Text(
                "In Progress",
                style: TextStyle(color: Colors.black),
              ),
            ),
            new Tab(
              child: Text(
                "Completed",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
          controller: tabController,
        ),
      ),
      body: new TabBarView(
        children: <Widget>[
          new NewPage(),
          new NewPage2(),
        ],
        controller: tabController,
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return progressDetail(w);
        },
        itemCount: 5,
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return completeDetail(w);
        },
        itemCount: 3,
      ),
    );
  }
}

Widget progressDetail(double w) {
  return Container(
    height: 135,
    child: Card(
      child: Row(
        children: <Widget>[
          SizedBox(width: w * 0.030),
          Container(
            width: w * 0.12,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image(
                height: 50,
                image: AssetImage('assets/img/myimg.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: w * 0.045),
          Container(
            width: w * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Refinance of Marin Lawrence",
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5),
                Container(
                  width: w * 0.45,
                  child: Text(
                    "A short description of order with some short text",
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Text(
                  "order placed At: Jan 11, 2021, 3:345 PM",
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget completeDetail(double w) {
  return Container(
    height: 135,
    child: Card(
      child: Row(
        children: <Widget>[
          SizedBox(width: w * 0.030),
          Container(
            width: w * 0.12,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image(
                height: 50,
                image: AssetImage('assets/img/myimg.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: w * 0.045),
          Container(
            width: w * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Refinance of Marin Lawrence",
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5),
                Container(
                  width: w * 0.45,
                  child: Text(
                    "A short description of order with some short text",
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Text(
                  "order placed At: Jan 11, 2021, 3:345 PM",
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 5),
                Text(
                  "Delievered At: Jan 12, 2021, 10:30 AM",
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
