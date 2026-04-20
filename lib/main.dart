import 'package:flutter/material.dart';
import 'package:home/aboutuspageweb.dart';
import 'package:home/home.dart';
import 'package:home/projectpageweb.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              /// 🔵 Top Bar
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

              /// 🏢 Header
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
                          Tab(icon: Icon(Icons.info_outline), text: "About"),
                          Tab(icon: Icon(Icons.work), text: "Projects"),
                          Tab(icon: Icon(Icons.contact_phone), text: "Contact"),
                        ],
                      ),
                    ),

                    Container(
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

              /// 🔥 TAB CONTENT
              Expanded(
                child: TabBarView(
                  children: [
                    HomeScreen(),
                    AboutUsPage(),
                    ProjectPage(),
                    const Center(child: Text("Contact Page")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
