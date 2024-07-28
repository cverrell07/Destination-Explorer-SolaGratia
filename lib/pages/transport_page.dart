import 'package:destinationexplorer/pages/explore_page.dart';
import 'package:flutter/material.dart';

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
              Positioned(
                top: 70,
                right: -50,
                child: Image.asset(
                  'assets/images/icon-transport.png',
                  height: 200,
                  width: 200,
                ),
              ),
              const Positioned(
                top: 80,
                left: 20,
                child: Row(
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(width: 10.0),
                    Text(
                      "Transport",
                      style: TextStyle(
                        color: Color(0xff1B1B1B),
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: 140,
                left: 20,
                right: 180,
                child: Text(
                  "Wherever you’re going, let’s get you there!",
                  style: TextStyle(
                    color: Color(0xff1B1B1B),
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 220.0, 20.0, 0.0),
                  child: Material(
                    elevation: 1,
                    borderRadius: BorderRadius.circular(10.0),
                    child: TextField(
                      onChanged: (value) {},
                      controller: editingController,
                      decoration: InputDecoration(
                        hintText: "Where to?",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/icons/location_icon.png',
                            width: 10,
                            height: 10,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey, width: 2.0),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(0xff18723E), width: 2.0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                        hintStyle: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExplorePage()),
                );
              },
              child: Image.asset(
                "assets/images/Rina_suggestion_image.png",
                height: 100,
                width: 500,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              color: Colors.white,
              elevation: 1,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.green),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Puri Indah Mall",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Puri Indah, Jl. Puri Agung no. 101, Kembangan Selatan, Kembangan, Jakarta Barat, Indonesia.",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward, color: Color(0xff1B1B1B)),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              color: Colors.white,
              elevation: 1,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.green),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lippo Mall Puri",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Jl. Puri Indah Raya Blok U 1, Puri Indah CBD, Jakarta 11610, Indonesia.",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward, color: Color(0xff1B1B1B)),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              color: Colors.white,
              elevation: 1,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.green),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Central Park Mall",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "PKav.28 Letjen S Parman, West Jakarta, 11470, West Jakarta, DKI Jakarta, Indonesia.uri Indah, Jl. Puri Agung no. 101, Kembangan Selatan, Kembangan, Jakarta Barat, Indonesia.",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward, color: Color(0xff1B1B1B)),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
