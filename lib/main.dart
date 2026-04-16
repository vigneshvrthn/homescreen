import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                // 🔵 Top Contact Bar
                Container(
                  height: 30,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 22, 81, 129),
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(Icons.call, color: Colors.green, size: 16),
                      SizedBox(width: 10),
                      Text(
                        "82200 42006 / 8220042007",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),

                // 🏢 Header Section
                Container(
                  height: 120,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset("assets/logo.png", height: 120),
                      const SizedBox(width: 10),

                      const Expanded(
                        flex: 2,
                        child: Text(
                          "SRINACSS ENVIRO PRIVATE LIMITED",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 22, 81, 129),
                          ),
                        ),
                      ),

                      const Expanded(
                        flex: 3,
                        child: TabBar(
                          labelColor: Colors.blue,
                          indicatorColor: Colors.blue,
                          tabs: [
                            Tab(icon: Icon(Icons.home), text: "Home"),
                            Tab(
                              icon: Icon(Icons.info_outline),
                              text: "About Us",
                            ),
                            Tab(
                              icon: Icon(Icons.filter_frames_outlined),
                              text: "Projects",
                            ),
                            Tab(
                              icon: Icon(Icons.contact_phone),
                              text: "Contact Us",
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 10, 118, 145),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          "Get Quote",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 4,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 22, 81, 129),
                ),

                // 🔵 Body Section
                Container(
                  width: double.infinity,
                  height: 300,
                  color: const Color.fromARGB(255, 22, 81, 129),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "YOUR TRUSTED PARTNER FOR \nSECURITY & HOUSEKEEPING SOLUTION",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(height: 35),

                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 35,
                                    width: 200,
                                    child: Card(
                                      color: const Color.fromARGB(
                                        255,
                                        74,
                                        173,
                                        197,
                                      ),
                                      elevation: 5,
                                      child: const Center(
                                        child: Text(
                                          "Explore Security Services",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(width: 25),

                                Expanded(
                                  child: SizedBox(
                                    height: 35,
                                    width: 265,
                                    child: Card(
                                      color: const Color.fromARGB(
                                        255,
                                        74,
                                        173,
                                        197,
                                      ),
                                      elevation: 5,
                                      child: const Center(
                                        child: Text(
                                          "Explore HouseKeeping Services",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.transparent,
                                Colors.black,
                                Colors.black,
                              ],
                              stops: [0.0, 0.3, 1.0],
                            ).createShader(bounds);
                          },
                          blendMode: BlendMode.dstIn,
                          child: Image.asset(
                            "assets/image1.jpeg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ❗ FIXED (Removed Expanded)
                Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Expanded(
                            child: _card(
                              "Immediate Manpower Replacement",
                              Icons.repeat_sharp,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: _card(
                              "Verified Staff",
                              Icons.verified_outlined,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: _card("24/7 Support", Icons.alarm_outlined),
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Expanded(
                            child: _card(
                              "Rapid Responce Team",
                              Icons.people_alt_outlined,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: _card(
                              "Uniformed & Disciplined Presence",
                              Icons.shield_outlined,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: _card(
                              "Specialized In Hospital & Industrial Cleaning",
                              Icons.clean_hands,
                            ),
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60),
                Center(
                  child: Text(
                    "Our Services",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 22, 81, 129),
                    ),
                  ),
                ),
                SizedBox(height: 45),
                Row(
                  children: [
                    Expanded(flex: 1, child: Card()),
                    Expanded(
                      flex: 4,
                      child: SizedBox(
                        height: 350,
                        child: Card(
                          color: const Color.fromARGB(255, 70, 158, 230),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Security Services",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: ShaderMask(
                                  shaderCallback: (Rect bounds) {
                                    return const LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.transparent,
                                        Colors.black,
                                        Colors.black,
                                      ],
                                      stops: [0.0, 0.3, 1.0],
                                    ).createShader(bounds);
                                  },
                                  blendMode: BlendMode.dstIn,
                                  child: Image.asset(
                                    "assets/security.jpeg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(flex: 1, child: Card()),
                    Expanded(
                      flex: 4,
                      child: SizedBox(
                        height: 350,
                        child: Card(
                          color: const Color.fromARGB(255, 122, 216, 240),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "HouseKeeping Services",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: ShaderMask(
                                  shaderCallback: (Rect bounds) {
                                    return const LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.transparent,
                                        Colors.black,
                                        Colors.black,
                                      ],
                                      stops: [0.0, 0.3, 1.0],
                                    ).createShader(bounds);
                                  },
                                  blendMode: BlendMode.dstIn,
                                  child: Image.asset(
                                    "assets/hk.jpeg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(flex: 1, child: Card()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _card(String text, IconData icon) {
    return SizedBox(
      height: 150,
      child: Card(
        elevation: 5,
        color: Colors.white70,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40,
                color: const Color.fromARGB(255, 22, 81, 129),
              ),
              const SizedBox(height: 10),
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromARGB(255, 22, 81, 129),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
