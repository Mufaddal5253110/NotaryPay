import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "My Notary Pay",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              child: Card(
                margin: EdgeInsets.all(13.0),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    width: w * 0.9,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: w * 0.12,
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/img/wallet.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width: w * 0.4,
                                  child: Text(
                                    "Total Earnings",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  ": \$3500",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: w * 0.4,
                                  child: Text(
                                    "Pending Payout",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  ": \$400",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
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
                      width: w * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          getTitle(),
                          getSubtitle(),
                          getAmount(125),
                        ],
                      ),
                    ),
                    SizedBox(width: w * 0.035),
                    Container(
                      width: w * 0.25,
                      child: btn("paid"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
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
                      width: w * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          getTitle(),
                          getSubtitle(),
                          getAmount(50),
                        ],
                      ),
                    ),
                    SizedBox(width: w * 0.035),
                    Container(
                      width: w * 0.25,
                      child: btn("paid"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
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
                      width: w * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          getTitle(),
                          getSubtitle(),
                          getAmount(50),
                        ],
                      ),
                    ),
                    SizedBox(width: w * 0.035),
                    Container(
                      width: w * 0.25,
                      child: btn("pending"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
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
                      width: w * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          getTitle(),
                          getSubtitle(),
                          getAmount(50),
                        ],
                      ),
                    ),
                    SizedBox(width: w * 0.035),
                    Container(
                      width: w * 0.25,
                      child: btn("dispute"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getTitle() {
    return Text(
      "Refinance of Marin Lawrence",
      maxLines: 1,
      textAlign: TextAlign.left,
    );
  }

  Widget getSubtitle() {
    return Text(
      "A short description of order with some short text",
      textAlign: TextAlign.left,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(color: Colors.grey),
    );
  }

  Widget getAmount(int amt) {
    return Text(
      "\$${amt}",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      textAlign: TextAlign.left,
    );
  }

  Widget btn(String choice) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: getBtnColor(choice),
      ),
      height: 50,
      width: 70,
      child: Center(
        child: getBtnContent(choice),
      ),
      // color: getBtnColor(choice),
    );
  }

  Widget getBtnContent(String choice) {
    switch (choice) {
      case "paid":
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Paid",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Jan 11,2012",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 12,
              ),
            )
          ],
        );
        break;
      case "pending":
        return Text(
          "Pending",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        );
        break;
      case "dispute":
        return Text(
          "Dispute",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        );
        break;
      default:
        break;
    }
  }

  Color getBtnColor(String choice) {
    switch (choice) {
      case "paid":
        return Colors.indigo;
        break;
      case "pending":
        return Colors.yellow;
        break;
      case "dispute":
        return Colors.orange;
        break;
      default:
        break;
    }
  }
}
