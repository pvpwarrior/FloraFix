import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final Map<String, dynamic> result;

  ResultPage({required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 255, 224),

      // appBar: AppBar(
      //   title: const Text('Result Page'),
      // ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
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
            SizedBox(height: 36),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (result.containsKey('error'))
                  Text(
                    result['error'],
                    style: const TextStyle(fontSize: 24, color: Colors.red),
                  )
                else ...[
                  const Text(
                    'Plant Species: ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${result['species'] ?? 'Unknown'}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 16),
                  const Text(
                    'Detected Disease(s): ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${result['disease'] ?? 'Unknown'}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 16),
                  const Text(
                    'Suggested Remedies: ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${result['remedy'] ?? 'Unknown'}',
                    style: TextStyle(fontSize: 18),
                  ),
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }
}
