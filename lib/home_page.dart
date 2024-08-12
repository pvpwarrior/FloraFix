// import 'package:flutter/material.dart';
// import 'query_page.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Florafix Home'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () async {
//             final imagePath = await _captureImage(context);
//             if (imagePath != null) {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => QueryPage(imagePath: imagePath),
//                 ),
//               );
//             }
//           },
//           child: Text('Scan Now'),
//         ),
//       ),
//     );
//   }

//   Future<String?> _captureImage(BuildContext context) async {
//     // Placeholder for camera capture logic
//     return 'assets/sample_image.png'; // Placeholder image path
//   }
// }

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_application_444/query_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 255, 224),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 50),
            child: Text(
              'FloraFix',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(16, 32, 0, 1),
                fontFamily: 'Inter',
                fontSize: 64,
                letterSpacing: -2,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: 180.0,
              decoration: BoxDecoration(
                //color: Color.fromARGB(255, 205, 237, 163),
                image: DecorationImage(
                  image: const AssetImage(
                    "assets/images/leafy.jpg",
                  ),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color.fromRGBO(16, 32, 0, 1),
                        fontFamily: 'Inter',
                        fontSize: 16,
                        letterSpacing: 0,
                        height: 1.5,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                'Diagnose plant problems with photos, get personalized treatment plans, and learn how to keep your plants thriving. All with the power of '),
                        TextSpan(
                            text: 'Gemini AI.',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Builder(builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor:
                        const Color.fromARGB(255, 205, 237, 163), // Text color
                  ),
                  onPressed: () async {
                    final imagePath = await _captureImage(context);
                    if (imagePath != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QueryPage(imagePath: imagePath),
                        ),
                      );
                    }
                  },
                  child: const Text('Scan Now'),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Future<String?> _captureImage(BuildContext context) async {
    // Placeholder for camera capture logic
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.camera);
    var imagePath = "";
    if (pickedImage != null) {
      setState(() {
        imagePath = pickedImage.path;
      });

    return imagePath;// Placeholder image path
  }
    return null;
}
}