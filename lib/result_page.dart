// // // // import 'package:flutter/material.dart';

// // // // class ResultPage extends StatelessWidget {
// // // //   final Map<String, dynamic> result;
// // // //   final String imagePath;

// // // //   ResultPage({required this.result, required this.imagePath});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       backgroundColor: Color.fromARGB(255, 243, 255, 224),

// // // //       // appBar: AppBar(
// // // //       //   title: const Text('Result Page'),
// // // //       // ),
// // // //       body: Padding(
// // // //         padding: EdgeInsets.all(16.0),
// // // //         child: ListView(
// // // //           children: [
// // // //             const Text(
// // // //               'Results',
// // // //               style: TextStyle(
// // // //                 fontSize: 32,
// // // //                 fontWeight: FontWeight.bold,
// // // //                 color: Color.fromRGBO(16, 32, 0, 1),
// // // //                 fontFamily: "Inter",
// // // //               ),
// // // //             ),
// // // //             SizedBox(height: 36),
// // // //             Column(
// // // //               mainAxisAlignment: MainAxisAlignment.start,
// // // //               crossAxisAlignment: CrossAxisAlignment.start,
// // // //               children: [
// // // //                 if (result.containsKey('error'))
// // // //                   Text(
// // // //                     result['error'],
// // // //                     style: const TextStyle(fontSize: 24, color: Colors.red),
// // // //                   )
// // // //                 else ...[
// // // //                   const Text(
// // // //                     'Plant Species: ',
// // // //                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// // // //                   ),
// // // //                   Text(
// // // //                     '${result['species'] ?? 'Unknown'}',
// // // //                     style: TextStyle(fontSize: 18),
// // // //                   ),
// // // //                   SizedBox(height: 16),
// // // //                   const Text(
// // // //                     'Detected Disease(s): ',
// // // //                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// // // //                   ),
// // // //                   Text(
// // // //                     '${result['disease'] ?? 'Unknown'}',
// // // //                     style: TextStyle(fontSize: 18),
// // // //                   ),
// // // //                   SizedBox(height: 16),
// // // //                   const Text(
// // // //                     'Suggested Remedies: ',
// // // //                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// // // //                   ),
// // // //                   Text(
// // // //                     '${result['remedy'] ?? 'Unknown'}',
// // // //                     style: TextStyle(fontSize: 18),
// // // //                   ),
// // // //                 ]
// // // //               ],
// // // //             ),
// // // //             SizedBox(height: 56),
// // // //             BackButton(
// // // //               style: ElevatedButton.styleFrom(
// // // //                 foregroundColor: Colors.black,
// // // //                 backgroundColor:
// // // //                     Color.fromARGB(255, 205, 237, 163), // Text color
// // // //               ),
// // // //             )
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // import 'dart:io';
// // // import 'package:flutter/material.dart';

// // // class ResultPage extends StatelessWidget {
// // //   final Map<String, dynamic> result;
// // //   final String imagePath;

// // //   ResultPage({required this.result, required this.imagePath});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Color.fromARGB(255, 243, 255, 224),
// // //       body: Padding(
// // //         padding: EdgeInsets.all(16.0),
// // //         child: ListView(
// // //           children: [
// // //             // Display the image at the top-right with padding
// // //             const Text(
// // //               'Results',
// // //               style: TextStyle(
// // //                 fontSize: 32,
// // //                 fontWeight: FontWeight.bold,
// // //                 color: Color.fromRGBO(16, 32, 0, 1),
// // //                 fontFamily: "Inter",
// // //               ),
// // //             ),
// // //             SizedBox(height: 36),
// // //             Column(
// // //               mainAxisAlignment: MainAxisAlignment.start,
// // //               crossAxisAlignment: CrossAxisAlignment.start,
// // //               children: [
// // //                 if (result.containsKey('error'))
// // //                   Text(
// // //                     result['error'],
// // //                     style: const TextStyle(fontSize: 24, color: Colors.red),
// // //                   )
// // //                 else ...[
// // //                   Row(
// // //                     children: [
// // //                       Column(
// // //                         children: [
// // //                           const Text(
// // //                             'Plant Species: ',
// // //                             style: TextStyle(
// // //                                 fontSize: 24, fontWeight: FontWeight.bold),
// // //                           ),
// // //                           Text(
// // //                             '${result['species'] ?? 'Unknown'}',
// // //                             style: TextStyle(fontSize: 18),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                       Container(
// // //                         child: imagePath.isNotEmpty
// // //                             ? SizedBox(
// // //                                 width: 150,
// // //                                 height: 150,
// // //                                 child: Image.file(
// // //                                   File(imagePath),
// // //                                   fit: BoxFit.cover,
// // //                                 ),
// // //                               )
// // //                             : const Text('No image available',
// // //                                 style: TextStyle(fontSize: 24)),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                   SizedBox(height: 16),
// // //                   const Text(
// // //                     'Detected Disease(s): ',
// // //                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// // //                   ),
// // //                   Text(
// // //                     '${result['disease'] ?? 'Unknown'}',
// // //                     style: TextStyle(fontSize: 18),
// // //                   ),
// // //                   SizedBox(height: 16),
// // //                   const Text(
// // //                     'Suggested Remedies: ',
// // //                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// // //                   ),
// // //                   Text(
// // //                     '${result['remedy'] ?? 'Unknown'}',
// // //                     style: TextStyle(fontSize: 18),
// // //                   ),
// // //                 ]
// // //               ],
// // //             ),
// // //             SizedBox(height: 56),
// // //             BackButton(
// // //               style: ElevatedButton.styleFrom(
// // //                 foregroundColor: Colors.black,
// // //                 backgroundColor:
// // //                     Color.fromARGB(255, 205, 237, 163), // Text color
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'dart:io';
// // import 'package:flutter/material.dart';

