import 'package:flutter/material.dart';
import 'package:home/aboutuspageweb.dart';
import 'package:home/contactuspageweb.dart';
import 'package:home/home.dart';
import 'package:home/mobilehome.dart';
import 'package:home/projectpageweb.dart';
import 'package:home/quotepage.dart';

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
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return const MobileHome(); // 📱 Mobile UI
        } else {
          return const deskviewhome(); // 🖥️ Your current UI
        }
      },
    );
  }
}

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    MobileHomeScreen(),
    AboutUsPage(),
    ProjectPage(),
    ContactUsPage(),
    Quotepage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SRINACSS ENVIRO PVT LTD",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        leading: Padding(
          padding: EdgeInsets.all(5),
          child: Image.asset("assets/logo.png"),
        ),
      ),

      // ✅ SHOW SELECTED PAGE
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: "About",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: "Projects"),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: "Contact",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.request_quote),
            label: "Quote",
          ),
        ],
      ),
    );
  }
}

class deskviewhome extends StatelessWidget {
  const deskviewhome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
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
                          Tab(
                            icon: Icon(Icons.blinds_closed_sharp),
                            text: "Get Quote",
                          ),
                        ],
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
                    ContactUsPage(),
                    Quotepage(),
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
