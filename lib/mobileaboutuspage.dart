import 'package:flutter/material.dart';

class MobileAboutusPage extends StatelessWidget {
  const MobileAboutusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Card(
            elevation: 5,
            shadowColor: Colors.black,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                children: [
                  Text(
                    "Welcome To SRINACSS",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "\n\nSRINACSS",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                              ),
                              TextSpan(
                                text: "\ni.   ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                              ),
                              TextSpan(
                                text: "N",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: " eat",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: "\nii.   ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                              ),
                              TextSpan(
                                text: "A",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: " nd",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: "\niii.  ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                              ),
                              TextSpan(
                                text: "C",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: " lean",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: "\niv.   ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                              ),
                              TextSpan(
                                text: "S",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: " ervice",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: "\nv.    ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                              ),
                              TextSpan(
                                text: "S",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: " quad",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 70,
                              child: CircleAvatar(
                                radius: 67,
                                backgroundImage: AssetImage("assets/MD PP.jpg"),
                              ),
                            ),
                            Text(
                              "Managing Director",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "S.VenkataPathy",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "\n\nWho We Are",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text:
                              "\n\nAt SRINACSS, we believe that a clean and secure environment builds trust, safety, and productivity. Our team is professionally trained, disciplined, and committed to delivering excellence in every assignment.",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        TextSpan(
                          text:
                              "\n\n     Our anthem — NACSS: Neat And Clean Service Squad — reflects our core mission:",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "\n          i. Clean Spaces",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "\n          ii. Safe Permises",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "\n          iii. Reliable Workforce",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Our Services  : -",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 40),
                          Icon(
                            Icons.clean_hands,
                            color: Colors.green,
                            size: 25,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "House Keeping",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 40),
                          Icon(Icons.shield, color: Colors.red, size: 25),
                          SizedBox(width: 5),
                          Text(
                            "Security Services",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 40),
                          Icon(
                            Icons.person_4_sharp,
                            color: Colors.blue,
                            size: 25,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Manpower Supply",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Why Choose SRINACSS ?",

                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "✔ Experienced & Verified Staff",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "✔ Timely Deployment",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "✔ Quality Supervision",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "✔ Reliable Service",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "✔ Commitment to Excellence",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
