// import 'package:flutter/material.dart';
// import './number.dart';

// class LaunchPage extends StatefulWidget {
//   const LaunchPage({super.key});

//   @override
//   State<LaunchPage> createState() => _LaunchPageState();
// }

// class _LaunchPageState extends State<LaunchPage> {
//   @override
//   void initState() {
//     super.initState();
//     _navigateHome();
//   }

//   _navigateHome() async{
//     await Future.delayed(Duration(milliseconds: 2000));
//     Navigator.of(context).push(MaterialPageRoute(builder: ((context) => NumberInput())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color(0xff0052fe),
//       child: Stack(
//         children: <Widget>[
//           Center(
//             child: Image.asset('assets/images/relaylogo.png'),
//           ),
//           Positioned(
//             bottom: 50,
//             left: 0,
//             right: 0,
//             child: Text(
//               '© All rights reserved',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
