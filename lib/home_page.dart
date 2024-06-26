import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/course_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF5E398D),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Good Morning',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Text(
              'John',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
              width: size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Color(0xFF5E398D)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 241, 238, 244)),
                  child: Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'selected couse',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                                Text(
                                  'Montessori',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF512E7E)),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text(
                                'Change',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Icon(Icons.import_export_outlined,
                                  color: Colors.white),
                            ],
                          )),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
              )),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconWithText(
                          onTap: () {
                            Get.to(() => const CoursePage());
                          },
                          color: const Color(0xFFF0778F),
                          title: '',
                          assetName: 'assets/image (7).png',
                        ),
                        IconWithText(
                          onTap: () {},
                          color: const Color(0xFFF6B73D),
                          title: '',
                          assetName: 'assets/image (6).png',
                        ),
                        IconWithText(
                          onTap: () {},
                          color: const Color(0xFF3CB5D5),
                          title: '',
                          assetName: 'assets/image (8).png',
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    const Text(
                      'Course',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconWithText(
                          onTap: () {
                            Get.to(() => const CoursePage());
                          },
                          radius: 50,
                          color: const Color(0xFF42D2D0),
                          title: 'KTET',
                          assetName: 'assets/image (5).png',
                        ),
                        IconWithText(
                          onTap: () {},
                          radius: 50,
                          color: const Color(0xFFFCDB75),
                          title: 'LP/UP/HST',
                          assetName: 'assets/image.png',
                        ),
                        IconWithText(
                          onTap: () {},
                          radius: 50,
                          color: const Color(0xFFF6C88E),
                          title: 'SET',
                          assetName: 'assets/image (1).png',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconWithText(
                          onTap: () {
                            Get.to(() => const CoursePage());
                          },
                          radius: 50,
                          color: const Color(0xFFFBAEB0),
                          title: 'NET',
                          assetName: 'assets/image (2).png',
                        ),
                        IconWithText(
                          onTap: () {},
                          radius: 50,
                          boxShape: BoxShape.circle,
                          color: const Color(0xFFBFA3FB),
                          title: 'Montessori',
                          assetName: 'assets/image (3).png',
                        ),
                        IconWithText(
                          onTap: () {},
                          radius: 50,
                          color: const Color(0xFFEF5CAB),
                          title: 'Crash Cour...',
                          assetName: 'assets/image (4).png',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFBF4DA)),
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
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
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
        // backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          // setState(() {
          //   _page = index;
          // });
        },
        // letIndexChange: (index) => true,
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
    required this.onTap,
  });
  final Color color;
  final String title;
  final double? radius;
  final String assetName;
  final BoxShape? boxShape;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
      ),
    );
  }
}
