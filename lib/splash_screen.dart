import 'package:flutter/material.dart';
import 'dart:async';
import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 102, 175, 34),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255,102, 175, 34)
          // gradient: LinearGradient(
          //   colors: [
          //     Color.fromARGB(255, 164, 255, 164),
          //     Color.fromARGB(255,102, 175, 34),
          //   ],
          // ),
        ),
        child: const Center(
          child: Text(
            'FloraFix',
            style: TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
              color: Color.fromARGB(255, 238, 255, 222),
              letterSpacing: -2,
            ),
          ),
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Color.fromARGB(255, 102, 175, 34),
//       body: Center(
//         child: Text(
//           'Florafix',
//           style: TextStyle(
//             fontSize: 64,
//             fontWeight: FontWeight.bold,
//             fontFamily: 'Inter',
//             color: Color.fromARGB(255, 238, 255, 222),
//             letterSpacing: -3,
//           ),
//         ),
//       ),
//     );
//   }
// }
