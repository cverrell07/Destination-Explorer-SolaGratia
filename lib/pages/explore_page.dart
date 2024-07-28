import 'dart:async';

import 'package:destinationexplorer/models/mslocation_model.dart';
import 'package:destinationexplorer/services/mslocation_service.dart';
import 'package:flutter/material.dart';
import 'package:destinationexplorer/widgets/list_place_widget.dart';
import 'package:destinationexplorer/widgets/no_data_widget.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  TextEditingController editingController = TextEditingController();
  List<MsLocation> places = [];
  bool isLoading = false;
  Timer? debounce;

  @override
  void dispose() {
    editingController.dispose();
    debounce?.cancel();
    super.dispose();
  }

  void onSearchChanged(String query) {
    if (debounce?.isActive ?? false) debounce!.cancel();
    debounce = Timer(const Duration(milliseconds: 500), () {
      if (query.isNotEmpty) {
        fetchPlaces(query);
      }
    });
  }

  void fetchPlaces(String query) async {
    setState(() {
      isLoading = true;
    });

    try {
      List<MsLocation> fetchedPlaces = await ApiService().fetchPlaces(query);
      setState(() {
        places = fetchedPlaces;
      });
    } catch (e) {
      print('Error fetching places: $e');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

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
                    colors: [
                      Color(0xffBEEDD2),
                      Color.fromARGB(255, 183, 199, 190)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Positioned(
                top: -20,
                right: -50,
                child: Image.asset(
                  'assets/images/Rina_icon.png',
                  height: 300,
                  width: 300,
                ),
              ),
              Positioned(
                top: 80,
                left: 20,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back),
                    ),
                    const SizedBox(width: 10.0),
                    const Text(
                      "Explore",
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
                  "Search using any words to describe places you want to go.",
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
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10.0),
                    child: TextField(
                      onChanged: onSearchChanged,
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
                              BorderSide(color: Color(0xff18723E), width: 2.0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20.0),
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : places.isEmpty
                    ? const NoDataWidget()
                    : ListPlaceWidget(locationData: places),
          ),
        ],
      ),
    );
  }
}
