// // // import 'dart:io';

// // // import 'package:flutter/material.dart';
// // // import 'result_page.dart';
// // // import 'gemini_service.dart';

// // // class QueryPage extends StatelessWidget {
// // //   final String imagePath;

// // //   QueryPage({required this.imagePath});

// // //   final GeminiService geminiService = GeminiService(
// // //     apiKey:
// // //         'AIzaSyAMYwRLYUOnPXtqInbEjbWSSTgRze5zKwA', // Replace with your actual API key
// // //   );

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Color.fromARGB(255, 243, 255, 224),
// // //       // appBar: AppBar(
// // //       //   title: const Text('Query Page'),
// // //       //   centerTitle: true,
// // //       // ),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: ListView(
// // //           children: [
// // //             const Text(
// // //               'Selected Image',
// // //               style: TextStyle(
// // //                 fontSize: 32,
// // //                 fontWeight: FontWeight.bold,
// // //                 color: Color.fromRGBO(16, 32, 0, 1),
// // //                 fontFamily: "Inter",
// // //               ),
// // //             ),
// // //             const SizedBox(height: 16),
// // //             Center(
// // //               child: imagePath != ""
// // //                   ? Image.file(File(imagePath))
// // //                   : const Text('No image captured',
// // //                       style: TextStyle(fontSize: 24)),
// // //             ),
// // //             const SizedBox(height: 16),
// // //             const TextField(
// // //               cursorColor: Color.fromARGB(255, 52, 199, 89),
// // //               decoration: InputDecoration(
// // //                 border: OutlineInputBorder(
// // //                   borderSide: BorderSide(color: Colors.grey, width: 0.0),
// // //                 ),
// // //                 labelText: 'Enter additional info',
// // //                 focusedBorder: OutlineInputBorder(
// // //                   borderSide: BorderSide(
// // //                       color: Color.fromARGB(255, 52, 199, 89), width: 1.0),
// // //                 ),
// // //               ),
// // //               maxLines: 5,
// // //             ),
// // //             const Spacer(),
// // //             SizedBox(
// // //               width: double.infinity,
// // //               child: ElevatedButton(
// // //                 style: ElevatedButton.styleFrom(
// // //                   foregroundColor: Colors.black,
// // //                   backgroundColor:
// // //                       Color.fromARGB(255, 205, 237, 163), // Text color
// // //                 ),
// // //                 onPressed: () async {
// // //                   Map<String, dynamic> result;
// // //                   try {
// // //                     result = await geminiService.analyzePlant(imagePath);
// // //                   } catch (e) {
// // //                     result = {
// // //                       'error': 'Failed to analyze the image. Please try again.'
// // //                     };
// // //                   }

// // //                   Navigator.push(
// // //                     context,
// // //                     MaterialPageRoute(
// // //                       builder: (context) => ResultPage(
// // //                         result: result,
// // //                       ),
// // //                     ),
// // //                   );
// // //                 },
// // //                 child: const Text('Submit'),
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }


// // import 'package:flutter/material.dart';
// // import 'dart:io';
// // import 'result_page.dart';
// // import 'gemini_service.dart';

// // class QueryPage extends StatelessWidget {
// //   final String imagePath;

// //   QueryPage({required this.imagePath});

