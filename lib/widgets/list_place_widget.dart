import 'package:flutter/material.dart';

import '../pages/place_detail_card_component.dart';

class ListPlaceWidget extends StatefulWidget {
  const ListPlaceWidget({super.key});

  @override
  State<ListPlaceWidget> createState() => _ListPlaceWidgetState();
}

class _ListPlaceWidgetState extends State<ListPlaceWidget> {
  void _showCustomBottomSheet(BuildContext context) {
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
                child: KopiTukuCard(),
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
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _showCustomBottomSheet(context),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
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
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on, size: 30, color: Color(0xff02C057)),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Kopi Tuku",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff1B1B1B),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "3 km away",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff02C057),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Jl. Jalan No. 123",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color(0xff6C6C6C),
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
