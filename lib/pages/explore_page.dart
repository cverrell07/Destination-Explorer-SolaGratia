import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransportPage extends StatefulWidget {
  const TransportPage({super.key});

  @override
  State<TransportPage> createState() => _TransportPageState();
}

class _TransportPageState extends State<TransportPage> {
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffBEEDD2), Color.fromARGB(255, 183, 199, 190)], 
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter, 
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 80),
                    const Row(
                      children: [
                        Icon(Icons.arrow_back),
                        SizedBox(width: 10.0),
                        Text(
                          "Explore",
                          style: TextStyle(
                              color: Color(0xff1B1B1B),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    
                    Stack(
                      children: [
                        Positioned(
                          right: 0,
                          child: Image.asset(
                            'assets/images/GrabAI_Logo.png',
                            height: 50, 
                            width: 50,
                          ),
                        ),
                        const Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Search using any words to describe places you want to go.",
                                style: TextStyle(
                                  color: Color(0xff1B1B1B),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    TextField(
                      onChanged: (value) {},
                      controller: editingController,
                      decoration: InputDecoration(
                        hintText: "Describe any destination...",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/icons/star_icon.png', 
                            width: 10,
                            height: 10,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Color(0xff), width: 2.0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
