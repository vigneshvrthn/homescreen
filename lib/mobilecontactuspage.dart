import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Mobilecontactuspage extends StatelessWidget {
  const Mobilecontactuspage({super.key});

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              elevation: 8,
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [Colors.purple.shade50, Colors.white],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Profile Image
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/general-manager-illustration-svg-download-png-3239622-removebg-preview.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Name
                    Text(
                      "N. Ganesan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade900,
                      ),
                    ),

                    const SizedBox(height: 5),

                    // Role
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "General Manager",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    // Phone Button
                    InkWell(
                      onTap: () => _callNumber("8220042006"),
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.call, color: Colors.green),
                            SizedBox(width: 10),
                            Text(
                              "8220042006",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // WhatsApp Button
                    InkWell(
                      onTap: () => _openWhatsapp("8220042006"),
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.message, color: Colors.blue),
                            SizedBox(width: 10),
                            Text(
                              "Chat on WhatsApp",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Address
                    InkWell(
                      onTap: () => _openLocation(""),
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade50,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.location_on, color: Colors.red),

                            const SizedBox(width: 10),

                            Expanded(
                              child: Text(
                                "2/173, 2nd Cross Street,\n2nd Main Road,\nGomathipuram,\nMadurai - 625020",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade800,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              child: Card(
                elevation: 10,
                color: Colors.purple[100],
                child: Container(
                  height: 200,
                  width: double.maxFinite,
                  child: Row(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Card(
                elevation: 10,
                color: Colors.purple[100],
                child: Container(
                  height: 200,
                  width: double.maxFinite,
                  child: Row(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
