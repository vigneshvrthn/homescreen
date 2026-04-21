import 'package:flutter/material.dart';

class Contactuspageweb extends StatelessWidget {
  const Contactuspageweb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            SizedBox(width: 20),
            Expanded(
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 180, 245),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        "assets/general-manager-illustration-svg-download-png-3239622-removebg-preview.png",
                        height: 250,
                        width: 250,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "General Manager",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                    ),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, color: Colors.green, size: 30),
                          SizedBox(width: 15),
                          Text("82200 42006", style: TextStyle(fontSize: 25)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: Image.asset(
                              "assets/images/watsapp-removebg-preview.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 15),
                          Text("Chat US!...", style: TextStyle(fontSize: 25)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Container(
                height: 400,
                decoration: BoxDecoration(color: Colors.purple[300]),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Container(
                height: 400,
                decoration: BoxDecoration(color: Colors.purple[300]),
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
