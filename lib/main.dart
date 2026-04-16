import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
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
        body: SafeArea(
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
                    // Logo
                    Image.asset("assets/logo.png", height: 120),

                    const SizedBox(width: 10),

                    // Company Name
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

                    // Tabs
                    const Expanded(
                      flex: 3,
                      child: TabBar(
                        labelColor: Colors.blue,
                        indicatorColor: Colors.blue,
                        tabs: [
                          Tab(icon: Icon(Icons.home), text: "Home"),
                          Tab(icon: Icon(Icons.info_outline), text: "About Us"),
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

                    // Get Quote Button
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

              // Divider Line
              Container(
                height: 4,
                width: double.infinity,
                color: const Color.fromARGB(255, 22, 81, 129),
              ),

              // 🔵 Body Section
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  height: 450,
                  color: const Color.fromARGB(255, 22, 81, 129),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "YOUR TRUSTED PARTNER FOR \nSECURITY & HOUSEKEEPING SOLUTION",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 35),
                              Flexible(
                                child: Row(
                                  children: [
                                    SizedBox(width: 40),
                                    SizedBox(
                                      height: 35,
                                      width: 200,

                                      child: Expanded(
                                        child: Card(
                                          color: const Color.fromARGB(
                                            255,
                                            74,
                                            173,
                                            197,
                                          ),
                                          elevation: 5,
                                          child: Text(
                                            "Explore Security Services",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 25),
                                    SizedBox(
                                      height: 35,
                                      width: 265,

                                      child: Expanded(
                                        child: Card(
                                          color: const Color.fromARGB(
                                            255,
                                            74,
                                            173,
                                            197,
                                          ),
                                          elevation: 5,
                                          child: Text(
                                            "Explore  Services",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.transparent,
                                  Colors.black,
                                  Colors.black,
                                ],
                                stops: [
                                  0.0, // fully transparent at left edge
                                  0.2, // fade ends here (20% width)
                                  1.0, // rest fully visible
                                ],
                              ).createShader(bounds);
                            },
                            blendMode: BlendMode.dstIn,
                            child: Image.asset(
                              "assets/image1.jpeg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
