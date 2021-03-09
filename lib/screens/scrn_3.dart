import 'package:flutter/material.dart';
import 'package:intern_proj_1/screens/calender_screen.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Toolbar with Icon",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CalenderScreen(),
            mycard("arrived", w),
            mycard("delivered", w)
          ],
        ),
      ),
    );
  }

  Widget mycard(String choice, double w) {
    return Container(
      height: 180,
      child: Card(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
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
                width: w * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Refinance of Marin Lawrence",
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "A short description of order with some short text",
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey),
                    ),
                    if (choice == "arrived") SizedBox(height: 10),
                    if (choice == "arrived")
                      Text(
                        "2:30 PM",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.left,
                      )
                    // getAmount(125),
                  ],
                ),
              ),
              SizedBox(width: w * 0.035),
              Container(
                width: w * 0.25,
                child: Center(
                  child: Text(
                    "\$125",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Status",
                ),
                SizedBox(
                  width: 15,
                ),
                mybtn(choice),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: null,
                        child: Text(
                          "Change Status",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget mybtn(String choice) {
    return Container(
      padding: choice == "arrived" ? EdgeInsets.only(left: 20.0) : null,
      decoration: BoxDecoration(
        color: choice == "arrived" ? Colors.yellow[300] : Colors.indigo,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      height: 40,
      width: 130,
      child: Center(
        child: Text(
          choice == "arrived" ? "Arrived to Appointment" : "Delivered",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: choice == "arrived" ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
