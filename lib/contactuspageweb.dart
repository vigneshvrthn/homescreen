import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  Future<void> _callNumber(String number) async {
    final Uri phone = Uri.parse("tel:$number");
    if (!await launchUrl(phone)) {
      throw 'Could not launch $phone';
    }
  }

  Future<void> _openWhatsapp(String number) async {
    final Uri whatsapp = Uri.parse("https://wa.me/$number");
    if (!await launchUrl(whatsapp)) {
      throw 'Could not launch $whatsapp';
    }
  }

  Future<void> _openLocation() async {
    final Uri location = Uri.parse(
      "https://www.google.com/maps/search/?api=1&query=Madurai",
    );
    if (!await launchUrl(location)) {
      throw 'Could not launch $location';
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("SRINACSS ENVIRO PRIVATE LIMITED"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.phone), text: "Contact Us."),
              Tab(
                icon: Icon(Icons.chat, color: Colors.blue),
                text: "Enquire.",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ContactNumbers(callNumber: _callNumber),
            WhatsappContact(),
          ],
        ),
      ),
    );
  }
}

class ContactNumbers extends StatelessWidget {
  final Function(String) callNumber;
  Future<void> _callNumber(String number) async {
    final Uri phone = Uri.parse("tel:$number");
    if (!await launchUrl(phone)) {
      throw 'Could not launch $phone';
    }
  }

  Future<void> _openWhatsapp(String number) async {
    final String message = "Hello SRINACSS, I would like to inquire about...";

    final Uri whatsappUrl = Uri.parse(
      "https://wa.me/$number?text=${Uri.encodeComponent(message)}",
    );
    if (!await launchUrl(whatsappUrl)) {
      throw 'Could not launch $whatsappUrl';
    }
  }

  Future<void> _openLocation(String Url) async {
    final Uri location = Uri.parse(Url);
    if (!await launchUrl(location)) {
      throw 'Could not launch $location';
    }
  }

