import 'package:flutter/material.dart';
import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flushbar/flushbar.dart';

void main() => runApp(MaterialApp(home: AgilPoker()));

const double expandedHeight = 550;

class AgilPoker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultBottomBarController(
        dragLength: expandedHeight,
        snap: true,
        child: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page();
  }
}

class Page extends State<MyApp> {
  var wert = [
    '0',
    '0,5',
    '1',
    '2',
    '3',
    '5',
    '8',
    '13',
    '20',
    '40',
    '100',
    ':)'
  ];

  var wertIndex = 11;
  String copyright =
      "Copyright 2019 Jan Weber\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the Software), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: \n\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.";

  void showWert() {
    setState(() {
      // questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      //Set to true for bottom appbar overlap body content
      extendBody: true,

      // appBar: AppBar(
      //   title: Text("Panel Showcase"),
      //   backgroundColor: Colors.black,
      // ),
      body: SafeArea(
        child: Center(
          child: Text(
            wert[wertIndex],
            style: TextStyle(
              fontFamily: 'Monoton-Regular',
              fontSize: 160.0,
              color: Colors.white,
              // fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),

      // Lets use docked FAB for handling state of sheet
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        // Set onVerticalDrag event to drag handlers of controller for swipe effect
        onVerticalDragUpdate: DefaultBottomBarController.of(context).onDrag,
        onVerticalDragEnd: DefaultBottomBarController.of(context).onDragEnd,
        child: FloatingActionButton.extended(
          icon: Icon(Icons.filter_9_plus),
          label: Text("wähle"),
          elevation: 2,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,

          //Set onPressed event to swap state of bottom bar
          onPressed: () => DefaultBottomBarController.of(context).swap(),
        ),
      ),

      // Actual expandable bottom bar
      bottomNavigationBar: BottomExpandableAppBar(
        expandedHeight: expandedHeight,
        horizontalMargin: 2,
        shape: AutomaticNotchedShape(
            RoundedRectangleBorder(), StadiumBorder(side: BorderSide())),
        expandedBackColor: Colors.grey[900],
        expandedBody: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.white)),
              color: Colors.white,
              padding: EdgeInsets.all(8),
              onPressed: () {
                wertIndex = 0;
                showWert();
                DefaultBottomBarController.of(context).swap();
              },
              child: Text(
                wert[0],
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Monoton-Regular',
                  color: Colors.black,
                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.white)),
              color: Colors.white,
              padding: EdgeInsets.all(8),
              onPressed: () {
                wertIndex = 1;
                showWert();
                DefaultBottomBarController.of(context).swap();
              },
              child: Text(
                wert[1],
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Monoton-Regular',
                  color: Colors.black,
                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.white)),
              color: Colors.white,
              padding: EdgeInsets.all(8),
              onPressed: () {
                wertIndex = 2;
                showWert();
                DefaultBottomBarController.of(context).swap();
              },
              child: Text(
                wert[2],
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Monoton-Regular',
                  color: Colors.black,
                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.white)),
              color: Colors.white,
              padding: EdgeInsets.all(8),
              onPressed: () {
                wertIndex = 3;
                showWert();
                DefaultBottomBarController.of(context).swap();
              },
              child: Text(
                wert[3],
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Monoton-Regular',
                  color: Colors.black,
                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.white)),
              color: Colors.white,
              padding: EdgeInsets.all(8),
              onPressed: () {
                wertIndex = 4;
                showWert();
                DefaultBottomBarController.of(context).swap();
              },
              child: Text(
                wert[4],
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Monoton-Regular',
                  color: Colors.black,
                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.white)),
              color: Colors.white,
              padding: EdgeInsets.all(8),
              onPressed: () {
                wertIndex = 5;
                showWert();
                DefaultBottomBarController.of(context).swap();
              },
              child: Text(
                wert[5],
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Monoton-Regular',
                  color: Colors.black,
                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.white)),
              color: Colors.white,
              padding: EdgeInsets.all(8),
              onPressed: () {
                wertIndex = 6;
                showWert();
                DefaultBottomBarController.of(context).swap();
              },
              child: Text(
                wert[6],
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Monoton-Regular',
                  color: Colors.black,
                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.white)),
              color: Colors.white,
              padding: EdgeInsets.all(8),
              onPressed: () {
                wertIndex = 7;
                showWert();
                DefaultBottomBarController.of(context).swap();
              },
              child: Text(
                wert[7],
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Monoton-Regular',
                  color: Colors.black,
                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.white)),
              color: Colors.white,
              padding: EdgeInsets.all(8),
              onPressed: () {
                wertIndex = 8;
                showWert();
                DefaultBottomBarController.of(context).swap();
              },
              child: Text(
                wert[8],
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Monoton-Regular',
                  color: Colors.black,
                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.white)),
              color: Colors.white,
              padding: EdgeInsets.all(8),
              onPressed: () {
                wertIndex = 9;
                showWert();
                DefaultBottomBarController.of(context).swap();
              },
              child: Text(
                wert[9],
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Monoton-Regular',
                  color: Colors.black,
                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.white)),
              color: Colors.white,
              padding: EdgeInsets.all(8),
              onPressed: () {
                wertIndex = 10;
                showWert();
                DefaultBottomBarController.of(context).swap();
              },
              child: Text(
                wert[10],
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Monoton-Regular',
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        bottomAppBarBody: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.copyright),
                  onPressed: () {
                    Flushbar(
                      title: "MIT LICENSE",
                      message:
                          copyright,
                      duration: Duration(seconds: 3),
                    )..show(context);
                  },
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.code),
                  onPressed: () async {
                    if (await canLaunch(
                        "https://github.com/shadowframe/agilpoker_2_0")) {
                      await launch(
                          "https://github.com/shadowframe/agilpoker_2_0");
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
