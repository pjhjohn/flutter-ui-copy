import 'package:flutter/material.dart';

void main() {
  runApp(TideUiCopyApp());
}

class TideUiCopyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.white, fontSize: 36.0, fontWeight: FontWeight.w400),
          headline2: TextStyle(color: Colors.white, fontSize: 48.0, fontWeight: FontWeight.w100),
          bodyText1: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w300),
        ),
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenPadding = MediaQuery.of(context).padding;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/tide.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(top: screenPadding.top),
                child: Column(
                  children: [
                    Container(
                      color: Colors.pink.withAlpha(64),
                      height: 32.0,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(children: [
                        Text('Night', style: Theme.of(context).textTheme.headline1),
                      ]),
                    ),
                    Container(
                      color: Colors.pink.withAlpha(64),
                      height: 8.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0, right: 60.0),
                      child: Row(children: [
                        Expanded(
                          child: Text('Sleep is like a cat: it only comes to you if you ignore it',
                              style: Theme.of(context).textTheme.bodyText1),
                        )
                      ]),
                    ),
                    Container(
                      color: Colors.pink.withAlpha(64),
                      height: 16.0,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(children: [
                        Text('Daily Tide', style: Theme.of(context).textTheme.bodyText1),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: screenPadding.bottom),
                child: Container(
                  color: Colors.pink.withAlpha(64),
                  height: 160.0,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Text('Storm', style: Theme.of(context).textTheme.headline2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
