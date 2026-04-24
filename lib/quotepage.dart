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
  final _formkey = GlobalKey<FormState>();

  // 🚀 WhatsApp Function
  Future<void> sendToWhatsApp() async {
    final phone = "918220042006"; // 👉 Replace with your WhatsApp number

    final message =
        '''
Company Name: ${_companyname.text}
Service: $_selectedService
Phone: ${_phoneController.text}
No of Person: ${_personController.text}
''';

    final url = Uri.parse(
      "https://wa.me/$phone?text=${Uri.encodeComponent(message)}",
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw "Could not launch WhatsApp";
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
      body: Center(
        child: InteractiveViewer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 400,
              height: double.maxFinite,
              child: Column(
                children: [
                  Text(
                    "Enter The Details You Need For Your Company",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Card(
                      elevation: 10,
                      color: const Color.fromARGB(92, 134, 188, 209),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Form(
                          key: _formkey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Company Name
                              TextFormField(
                                controller: _companyname,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Company Name",
                                ),
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return "Enter Your Company Name";
                                  }
                                  return null;
                                },
                              ),

                              const SizedBox(height: 10),

                              // Dropdown Service
                              DropdownButtonFormField<String>(
                                initialValue: _selectedService,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Select Service",
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
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    _selectedService = value;
                                  });
                                },
                                validator: (value) {
                                  if (value == null) {
                                    return "Please select a service";
                                  }
                                  return null;
                                },
                              ),

                              const SizedBox(height: 10),

                              // Phone Number
                              TextFormField(
                                controller: _phoneController,
                                keyboardType: TextInputType.number,
                                maxLength: 10,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Phone Number",
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter Your Phone Number";
                                  } else if (!RegExp(
                                    r'^[0-9]{10}$',
                                  ).hasMatch(value)) {
                                    return "Enter a valid 10-digit phone number";
                                  }
                                  return null;
                                },
                              ),

                              const SizedBox(height: 10),

                              // Number of Person
                              TextFormField(
                                controller: _personController,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "No Of Person",
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter The Number of Person You Need";
                                  }

                                  final number = int.tryParse(value);

                                  if (number == null || number <= 0) {
                                    return "Enter a valid number greater than 0";
                                  }

                                  return null;
                                },
                              ),

                              const SizedBox(height: 10),

                              // Submit Button
                              ElevatedButton(
                                onPressed: () async {
                                  if (_formkey.currentState!.validate()) {
                                    await sendToWhatsApp();

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          "Form submitted successfully!",
                                        ),
                                        backgroundColor: Colors.green,
                                      ),
                                    );
                                  }
                                },
                                child: const Text("Submit"),
                              ),
                            ],
                          ),
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
    );
  }
}
