import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';
import 'package:flip_card/flip_card.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text/animated_text.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  void count() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // extendBody: true,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 40.0, 0.0),
            child: Row(
              children: [
                Text('Downloads'),
                SizedBox(
                  width: 20.0,
                ),
                Text('About Page'),
              ],
            ),
          )
        ],
        elevation: 0.0,
        title: Text(
          'Resume',
          style: TextStyle(
              color: Color(0xff05dfd7), fontFamily: 'Sansita', fontSize: 50.0),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
            minHeight: double.infinity,
            maxWidth: double.infinity,
            minWidth: double.infinity,
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('background.jpg'),
            fit: BoxFit.fill,
          )),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 200.0, 900.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(width: 20.0),
                      Text(
                        "I am",
                        style: TextStyle(
                            fontSize: 50.0,
                            fontFamily: 'Sansita',
                            color: Colors.white),
                      ),
                      SizedBox(width: 20.0),
                      RotateAnimatedTextKit(
                          repeatForever: true,
                          onTap: () {
                            print("Tap Event");
                          },
                          text: [
                            "UDIPTA",
                            "CODER",
                            "DIFFERENT",
                            "OPTIMISTIC",
                            "AWESOME"
                          ],
                          textStyle: TextStyle(
                              fontSize: 40.0,
                              fontFamily: "Audiowide",
                              color: Color(0xffffba93)),
                          textAlign: TextAlign.start),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "!",
                        style: TextStyle(
                            fontSize: 50.0,
                            fontFamily: 'Monoton',
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.0),
                Row(
                  children: [
                    SizedBox(width: 50.0),
                    Container(
                      width: 300.0,
                      child: Text(
                          'Welcome To my World, This website defines my projects and skills.',
                          style: TextStyle(
                              decorationStyle: TextDecorationStyle.wavy,
                              decorationColor: Colors.blue,
                              color: Colors.white,
                              fontFamily: 'Arial',
                              fontSize: 20.0),
                          textAlign: TextAlign.center
                          // textWidthBasis: TextWidthBasis.parent,
                          ),
                    ),
                    SizedBox(
                      width: 400.0,
                    ),
                    LottieBuilder.asset(
                      'Coder.json',
                      width: 500,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      child: AnimatedText(
                        alignment: Alignment.center,
                        speed: Duration(milliseconds: 1000),
                        controller: AnimatedTextController.loop,
                        displayTime: Duration(milliseconds: 1000),
                        wordList: [
                          'Welcome to.',
                          'the new.',
                          'age of.',
                          'security.'
                        ],
                        textStyle: TextStyle(
                            color: Color(0xffffa62b),
                            fontSize: 55,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                  child: Text(
                    'This website defines the new age of security. Unlike other websites, this website is totally web-scrapping proof and is a best example of Abstraction. For practically understanding the security of this website you can compare this website with any website. If you Inspect the elements of the other website you will see all the HTML/CSS elements which are easily available for Manupulating and Scraping, but when you Inspect this website you will see only few codes of skeletal HTML and other than that everything is maintaing total Abstraction, hence making it extremly difficult for any traditional hacking attacks.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Comfort'),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 120.0),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 1000.0, 0.0),
                    child: Text(
                      'Skills',
                      style: TextStyle(
                        color: Color(0xffff8e71),
                        fontFamily: 'Bellaty',
                        fontSize: 100.0,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Container(
                  child: ScaleAnimatedTextKit(
                      repeatForever: true,
                      onTap: () {
                        print("Tap Event");
                      },
                      text: [
                        "C/C++",
                        "Python",
                        "HTML",
                        'CSS',
                        'Dart',
                        'Flutter',
                        'Tensorflow',
                        'Dialogflow',
                        'Selenium'
                      ],
                      textStyle: TextStyle(
                        fontSize: 70.0,
                        fontFamily: "Monoton",
                        color: Color(0xfffbbedf),
                      ),
                      textAlign: TextAlign.start,
                      alignment:
                          AlignmentDirectional.topStart // or Alignment.topLeft
                      ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: 200,
                  height: 200,
                  child: Card(
                    shape: CircleBorder(
                      side: BorderSide.none,
                    ),
                    elevation: 5.0,
                    shadowColor: Colors.pink,
                    child: FlipCard(
                      front: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                        image: AssetImage('flutter2.jpg'),
                        fit: BoxFit.fill,
                      ))),
                      back: Container(
                        margin: EdgeInsets.fromLTRB(5.0, 50.0, 5.0, 0.0),
                        child: Text(
                          'Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase.',
                          style:
                              TextStyle(fontFamily: 'Bellaty', fontSize: 15.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100.0),
              ],
            ),
          )),
    );
  }
}
