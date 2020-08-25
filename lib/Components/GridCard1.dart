import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class GridCard1 extends StatefulWidget {
  @override
  _GridCard1State createState() => _GridCard1State();
}

class _GridCard1State extends State<GridCard1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/2.png"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.white,
                  width: 8,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              // color: Colors.limeAccent,
              alignment: Alignment.bottomCenter,
              height: 200,
              width: 300,
              child: RaisedButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => Center(child: openurl()),
                ),
                color: Color(0XFFFF0000),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Signup for the live session ',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 300,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.pink,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.label_important, size: 70),
                      title: Text('What you will',
                          style: TextStyle(color: Colors.white)),
                      subtitle:
                          Text('Learn', style: TextStyle(color: Colors.white)),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                          
                          "Most helpful hourly sessions for beginners. A Gentle introduction to Artifcial Intelligence which is an umbrella term, that contains both ML & Data Science using Python/R for student professionals with any background. ",
                          textAlign: TextAlign.justify,
                          ),                          
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          // FlatButton(
                          //   child: const Text('Know more',
                          //       style: TextStyle(color: Colors.white)),
                          //   onPressed: () {},
                          // ),
                          FlatButton(
                            child: const Text('Signup',
                                style: TextStyle(color: Colors.white)),
                            onPressed: () {openurl();},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  openurl() {
    String url1 =
        "https://calendar.google.com/calendar?cid=c3RhdHNtYXR0ZXJpbkBnbWFpbC5jb20";
    launch(url1);
  }
}
