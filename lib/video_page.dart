import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoController extends GetxController {
  late VideoPlayerController videoPlayerController;
  var isPlaying = false.obs;

  @override
  void onInit() {
    super.onInit();
    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse('https://www.youtube.com/live/ysYz3YHZLI0?si=jRXiyo7wWI2VRock'),
    )..initialize().then((_) {
        update(); // Update the state once the video is initialized
      });
  }

  void playPause() {
    if (videoPlayerController.value.isPlaying) {
      videoPlayerController.pause();
      isPlaying.value = false;
    } else {
      videoPlayerController.play();
      isPlaying.value = true;
    }
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    super.onClose();
  }
}

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
                height: 250,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(),
                    color: Color.fromARGB(255, 227, 225, 230)),
              ),
              Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Center(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.play_arrow,
                      size: 80,
                    ),
                  )))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(
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
                                        MediaQuery.of(context).size.height / 2,
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
                                    onComplete: () {},
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
