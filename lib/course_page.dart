import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/video_page.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    int _page = 0;
    // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

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
          title: const Text(
            'Course Name',
            style: TextStyle(
                fontSize: 25, color: Color.fromARGB(255, 255, 255, 255)),
          )),
      body: MyCourse(size: size),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        // key: _bottomNavigationKey,
        index: 2,
        items: const [
          CurvedNavigationBarItem(
            child: Icon(Icons.chat_bubble_outline),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.search),
            label: 'My couse',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.newspaper),
            label: 'Feed',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.perm_identity),
            label: 'Personal',
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {},
        letIndexChange: (index) => true,
      ),
    );
  }
}

class MyCourse extends StatelessWidget {
  const MyCourse({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: size.width,
                height: 180,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(),
                ),
              ),
              Container(
                width: size.width,
                height: 80,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(),
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
                              border: Border.all(color: Colors.white, width: 5),
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFFF2E8F5)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Day',
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFF5E398D)),
                              ),
                              const Text(
                                '1',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xFF5E398D)),
                              ),
                              Text(
                                '01/0$index',
                                style: const TextStyle(
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
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFBF4DA)),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'Upgrade and unlock the \nfull course',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                          child: Icon(
                        Icons.lock,
                        color: Color.fromARGB(108, 159, 154, 154),
                        size: 60,
                      )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: List.generate(
                    10,
                    (index) => GestureDetector(
                      onTap: () {
                        Get.to(() => const VideoPage());
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
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
                                const SizedBox(
                                  width: 10,
                                ),
                                const Column(
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
                                const Spacer(),
                                Center(
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: CircularCountDownTimer(
                                      duration: 10,
                                      controller: CountDownController(),
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              2,
                                      fillColor: const Color(0xFF5E398D),
                                      backgroundColor: null,
                                      strokeWidth: 5.0,
                                      textStyle: const TextStyle(
                                        fontSize: 0.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      isReverse: true,
                                      isTimerTextShown: true,
                                      onComplete: () {
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
                  ),
                )
              ],
            ),
          ),
        ],
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
              borderRadius: BorderRadius.circular(radius!), color: color),
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
