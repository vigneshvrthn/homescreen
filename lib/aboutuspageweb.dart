import 'package:flutter/material.dart';
import 'package:website/projectpageweb.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SRINACSS ENVIRO PRIVATE LIMITED")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 10,
            shadowColor: Colors.redAccent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
                                textAlign: TextAlign.justify,

                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Welcome To SRINACSS\n\n",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "SRINACSS",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(text: " - "),
                                    TextSpan(
                                      text: "N",
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.redAccent,
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "eat ",
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "A",
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.redAccent,
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "nd ",
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "C",
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.redAccent,
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "lean ",
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "S",
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.redAccent,
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "ervice ",
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "S",
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.redAccent,
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "quad ",
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "\n\nSRINACSS is a trusted facility management company specializing in Housekeeping, Security Services, and Manpower Solutions across Tamil Nadu.",
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "Housekeeping, Security Services, and Manpower Solutions across Tamil Nadu from 1998.",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),

                                    TextSpan(
                                      text:
                                          "Head Office in Madurai and Branch Office in Chennai",
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 20,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ", we proudly serve government institutions, temples, hospitals, educational institutions, tourism departments, and private organizations.",
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 130,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                radius: 125,
                                backgroundImage: AssetImage(
                                  "assets/images/MD PP.jpg",
                                ),
                              ),
                            ),
                            Text(
                              "Managing Directory",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "S.VenkataPathy",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProjectPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Click Here To See The Projects Working",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
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
                                ),
                              ),
                              TextSpan(
                                text:
                                    "\n\nAt SRINACSS, we believe that a clean and secure environment builds trust, safety, and productivity. Our team is professionally trained, disciplined, and committed to delivering excellence in every assignment.",
                                style: TextStyle(fontSize: 20),
                              ),
                              TextSpan(
                                text:
                                    "\n\n     Our anthem — NACSS: Neat And Clean Service Squad — reflects our core mission:",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "\n          i. Clean Spaces",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "\n          ii. Safe Permises",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "\n          iii. Reliable Workforce",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          "Our Services  : -",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Row(
                          children: [
                            SizedBox(width: 30),
                            Icon(
                              Icons.clean_hands,
                              color: Colors.green,
                              size: 25,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "House Keeping",
                              style: TextStyle(fontSize: 30),
                            ),
                            SizedBox(width: 50),
                            Icon(Icons.shield, color: Colors.red, size: 25),
                            SizedBox(width: 5),
                            Text(
                              "Security Services",
                              style: TextStyle(fontSize: 30),
                            ),
                            SizedBox(width: 50),
                            Icon(
                              Icons.person_4_sharp,
                              color: Colors.blue,
                              size: 25,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Manpower Supply",
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Text(
                          "Why Choose SRINACSS ?",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 27.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "✔ Experienced & Verified Staff",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "✔ Timely Deployment",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "✔ Quality Supervision",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "✔ Reliable Service",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "✔ Commitment to Excellence",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