// //   final GeminiService geminiService = GeminiService(
// //     apiKey: 'AIzaSyAMYwRLYUOnPXtqInbEjbWSSTgRze5zKwA', // Replace with your actual API key
// //   );

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Color.fromARGB(255, 243, 255, 224),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: ListView(
// //           children: [
// //             const Text(
// //               'Selected Image',
// //               style: TextStyle(
// //                 fontSize: 32,
// //                 fontWeight: FontWeight.bold,
// //                 color: Color.fromRGBO(16, 32, 0, 1),
// //                 fontFamily: "Inter",
// //               ),
// //             ),
// //             const SizedBox(height: 16),
// //             Center(
// //               child: imagePath != ""
// //                   ? Image.file(File(imagePath))
// //                   : const Text('No image captured',
// //                       style: TextStyle(fontSize: 24)),
// //             ),
// //             const SizedBox(height: 16),
// //             const TextField(
// //               cursorColor: Color.fromARGB(255, 52, 199, 89),
// //               decoration: InputDecoration(
// //                 border: OutlineInputBorder(
// //                   borderSide: BorderSide(color: Colors.grey, width: 0.0),
// //                 ),
// //                 labelText: 'Enter additional info',
// //                 focusedBorder: OutlineInputBorder(
// //                   borderSide: BorderSide(color: Color.fromARGB(255, 52, 199, 89), width: 1.0),
// //                 ),
// //               ),
// //               maxLines: 5,
// //             ),
// //             const Spacer(),
// //             SizedBox(
// //               width: double.infinity,
// //               child: ElevatedButton(
// //                 style: ElevatedButton.styleFrom(
// //                   foregroundColor: Colors.black, backgroundColor: Color.fromARGB(255, 205, 237, 163), // Text color
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(12.0), // Rounded corners
// //                   ),
// //                   elevation: 5, // Shadow effect
// //                 ),
// //                 onPressed: () async {
// //                   Map<String, dynamic> result;
// //                   try {
// //                     result = await geminiService.analyzePlant(imagePath);
// //                   } catch (e) {
// //                     result = {
// //                       'error': 'Failed to analyze the image. Please try again.'
// //                     };
// //                   }

// //                   Navigator.push(
// //                     context,
// //                     MaterialPageRoute(
                      
// //                       builder: (context) => ResultPage(
// //                         result: result,
// //                       ),
// //                     ),
// //                   );
// //                 },
// //                 child: const Text('Submit'),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'result_page.dart';
// import 'gemini_service.dart';

// class QueryPage extends StatefulWidget {
//   final String imagePath;

//   QueryPage({required this.imagePath});

//   @override
//   _QueryPageState createState() => _QueryPageState();
// }

// class _QueryPageState extends State<QueryPage> {
//   final GeminiService geminiService = GeminiService(
//     apiKey: 'AIzaSyCL9XqiKO15b7lVftAtStwZVwDSvIBcMYU', // Replace with your actual API key
//   );

//   final TextEditingController _infoController = TextEditingController();

//   @override
//   void dispose() {
//     _infoController.dispose();
//     super.dispose();
//   }

//   Future<void> _submit() async {
//     final additionalInfo = _infoController.text;

//     Map<String, dynamic> result;
//     try {
//       result = await geminiService.analyzePlant(widget.imagePath, additionalInfo);
//     } catch (e) {
//       result = {'error': 'Failed to analyze the image. Please try again.'};
//     }

//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ResultPage(
//           result: result,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 243, 255, 224),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             const Text(
//               'Selected Image',
//               style: TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromRGBO(16, 32, 0, 1),
//                 fontFamily: "Inter",
//               ),
//             ),
//             const SizedBox(height: 16),
//             Center(
//               child: widget.imagePath.isNotEmpty
//                   ? Image.file(File(widget.imagePath))
//                   : const Text('No image captured', style: TextStyle(fontSize: 24)),
//             ),
//             const SizedBox(height: 16),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0),
//               child: TextField(
//                 controller: _infoController,
//                 cursorColor: Color.fromARGB(255, 52, 199, 89),
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey, width: 0.0),
//                   ),
//                   labelText: 'Enter additional info',
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Color.fromARGB(255, 52, 199, 89), width: 1.0),
//                   ),
//                 ),
//                 maxLines: 5,
//               ),
//             ),
//             const Spacer(),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.black,
//                   backgroundColor: Color.fromARGB(255, 205, 237, 163), // Text color
//                 ),
//                 onPressed: _submit,
//                 child: const Text('Submit'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'dart:io';

import 'package:flutter/material.dart';
import 'result_page.dart';
import 'gemini_service.dart';

class QueryPage extends StatefulWidget {
  final String imagePath;

  QueryPage({required this.imagePath});

  @override
  _QueryPageState createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {
  final GeminiService geminiService = GeminiService(
    apiKey: 'AIzaSyCL9XqiKO15b7lVftAtStwZVwDSvIBcMYU', // Replace with your actual API key
  );

  final TextEditingController _infoController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _infoController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      _isLoading = true;
    });

    final additionalInfo = _infoController.text;

    Map<String, dynamic> result;
    try {
      result = await geminiService.analyzePlant(widget.imagePath, additionalInfo);
    } catch (e) {
      result = {'error': 'Failed to analyze the image. Please try again.'};
    }

    if (!mounted) return; // Check if the widget is still mounted

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(
          result: result,
        ),
      ),
    );

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 255, 224),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Selected Image',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(16, 32, 0, 1),
                fontFamily: "Inter",
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: widget.imagePath.isNotEmpty
                  ? Image.file(File(widget.imagePath))
                  : const Text('No image captured', style: TextStyle(fontSize: 24)),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _infoController,
                cursorColor: Color.fromARGB(255, 52, 199, 89),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  labelText: 'Enter additional info',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 52, 199, 89), width: 1.0),
                  ),
                ),
                maxLines: 5,
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Color.fromARGB(255, 205, 237, 163), // Text color
                ),
                onPressed: _isLoading ? null : _submit,
                child: _isLoading
                    ? SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          color: Colors.black,
                        ),
                      )
                    : const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}