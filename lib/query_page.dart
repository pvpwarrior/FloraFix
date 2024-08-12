import 'dart:io';

import 'package:flutter/material.dart';
import 'result_page.dart';
import 'gemini_service.dart';

class QueryPage extends StatelessWidget {
  final String imagePath;

  QueryPage({required this.imagePath});

  final GeminiService geminiService = GeminiService(
    apiKey:
        'AIzaSyCL9XqiKO15b7lVftAtStwZVwDSvIBcMYU', // Replace with your actual API key
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 255, 224),
      // appBar: AppBar(
      //   title: const Text('Query Page'),
      //   centerTitle: true,
      // ),
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
              child: imagePath != ""
                  ? Image.file(File(imagePath))
                  : const Text('No image captured',
                      style: TextStyle(fontSize: 24)),
            ),
            const SizedBox(height: 16),
            const TextField(
              cursorColor: Color.fromARGB(255, 52, 199, 89),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.0),
                ),
                labelText: 'Enter additional info',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 52, 199, 89), width: 1.0),
                ),
              ),
              maxLines: 5,
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor:
                      Color.fromARGB(255, 205, 237, 163), // Text color
                ),
                onPressed: () async {
                  Map<String, dynamic> result;
                  try {
                    result = await geminiService.analyzePlant(imagePath);
                  } catch (e) {
                    result = {
                      'error': 'Failed to analyze the image. Please try again.'
                    };
                  }

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        result: result,
                      ),
                    ),
                  );
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
