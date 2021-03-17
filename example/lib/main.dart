import 'package:flutter/material.dart';
import 'package:curved_splash_screen/curved_splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CurvedSplashScreen(
          screensLength: splashContent.length,
          screenBuilder: (index) {
            return SplashContent(
              title: splashContent[index]["title"],
              image: splashContent[index]["image"],
              text: splashContent[index]["text"],
            );
          },
          onSkipButton: () {
            print("Ends");
          }),
    );
  }
}

class SplashContent extends StatelessWidget {
  final String title;
  final String text;
  final String image;

  const SplashContent({
    Key key,
    @required this.title,
    @required this.text,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          Container(
            height: 200,
            child: Image.asset(image),
          ),
          SizedBox(height: 60),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 19,
            ),
          )
        ],
      ),
    );
  }
}

final splashContent = [
  {
    "title": "Start Learning",
    "text":
        "Start learning now by using this app, Get your choosen course and start the journey.",
    "image": "assets/images/1.png",
  },
  {
    "title": "Explore Courses",
    "text": "Choose which course is suitable for you to enroll in.",
    "image": "assets/images/2.png",
  },
  {
    "title": "At Any time.",
    "text": "Your courses is available at any time you want. Join us now !",
    "image": "assets/images/3.png"
  },
];
