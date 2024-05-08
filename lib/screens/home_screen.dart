import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, kToolbarHeight * 1.2, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              const BackgroundBox(
                width: 300,
                height: 600,
                alignment: Alignment(3, -0.3),
                color: Colors.deepPurple,
                shape: BoxShape.circle,
              ),
              const BackgroundBox(
                width: 300,
                height: 600,
                alignment: Alignment(-3, -0.3),
                color: Colors.deepPurple,
                shape: BoxShape.circle,
              ),
              const BackgroundBox(
                width: 600,
                height: 300,
                alignment: Alignment(0, -1.2),
                color: Colors.orange,
                shape: BoxShape.rectangle,
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '📍 Dubai, UAE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'Good Morning',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.5),
                    ),
                    Image.asset('assets/images/1.png'),
                    Center(
                      child: const Text(
                        '21° C',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.5),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'THUNDERSTORM',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.8),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Friday 16 • 09:41am',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            letterSpacing: -0.5),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/11.png',
                              scale: 9,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunrise',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: -0.5),
                                ),
                                Text(
                                  '5:43am',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.5),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/12.png',
                              scale: 9,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunset',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: -0.5),
                                ),
                                Text(
                                  '5:30pm',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.5),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/13.png',
                              scale: 9,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Temp Max',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: -0.5),
                                ),
                                Text(
                                  '5:43am',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.5),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/14.png',
                              scale: 9,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Temp Min',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: -0.5),
                                ),
                                Text(
                                  '5:30pm',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.5),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BackgroundBox extends StatelessWidget {
  final double height;
  final double width;
  final Alignment alignment;
  final Color color;
  final BoxShape shape;
  const BackgroundBox(
      {super.key,
      required this.height,
      required this.width,
      required this.alignment,
      required this.color,
      required this.shape});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(color: color, shape: shape),
      ),
    );
  }
}
