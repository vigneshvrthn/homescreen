import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Quotepage extends StatefulWidget {
  const Quotepage({super.key});

  @override
  State<Quotepage> createState() => _QuotepageState();
}

class _QuotepageState extends State<Quotepage> {
  final TextEditingController _companyname = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _personController = TextEditingController();

  String? _selectedService;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // WHATSAPP FUNCTION
  Future<void> sendToWhatsApp() async {
    String phone = "918220042006";

    String message =
        """
Company Name : ${_companyname.text}

Service : $_selectedService

Phone Number : ${_phoneController.text}

No Of Person : ${_personController.text}
""";

    final Uri url = Uri(
      scheme: 'https',
      host: 'wa.me',
      path: phone,
      queryParameters: {'text': message},
    );

    try {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } catch (e) {
      debugPrint("Error : $e");
    }
  }

  @override
  void dispose() {
    _companyname.dispose();
    _phoneController.dispose();
    _personController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Get Quote",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 450),
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // TOP TITLE
                      const Center(
                        child: Text(
                          "Enter Your Requirement",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      Center(
                        child: Text(
                          "Fill the details and contact instantly through WhatsApp",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      // COMPANY NAME
                      TextFormField(
                        controller: _companyname,
                        decoration: InputDecoration(
                          labelText: "Company Name",
                          prefixIcon: const Icon(Icons.business),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return "Enter Company Name";
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 20),

                      // SERVICE DROPDOWN
                      DropdownButtonFormField<String>(
                        value: _selectedService,
                        decoration: InputDecoration(
                          labelText: "Select Service",
                          prefixIcon: const Icon(Icons.miscellaneous_services),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        items: const [
                          DropdownMenuItem(
                            value: "Housekeeping",
                            child: Text("Housekeeping"),
                          ),
                          DropdownMenuItem(
                            value: "Security",
                            child: Text("Security"),
                          ),
                          DropdownMenuItem(
                            value: "Facility Management",
                            child: Text("Facility Management"),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedService = value;
                          });
                        },
                        validator: (value) {
                          if (value == null) {
                            return "Please Select Service";
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 20),

                      // PHONE NUMBER
                      TextFormField(
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        maxLength: 10,
                        decoration: InputDecoration(
                          labelText: "Phone Number",
                          prefixIcon: const Icon(Icons.phone),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          counterText: "",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Phone Number";
                          }

                          if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                            return "Enter Valid 10 Digit Number";
                          }

                          return null;
                        },
                      ),

                      const SizedBox(height: 20),

                      // NUMBER OF PERSON
                      TextFormField(
                        controller: _personController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "No Of Person",
                          prefixIcon: const Icon(Icons.people),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Number Of Person";
                          }

                          final number = int.tryParse(value);

                          if (number == null || number <= 0) {
                            return "Enter Valid Number";
                          }

                          return null;
                        },
                      ),

                      const SizedBox(height: 35),

                      // SUBMIT BUTTON
                      SizedBox(
                        width: double.infinity,
                        height: 58,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          onPressed: () async {
                            if (_formkey.currentState!.validate()) {
                              await sendToWhatsApp();

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Opening WhatsApp..."),
                                  backgroundColor: Colors.green,
                                ),
                              );
                            }
                          },
                          icon: const Icon(Icons.message, color: Colors.white),
                          label: const Text(
                            "Send Through WhatsApp",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
