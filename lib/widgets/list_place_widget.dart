import 'package:destinationexplorer/models/mslocation_model.dart';
import 'package:flutter/material.dart';
import '../pages/place_detail_card_component.dart';

class ListPlaceWidget extends StatefulWidget {
  const ListPlaceWidget({super.key});

  @override
  State<ListPlaceWidget> createState() => _ListPlaceWidgetState();
}

class _ListPlaceWidgetState extends State<ListPlaceWidget> {
  List<MsLocation> locationData = [
    MsLocation(
      ambience: "Cozy",
      description: "A nice cozy place.",
      distance: 1.2,
      location: "123 Main Street",
      name: "Cozy Cafe",
      similarities: 0.9,
    ),
    MsLocation(
      ambience: "Modern",
      description: "A modern and stylish place.",
      distance: 3.5,
      location: "456 Elm Street",
      name: "Modern Eatery",
      similarities: 0.85,
    ),
  ];

  void _showCustomBottomSheet(BuildContext context, String name, String location) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.5,
          minChildSize: 0.25,
          maxChildSize: 0.75,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: PlaceDetailCard(
                  name: name,
                  location: location,
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: locationData.length,
        itemBuilder: (context, index) {
          final location = locationData[index];
          return GestureDetector(
            onTap: () => _showCustomBottomSheet(context, location.name, location.location),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Card(
                elevation: 1.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.location_on, size: 30, color: Color(0xff02C057)),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      location.name,
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff1B1B1B),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "${location.distance.toStringAsFixed(1)} km away",
                                      style: const TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff02C057),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5.0),
                                Text(
                                  location.location,
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    color: Color(0xff6C6C6C),
                                  ),
                                ),
                                Text(
                                  "Ambience: ${location.ambience}",
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 47, 116, 78),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: const Color(0xFF02C057),
                              side: const BorderSide(color: Color(0xFF02C057)),
                            ),
                            child: const Text("Schedule a ride"),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF02C057),
                              foregroundColor: Colors.white,
                            ),
                            child: const Text("Book now"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "View pictures",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff005339),
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(5, (index) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey[300],
                              ),
                              child: const Icon(Icons.image, size: 30),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