  const ContactNumbers({super.key, required this.callNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 300,
              height: 600,
              child: SizedBox(
                height: 600,
                child: SingleChildScrollView(
                  child: Card(
                    elevation: 5,
                    color: Colors.purple[100],
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/general-manager-illustration-svg-download-png-3239622-removebg-preview.png",
                          height: 180,
                          width: double.maxFinite,
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "N.GANESAN",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "GENERAL MANAGER",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () => callNumber("8220042006"),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.call_outlined,
                                color: Colors.green,
                                size: 25,
                              ),
                              SizedBox(width: 40),
                              Text(
                                "8220042006",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () => _openWhatsapp("8220042006"),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/images-removebg-preview (1).png",
                                height: 70,
                                width: 240,
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
            SizedBox(
              width: 300,
              height: 600,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 600,
                  child: Card(
                    elevation: 5,
                    color: Colors.purple[100],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Image.asset(
                          "assets/images/modern-cartoon-style-headquarters-building-icon-vector-illustration_1322553-78015-removebg-preview.png",
                          height: 180,
                          width: double.maxFinite,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Madurai Head Office",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () => _callNumber("8220042007"),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.call_outlined,
                                color: Colors.green,
                                size: 25,
                              ),
                              SizedBox(width: 30),
                              Text(
                                "8220042007",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () => _openWhatsapp("8220042007"),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/images-removebg-preview (1).png",
                                height: 70,
                                width: 240,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () => _openLocation(
                            "https://www.google.com/maps/place/NACSS/@9.926487,78.1522909,17z/data=!3m1!4b1!4m6!3m5!1s0x3b00c553fffffffd:0x22563757bda34f82!8m2!3d9.9264817!4d78.1548658!16s%2Fg%2F11fz2gwnxl?entry=ttu&g_ep=EgoyMDI2MDIxOC4wIKXMDSoASAFQAw%3D%3D",
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blue,
                                size: 30,
                              ),
                              SizedBox(width: 10),
                              SelectableText(
                                "2/173,2nd Cross St,\n2nd Main Road,\nGomathipuram,\nMadurai - 625020.",
                                style: TextStyle(fontWeight: FontWeight.bold),
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

            SizedBox(
              width: 300,
              height: 600,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 600,
                  child: Card(
                    elevation: 5,
                    color: Colors.purple[100],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),

                        Image.asset(
                          "assets/images/branch-office-3d-icon-png-download-12542199-removebg-preview.png",
                          height: 180,
                          width: double.maxFinite,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Chennai Office",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () => _callNumber("8220042008"),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone_outlined,
                                color: Colors.green,
                                size: 25,
                              ),
                              SizedBox(width: 40),
                              Text(
                                "8220042008",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () => _openWhatsapp("8220042008"),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/images-removebg-preview (1).png",
                                height: 70,
                                width: 240,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        InkWell(
                          onTap: () => _openLocation(
                            "https://www.google.com/maps/place/2nd+Cross+St,+Subbaraya+Nagar,+Chromepet,+Chennai,+Tamil+Nadu+600044/@12.9585158,80.1214335,17z/data=!4m6!3m5!1s0x3a525fbef2a34005:0xbe283842c41adf04!8m2!3d12.9585106!4d80.1240084!16s%2Fg%2F11cnd7qynv?entry=ttu&g_ep=EgoyMDI2MDMxMS4wIKXMDSoASAFQAw%3D%3D",
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blue,
                                size: 30,
                              ),
                              SelectableText(
                                "No.4, Subbbaraya Nagar,\n1st Main Road,\n2nd Right Cross,\nTiruneermalai Road\nChrompet,\nChennai - 600044.",
                                style: TextStyle(fontSize: 15),
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
          ],
        ),
      ),
    );
  }
}

class WhatsappContact extends StatefulWidget {
  const WhatsappContact({super.key});

  @override
  State<WhatsappContact> createState() => _WhatsappContactState();
}

class _WhatsappContactState extends State<WhatsappContact> {
  final TextEditingController company_name_text = TextEditingController();
  final TextEditingController address_text = TextEditingController();
  final TextEditingController discription_text = TextEditingController();
  final TextEditingController phonenumber_text = TextEditingController();
  final TextEditingController numberofperson_text = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  String? selectedservices;

  List<String> services = ["House Keeping Service", "Security Guard Services"];

  Future<void> openWhatsapp(String message) async {
    String phone = "918220042006"; // your whatsapp number

    final Uri whatsapp = Uri.parse(
      "https://wa.me/$phone?text=${Uri.encodeComponent(message)}",
    );

    if (await canLaunchUrl(whatsapp)) {
      await launchUrl(whatsapp);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: 500,
            child: Card(
              elevation: 5,
              color: Colors.blueGrey[100],
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    const SizedBox(height: 15),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: company_name_text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Company Name",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Your Company Name";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(height: 15),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: phonenumber_text,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Phone Number",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Your Phone Number";
                          } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                            return "Numbers only allowed";
                          } else if (value.length != 10) {
                            return "Phone must be 10 digits";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(height: 15),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: address_text,
                        maxLines: 2,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Address",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Your Address";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(height: 15),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        initialValue: selectedservices,
                        hint: const Text("Select Service"),
                        items: services.map((service) {
                          return DropdownMenuItem<String>(
                            value: service,
                            child: Text(service),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedservices = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Select Your Need";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 15),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: numberofperson_text,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Number Of Person :",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Number of Person Required.";
                          } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                            return "Numbers only allowed";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: discription_text,
                        maxLines: 4,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Detail for Enquiry",
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          String message =
                              "Company Name: ${company_name_text.text}\n"
                              "Phone Number: ${phonenumber_text.text}\n"
                              "Address: ${address_text.text}\n"
                              "Service: $selectedservices\n"
                              "No Of Person : ${numberofperson_text.text}"
                              "Description: ${discription_text.text}";

                          openWhatsapp(message);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        overlayColor: Colors.red,
                        surfaceTintColor: Colors.deepPurpleAccent,
                        backgroundColor: Colors.deepPurpleAccent,
                        foregroundColor: Colors.white70,
                      ),
                      child: const Text("Enquire"),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
