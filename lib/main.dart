import 'package:flutter/material.dart';
import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';

void main() => runApp(MaterialApp(home: AgilPoker()));

const double expandedHeight = 550;

var wert = ['0', '0,5', '1', '2', '3', '5', '8', '13', '20', '40', '100', ':)'];

var wertIndex = 11;

class AgilPoker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultBottomBarController(
        dragLength: expandedHeight,
        snap: true,
        child: Page(),
      ),
    );
  }
}


class Page extends StatelessWidget {
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
      body: AgilNumberWidget(),

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
              padding: EdgeInsets.all(8),
              onPressed: () {
                wertIndex = 0;
                print(wertIndex);
                setIndex();
              },
              child: Text(
                wert[0],
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('He\'d have you all unravel at the'),
              color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Heed not the rabble'),
              color: Colors.teal[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Sound of screams but the'),
              color: Colors.teal[300],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Who scream'),
              color: Colors.teal[400],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Revolution is coming...'),
              color: Colors.teal[500],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Revolution, they...'),
              color: Colors.teal[600],
            ),
          ],
        ),
        bottomAppBarBody: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Text(
                  "Tets",
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Expanded(
                child: Text(
                  "Stet",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AgilNumberWidget extends StatefulWidget {
  @override
  AgilNumberWidgetState createState() => AgilNumberWidgetState();
}
// #enddocregion FavoriteWidget

// #docregion _FavoriteWidgetState, _FavoriteWidgetState-fields, _FavoriteWidgetState-build
class AgilNumberWidgetState extends State<AgilNumberWidget> {
  void setIndex() {
    setState(() {
      // questionIndex = questionIndex + 1;
    });
    print(wertIndex);
  }

  // #enddocregion _FavoriteWidgetState-build
  // bool _isFavorited = true;
  // int _favoriteCount = 41;
  // #enddocregion _FavoriteWidgetState-fields

  // #docregion _toggleFavorite
  // void _toggleFavorite() {
  //   setState(() {
  //     if (_isFavorited) {
  //       _favoriteCount -= 1;
  //       _isFavorited = false;
  //     } else {
  //       _favoriteCount += 1;
  //       _isFavorited = true;
  //     }
  //   });
  // }
  // #enddocregion _toggleFavorite

  // #docregion _FavoriteWidgetState-build
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
  // #docregion _FavoriteWidgetState-fields
}

// body: SafeArea(
//         child: Center(
//           child: Text(
//             wert[wertIndex],
//             style: TextStyle(
//               fontFamily: 'Monoton-Regular',
//               fontSize: 160.0,
//               color: Colors.white,
//               // fontWeight: FontWeight.w400,
//             ),
//           ),
//         ),
//       ),
