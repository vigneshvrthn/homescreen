import 'package:flutter/material.dart';

class Mobileprojectpage extends StatelessWidget {
  const Mobileprojectpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Colors.blueAccent, Colors.greenAccent],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person, color: Colors.white, size: 25),
                          Text(
                            "1500+",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Person Over TN",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Colors.blueAccent, Colors.greenAccent],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.clean_hands,
                            color: Colors.white,
                            size: 25,
                          ),
                          Text(
                            "750+",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Housekeeping",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Colors.blueAccent, Colors.greenAccent],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shield, color: Colors.white, size: 25),
                          Text(
                            "450+",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Security",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Colors.blueAccent, Colors.greenAccent],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person_2, color: Colors.white, size: 25),
                          Text(
                            "200+",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "others",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            projectcard(
              "assets/images/PROJECTPHOTO/meenakshi-amman-temple-Madurai.png",
              "Meenakshi Amman Temple",
              "Madurai",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/AlagarKovil.jpg",
              "Alagar Kovil",
              "Madurai",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/Pazhamuthirsolai.jpg",
              "Pazhamudircholai",
              "Madurai",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/periyapalayam.jpg",
              "Bhavani Amman Temple",
              "Periyapalayam Trichy",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/irukankudi.jpg",
              "Irukankudi Mariamman Kovil",
              "Sattur",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/Madapuram.jpg",
              "Bathira Kali Amman kovil",
              "Madapuram ,Madurai",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/Apollo Hospital.jpg",
              "Apollo Hospital",
              "Madurai ,Karaikudi",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/auro-labs.jpg",
              "Auro Lab",
              "Madurai",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/Aravind Eve Hospital.jpg",
              "Aravind Eye Hospital",
              "Madurai",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/vadamalayan.jpg",
              "Vadamalayan",
              "Madurai, Dindugal",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/palagal.jpg",
              "Panagal Maligai",
              "Chennai",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/iitdm.png",
              "IIITDM",
              "Kancheepuram",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/srm.png",
              "TTDC SRM Hotel",
              "Trichy",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/salestax.jpg",
              "Comercial Tax Office",
              "",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/treasury.png",
              "Treasury Office",
              "",
            ),
            projectcard("assets/images/PROJECTPHOTO/gst.jpg", "GST Office", ""),
            projectcard(
              "assets/images/PROJECTPHOTO/esi.jpg",
              "E.S.I. Hospital",
              "",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/FOOD_CORPORATION_OF_INDIA_FCI1.png",
              "Food Corporation India",
              "",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/kv.jpg",
              "Kendriya Vidyalaya School",
              "",
            ),
            projectcard(
              "assets/images/PROJECTPHOTO/tnelection.jpg",
              "Tamilnadu State Election Commission",
              "",
            ),
          ],
        ),
      ),
    );
  }

  Widget projectcard(String imgpath, String name, String location) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            child: Image.asset(
              imgpath,
              height: 150,
              width: 180,
              fit: BoxFit.fill,
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    location,
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