// // class ResultPage extends StatelessWidget {
// //   final Map<String, dynamic> result;
// //   final String imagePath;

// //   ResultPage({required this.result, required this.imagePath});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: const Color.fromARGB(255, 243, 255, 224),
// //       body: Padding(
// //         padding: EdgeInsets.only(left: 15, top: 50,right: 15, bottom: 50),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             // Title
// //             const Text(
// //               'Results',
// //               style: TextStyle(
// //                 fontSize: 32,
// //                 fontWeight: FontWeight.bold,
// //                 color: Color.fromRGBO(16, 32, 0, 1),
// //                 fontFamily: "Inter",
// //               ),
// //             ),
// //             const SizedBox(height: 20),
// //             // Image and result details
// //             Expanded(
// //               child: Stack(
// //                 children: [
// //                   Positioned(
// //                     top: 0,
// //                     right: 0,
// //                     child: Container(
// //                       width: 150,
// //                       height: 150,
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(12),
// //                         boxShadow: [
// //                           BoxShadow(
// //                             color: Colors.black.withOpacity(0.3),
// //                             spreadRadius: 2,
// //                             blurRadius: 10,
// //                             offset: const Offset(0, 4), // changes position of shadow
// //                           ),
// //                         ],
// //                       ),
// //                       child: ClipRRect(
// //                         borderRadius: BorderRadius.circular(12),
// //                         child: imagePath.isNotEmpty
// //                             ? Image.file(
// //                                 File(imagePath),
// //                                 fit: BoxFit.cover,
// //                               )
// //                             : Container(
// //                                 color: Colors.grey[300],
// //                                 child: const Center(
// //                                   child: Text(
// //                                     'No image available',
// //                                     style: TextStyle(fontSize: 18, color: Colors.black54),
// //                                   ),
// //                                 ),
// //                               ),
// //                       ),
// //                     ),
// //                   ),
// //                   Padding(
// //                     padding: const EdgeInsets.only(right: 160),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         if (result.containsKey('error'))
// //                           Text(
// //                             result['error'],
// //                             style: const TextStyle(fontSize: 24, color: Colors.red),
// //                           )
// //                         else ...[
// //                           const Text(
// //                             'Plant Species:',
// //                             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //                           ),
// //                           Text(
// //                             '${result['species'] ?? 'Unknown'}',
// //                             style: const TextStyle(fontSize: 18, color: Colors.black87),
// //                           ),
// //                           const SizedBox(height: 16),
// //                           const Text(
// //                             'Detected Disease(s):',
// //                             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //                           ),
// //                           Text(
// //                             '${result['disease'] ?? 'Unknown'}',
// //                             style: const TextStyle(fontSize: 18, color: Colors.black87),
// //                           ),
// //                           const SizedBox(height: 16),
// //                           const Text(
// //                             'Suggested Remedies:',
// //                             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //                           ),
// //                           Text(
// //                             '${result['remedy'] ?? 'Unknown'}',
// //                             style: const TextStyle(fontSize: 18, color: Colors.black87),
// //                           ),
// //                         ]
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             const SizedBox(height: 20),
// //             ElevatedButton(
// //               style: ElevatedButton.styleFrom(
// //                 foregroundColor: Colors.black, backgroundColor: const Color.fromARGB(255, 205, 237, 163),
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(12),
// //                 ),
// //                 elevation: 5,
// //               ),
// //               onPressed: () {
// //                 Navigator.pop(context);
// //               },
// //               child: const Row(
// //                 mainAxisSize: MainAxisSize.min,
// //                 children: [
// //                   Icon(Icons.arrow_back, size: 24),
// //                   SizedBox(width: 8),
// //                   Text('Back'),
// //                 ],
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
// import 'home_page.dart'; // Make sure to import HomePage

