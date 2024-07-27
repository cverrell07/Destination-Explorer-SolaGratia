// import 'package:flutter/material.dart';

// class TransportPage extends StatefulWidget {
//   const TransportPage({super.key});

//   @override
//   State<TransportPage> createState() => _TransportPageState();
// }

// class _TransportPageState extends State<TransportPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             children: [
//               Container(
//                 height: 250,
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Color(0xffBEEDD2), Color.fromARGB(255, 183, 199, 190)],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: -20,
//                 right: -50,
//                 child: Image.asset(
//                   'assets/images/Rina_icon.png',
//                   height: 300,
//                   width: 300,
//                 ),
//               ),
//               const Positioned(
//                 top: 80,
//                 left: 20,
//                 child: Row(
//                   children: [
//                     Icon(Icons.arrow_back),
//                     SizedBox(width: 10.0),
//                     Text(
//                       "Explore",
//                       style: TextStyle(
//                         color: Color(0xff1B1B1B),
//                         fontSize: 40.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const Positioned(
//                 top: 140,
//                 left: 20,
//                 right: 180,
//                 child: Text(
//                   "Search using any words to describe places you want to go.",
//                   style: TextStyle(
//                     color: Color(0xff1B1B1B),
//                     fontSize: 14.0,
//                     fontWeight: FontWeight.normal,
//                   ),
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.topCenter,
//                 child: Padding(
//                   padding: const EdgeInsets.fromLTRB(20.0, 220.0, 20.0, 0.0),
//                   child: Material(
//                     elevation: 5,
//                     borderRadius: BorderRadius.circular(10.0),
//                     child: TextField(
//                       onChanged: (value) {},
//                       controller: editingController,
//                       decoration: InputDecoration(
//                         hintText: "Describe any destination...",
//                         prefixIcon: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Image.asset(
//                             'assets/icons/star_icon.png',
//                             width: 10,
//                             height: 10,
//                           ),
//                         ),
//                         enabledBorder: const OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                           borderSide: BorderSide(color: Colors.grey, width: 2.0),
//                         ),
//                         focusedBorder: const OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                           borderSide: BorderSide(color: Color(0xff18723E), width: 2.0),
//                         ),
//                         filled: true,
//                         fillColor: Colors.white,
//                         contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
//                         hintStyle: const TextStyle(
//                             color: Colors.grey, fontWeight: FontWeight.normal),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const Expanded(
//             // const NoDataWidget()
//             child: ListPlaceWidget(),
//           ),
//         ],
//       ),
//     );
//   }
// }