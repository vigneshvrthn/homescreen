import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  Future<void> _callNumber(String number) async {
    final Uri phone = Uri.parse("tel:$number");
    await launchUrl(phone, mode: LaunchMode.externalApplication);
  }

  Future<void> _openWhatsapp(String number) async {
    final String message = "Hello SRINACSS, I would like to inquire...";
    final Uri whatsapp = Uri.parse(
      "https://wa.me/$number?text=${Uri.encodeComponent(message)}",
    );
    await launchUrl(whatsapp, mode: LaunchMode.externalApplication);
  }

  Future<void> _openLocation(String url) async {
    final Uri location = Uri.parse(url);
    await launchUrl(location, mode: LaunchMode.externalApplication);
  }

  Widget contactCard({
    required String title,
    required String subtitle,
    required String number,
    required String image,
    String? locationText,
    String? locationUrl,
  }) {
    return SizedBox(
      width: 300,
      child: Card(
        elevation: 5,
        color: Colors.purple[100],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Image.asset(image, height: 150),
              const SizedBox(height: 10),

              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                subtitle,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              InkWell(
                onTap: () => _callNumber(number),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.call, color: Colors.green),
                    const SizedBox(width: 10),
                    Text(
                      number,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              InkWell(
                onTap: () => _openWhatsapp("91$number"),
                child: const Icon(Icons.message, color: Colors.green, size: 35),
              ),

              const SizedBox(height: 10),

              if (locationText != null && locationUrl != null)
                InkWell(
                  onTap: () => _openLocation(locationUrl),
                  child: Column(
                    children: [
                      const Icon(Icons.location_on, color: Colors.blue),
                      Text(
                        locationText,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              contactCard(
                title: "N. GANESAN",
                subtitle: "GENERAL MANAGER",
                number: "8220042006",
                image:
                    "assets/images/general-manager-illustration-svg-download-png-3239622-removebg-preview.png",
              ),

              contactCard(
                title: "Madurai Head Office",
                subtitle: "",
                number: "8220042007",
                image:
                    "assets/images/modern-cartoon-style-headquarters-building-icon-vector-illustration_1322553-78015-removebg-preview.png",
                locationText:
                    "2/173, 2nd Cross St,\nGomathipuram,\nMadurai - 625020",
                locationUrl:
                    "https://www.google.com/maps/place/NACSS/@9.926487,78.1522909,17z",
              ),

              contactCard(
                title: "Chennai Office",
                subtitle: "",
                number: "8220042008",
                image:
                    "assets/images/branch-office-3d-icon-png-download-12542199-removebg-preview.png",
                locationText:
                    "No.4, Subbaraya Nagar,\nChrompet,\nChennai - 600044",
                locationUrl:
                    "https://www.google.com/maps/place/Chromepet,+Chennai",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
