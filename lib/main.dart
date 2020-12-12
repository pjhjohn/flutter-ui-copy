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
          headline1: TextStyle(color: Colors.white, fontSize: 36.0, fontWeight: FontWeight.w500),
          headline2: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.w200),
          bodyText1: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 14.0, fontWeight: FontWeight.w400),
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
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.srcATop),
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
                      color: Colors.transparent, // Colors.pink.withOpacity(0.3),
                      height: 32.0,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                      child: Row(children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Text('Night', style: Theme.of(context).textTheme.headline1),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.link,
                            color: Colors.white,
                          ),
                          onPressed: () =>
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Icon Clicked'))),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.multitrack_audio,
                            color: Colors.white,
                          ),
                          onPressed: () =>
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Icon Clicked'))),
                        ),
                      ]),
                    ),
                    Container(
                      color: Colors.transparent, // Colors.pink.withOpacity(0.3),
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
                      color: Colors.transparent, // Colors.pink.withOpacity(0.3),
                      height: 16.0,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Banner(
                        title: 'Daily Tide',
                        description: 'Healthy Eating',
                        icon: Icon(Icons.person, color: Colors.black),
                      ),
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
                  color: Colors.transparent, // Colors.pink.withOpacity(0.3),
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

class Banner extends StatelessWidget {
  Banner({this.title, this.description, this.icon});
  final String title;
  final String description;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(0xcc, 0xcc, 0xcc, 0xcc),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 12.0, fontWeight: FontWeight.w500)),
                  Container(
                    margin: EdgeInsets.only(top: 4.0),
                    child: Text(description, style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(backgroundColor: Colors.white, child: icon),
            ),
          ],
        ),
      ),
    );
  }
}
