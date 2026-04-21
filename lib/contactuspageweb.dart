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
                  color: Colors.purple[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/general-manager-illustration-svg-download-png-3239622-removebg-preview.png",
                    ),
                    Text(""),
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