// class ResultPage extends StatelessWidget {
//   final Map<String, dynamic> result;
//   final String imagePath;

//   ResultPage({required this.result, required this.imagePath});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 243, 255, 224),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Title
//             Text(
//               'Results',
//               style: TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromRGBO(16, 32, 0, 1),
//                 fontFamily: "Inter",
//               ),
//             ),
//             SizedBox(height: 20),
//             // Image and result details
//             Expanded(
//               child: Stack(
//                 children: [
//                   Positioned(
//                     top: 0,
//                     right: 0,
//                     child: Container(
//                       width: 150,
//                       height: 150,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.3),
//                             spreadRadius: 2,
//                             blurRadius: 10,
//                             offset: Offset(0, 4), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(12),
//                         child: imagePath.isNotEmpty
//                             ? Image.file(
//                                 File(imagePath),
//                                 fit: BoxFit.cover,
//                               )
//                             : Container(
//                                 color: Colors.grey[300],
//                                 child: Center(
//                                   child: Text(
//                                     'No image available',
//                                     style: TextStyle(fontSize: 18, color: Colors.black54),
//                                   ),
//                                 ),
//                               ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 160),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         if (result.containsKey('error'))
//                           Text(
//                             result['error'],
//                             style: const TextStyle(fontSize: 24, color: Colors.red),
//                           )
//                         else ...[
//                           Text(
//                             'Plant Species:',
//                             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             '${result['species'] ?? 'Unknown'}',
//                             style: TextStyle(fontSize: 18),
//                           ),
//                           SizedBox(height: 16),
//                           Text(
//                             'Detected Disease(s):',
//                             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             '${result['disease'] ?? 'Unknown'}',
//                             style: TextStyle(fontSize: 18),
//                           ),
//                           SizedBox(height: 16),
//                           Text(
//                             'Suggested Remedies:',
//                             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                           ),
//                           Container(
//                             constraints: BoxConstraints(
//                               maxHeight: 150, // Adjust the max height as needed
//                             ),
//                             child: SingleChildScrollView(
//                               child: Text(
//                                 '${result['remedy'] ?? 'Unknown'}',
//                                 style: TextStyle(fontSize: 18),
//                               ),
//                             ),
//                           ),
//                         ]
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 16),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.black,
//                   backgroundColor: Color.fromARGB(255, 205, 237, 163), // Button color
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12), // Rounded corners
//                   ),
//                   elevation: 5, // Shadow effect
//                 ),
//                 onPressed: () {
//                   Navigator.pushAndRemoveUntil(
//                     context,
//                     MaterialPageRoute(builder: (context) => HomePage()),
//                     (route) => false,
//                   );
//                 },
//                 child: const Text('Back to Home'),
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
import 'home_page.dart'; // Make sure to import HomePage

class ResultPage extends StatelessWidget {
  final Map<String, dynamic> result;
  final String imagePath;

  ResultPage({required this.result, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 255, 224),
      body: Padding(
        padding: EdgeInsets.only(left: 15, top: 50, bottom: 50, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Results',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(16, 32, 0, 1),
                fontFamily: "Inter",
              ),
            ),
            SizedBox(height: 20),
            // Image and result details
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (result.containsKey('error'))
                          Text(
                            result['error'],
                            style: const TextStyle(fontSize: 24, color: Colors.red),
                          )
                        else ...[
                          Text(
                            'Plant Species:',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${result['species'] ?? 'Unknown'}',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Detected Disease(s):',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${result['disease'] ?? 'Unknown'}',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Suggested Remedies:',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Text(
                                '${result['remedy'] ?? 'Unknown'}',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ]
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: imagePath.isNotEmpty
                          ? Image.file(
                              File(imagePath),
                              fit: BoxFit.cover,
                            )
                          : Container(
                              color: Colors.grey[300],
                              child: Center(
                                child: Text(
                                  'No image available',
                                  style: TextStyle(fontSize: 18, color: Colors.black54),
                                ),
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Color.fromARGB(255, 205, 237, 163), // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  elevation: 5, // Shadow effect
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                    (route) => false,
                  );
                },
                child: const Text('Back to Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}