import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    int _page = 0;
    GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

    final List<Widget> _pages = [
      const Center(child: Text('Home', style: TextStyle(fontSize: 24))),
      const Center(child: Text('Search', style: TextStyle(fontSize: 24))),
      const Center(child: Text('Profile', style: TextStyle(fontSize: 24))),
    ];
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF5E398D),
          title: Text(
            'Course Name',
            style: TextStyle(
                fontSize: 25, color: const Color.fromARGB(255, 255, 255, 255)),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: 180,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        // bottomLeft: Radius.circular(20),
                        // bottomRight: Radius.circular(20),
                        ),
                  ),
                ),
                Container(
                  width: size.width,
                  height: 80,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          // bottomLeft: Radius.circular(20),
                          // bottomRight: Radius.circular(20),
                          ),
                      color: Color(0xFF5E398D)),
                ),
                Positioned(
                  bottom: 50,
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        10,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Container(
                            height: 100,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xFFF2E8F5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF5E398D)),
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Color(0xFF5E398D)),
                                ),
                                Text(
                                  '01/0$index',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF5E398D)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFBF4DA)),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Practice With Previous Year \nQuestion Papers',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: List.generate(
                      10,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 80,
                                    height: 90),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Day 1',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    Text(
                                      'All ABOUT DID',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Center(
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    child: CircularCountDownTimer(
                                      // Duration of the timer
                                      duration: 10,
                                      // Controller to control (i.e., Pause, Resume, Restart) the Countdown
                                      controller: CountDownController(),
                                      // Width of the Countdown Widget
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      // Height of the Countdown Widget
                                      height:
                                          MediaQuery.of(context).size.height /
                                              2,
                                      // Default Color for Countdown Timer
                                      // color: Colors.white,
                                      // Filling Color for Countdown Timer
                                      fillColor: Color(0xFF5E398D),
                                      // Background Color for Countdown Widget
                                      backgroundColor: null,
                                      // Border Thickness of the Countdown Circle
                                      strokeWidth: 5.0,
                                      // Text Style for Countdown Text
                                      textStyle: TextStyle(
                                        fontSize: 0.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      // true for reverse countdown (max to 0), false for forward countdown (0 to max)
                                      isReverse: true,
                                      // Optional [bool] to hide the [Text] in this widget.
                                      isTimerTextShown: true,
                                      // Function which will execute when the Countdown Ends
                                      onComplete: () {
                                        // Here, do whatever you want
                                        print('Countdown Ended');
                                      },
                                      ringColor: Colors.black38,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        key: _bottomNavigationKey,
        index: 2,
        items: [
          const CurvedNavigationBarItem(
            child: Icon(Icons.chat_bubble_outline),
            label: 'Home',
          ),
          const CurvedNavigationBarItem(
            child: Icon(Icons.search),
            label: 'My couse',
          ),
          const CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          const CurvedNavigationBarItem(
            child: Icon(Icons.newspaper),
            label: 'Feed',
          ),
          const CurvedNavigationBarItem(
            child: Icon(Icons.perm_identity),
            label: 'Personal',
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        // backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          // setState(() {
          //   _page = index;
          // });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  const IconWithText({
    super.key,
    required this.color,
    required this.title,
    this.boxShape,
    required this.assetName,
    this.radius = 10,
  });
  final Color color;
  final String title;
  final double? radius;
  final String assetName;
  final BoxShape? boxShape;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              // image: DecorationImage(image: AssetImage('assets/image.png')),
              // shape: boxShape ?? BoxShape.rectangle,
              borderRadius: BorderRadius.circular(radius!),
              color: color),
          child: Center(
              child: Image.asset(
                  fit: BoxFit.fill, height: 50, width: 50, assetName)),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        )
      ],
    );
  }
}
