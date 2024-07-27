import 'package:flutter/material.dart';

class NoDataWidget extends StatefulWidget {
  const NoDataWidget({super.key});

  @override
  State<NoDataWidget> createState() => _NoDataWidgetState();
}

class _NoDataWidgetState extends State<NoDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 120.0),
      child: Center(
      child: Column(
        children: [
          Image.asset(
            "assets/images/GrabAI_Logo.png",
            width: 150,
            height: 150,
          ),
          const SizedBox(height: 10.0),
          const Text(
            "Tell Rina where you",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: Color(0xff1B1B1B),
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            "want to go!",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: Color(0xff1B1B1B),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    );
  }
}