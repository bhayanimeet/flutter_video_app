import 'package:carousel_slider/carousel_slider.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Car extends StatefulWidget {
  const Car({Key? key}) : super(key: key);

  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
  late VideoPlayerController videoPlayerController1;
  ChewieController? chewieController1;
  late VideoPlayerController videoPlayerController2;
  ChewieController? chewieController2;
  late VideoPlayerController videoPlayerController3;
  ChewieController? chewieController3;
  late VideoPlayerController videoPlayerController4;
  ChewieController? chewieController4;
  late VideoPlayerController videoPlayerController5;
  ChewieController? chewieController5;

  Future<void> loadVideo1() async {
    videoPlayerController1 = VideoPlayerController.asset('assets/videos/car1.mp4');
    await videoPlayerController1.initialize();
    setState(() {});
    chewieController1 = ChewieController(
      videoPlayerController: videoPlayerController1,
      autoPlay: false,
    );
  }
  Future<void> loadVideo2() async {
    videoPlayerController2 = VideoPlayerController.asset('assets/videos/car2.mp4');
    await videoPlayerController2.initialize();
    setState(() {});
    chewieController2 = ChewieController(
      videoPlayerController: videoPlayerController2,
      autoPlay: false,
    );
  }
  Future<void> loadVideo3() async {
    videoPlayerController3 = VideoPlayerController.asset('assets/videos/car3.mp4');
    await videoPlayerController3.initialize();
    setState(() {});
    chewieController3 = ChewieController(
      videoPlayerController: videoPlayerController3,
      autoPlay: false,
    );
  }
  Future<void> loadVideo4() async {
    videoPlayerController4 = VideoPlayerController.asset('assets/videos/car4.mp4');
    await videoPlayerController4.initialize();
    setState(() {});
    chewieController4 = ChewieController(
      videoPlayerController: videoPlayerController4,
      autoPlay: false,
    );
  }
  Future<void> loadVideo5() async {
    videoPlayerController5 = VideoPlayerController.asset('assets/videos/car5.mp4');
    await videoPlayerController5.initialize();
    setState(() {});
    chewieController5 = ChewieController(
      videoPlayerController: videoPlayerController5,
      autoPlay: false,
    );
  }

  @override
  void initState() {
    super.initState();
    loadVideo1();
    loadVideo2();
    loadVideo3();
    loadVideo4();
    loadVideo5();
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController1.dispose();
    videoPlayerController2.dispose();
    videoPlayerController3.dispose();
    videoPlayerController4.dispose();
    videoPlayerController5.dispose();
    chewieController1!.dispose();
    chewieController2!.dispose();
    chewieController3!.dispose();
    chewieController4!.dispose();
    chewieController5!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Car Videos"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                onPageChanged: (val, _) {
                  setState(() {
                    if (val == 0) {
                      videoPlayerController2.pause();
                      videoPlayerController3.pause();
                      videoPlayerController4.pause();
                      videoPlayerController5.pause();
                      chewieController2!.pause();
                      chewieController3!.pause();
                      chewieController4!.pause();
                      chewieController5!.pause();
                    } else if (val == 1) {
                      videoPlayerController1.pause();
                      videoPlayerController3.pause();
                      videoPlayerController4.pause();
                      videoPlayerController5.pause();
                      chewieController1!.pause();
                      chewieController3!.pause();
                      chewieController4!.pause();
                      chewieController5!.pause();
                    } else if (val == 2) {
                      videoPlayerController1.pause();
                      videoPlayerController2.pause();
                      videoPlayerController4.pause();
                      videoPlayerController5.pause();
                      chewieController1!.pause();
                      chewieController2!.pause();
                      chewieController4!.pause();
                      chewieController5!.pause();
                    } else if (val == 3) {
                      videoPlayerController1.pause();
                      videoPlayerController2.pause();
                      videoPlayerController3.pause();
                      videoPlayerController5.pause();
                      chewieController1!.pause();
                      chewieController2!.pause();
                      chewieController3!.pause();
                      chewieController5!.pause();
                    } else if (val == 4) {
                      videoPlayerController1.pause();
                      videoPlayerController2.pause();
                      videoPlayerController3.pause();
                      videoPlayerController4.pause();
                      chewieController1!.pause();
                      chewieController2!.pause();
                      chewieController3!.pause();
                      chewieController4!.pause();
                    }
                  });
                },
                enlargeCenterPage: true,
                height: 550,
                enlargeFactor: 0.22,
              ),
              items: [
                AspectRatio(
                  aspectRatio: videoPlayerController1.value.aspectRatio,
                  child: (chewieController1 != null)
                      ? Chewie(controller: chewieController1!)
                      : Container(),
                ),
                AspectRatio(
                  aspectRatio: videoPlayerController2.value.aspectRatio,
                  child: (chewieController2 != null)
                      ? Chewie(controller: chewieController2!)
                      : Container(),
                ),
                AspectRatio(
                  aspectRatio: videoPlayerController3.value.aspectRatio,
                  child: (chewieController3 != null)
                      ? Chewie(controller: chewieController3!)
                      : Container(),
                ),
                AspectRatio(
                  aspectRatio: videoPlayerController4.value.aspectRatio,
                  child: (chewieController4 != null)
                      ? Chewie(controller: chewieController4!)
                      : Container(),
                ),
                AspectRatio(
                  aspectRatio: videoPlayerController1.value.aspectRatio,
                  child: (chewieController5 != null)
                      ? Chewie(controller: chewieController5!)
                      : Container(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
