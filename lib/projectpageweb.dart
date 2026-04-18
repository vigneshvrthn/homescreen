import 'package:flutter/material.dart';
//Vigensh

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      body: Padding(
        padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 🔥 STATS
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  buildStatCard(Icons.person, "1500+", "Person Over TN"),
                  buildStatCard(Icons.clean_hands, "750+", "Housekeeping"),
                  buildStatCard(Icons.shield, "450+", "Security"),
                  buildStatCard(Icons.person_2, "200+", "Others"),
                ],
              ),

              const SizedBox(height: 20),

              // 🔥 GRID
              GridView.count(
                crossAxisCount: MediaQuery.of(context).size.width > 800 ? 4 : 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 0.8, // ✅ IMPORTANT
                children: [
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
                  projectcard(
                    "assets/images/PROJECTPHOTO/gst.jpg",
                    "GST Office",
                    "",
                  ),
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
            ],
          ),
        ),
      ),
    );
  }

  // 🔷 STAT CARD
  Widget buildStatCard(IconData icon, String title, String subtitle) {
    return SizedBox(
      width: 200,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
              colors: [Colors.blueAccent, Colors.greenAccent],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon, color: Colors.white, size: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 🔷 PROJECT CARD
  Widget projectcard(String imgpath, String name, String location) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // IMAGE
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),
              child: Image.asset(
                imgpath,
                height: 230,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    location,
                    style: const TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔷 SERVICE BOX (future use)
  Widget serviceBox(IconData icon, String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 20, color: Colors.white),
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
