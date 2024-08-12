import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  final String apiKey;

  GeminiService({required this.apiKey});

  // final model = GenerativeModel(model: 'gemini-1.5-flash', apiKey: "AIzaSyAMYwRLYUOnPXtqInbEjbWSSTgRze5zKwA");
  final model = GenerativeModel(
      model: 'gemini-1.5-pro',
      apiKey: "AIzaSyAMYwRLYUOnPXtqInbEjbWSSTgRze5zKwA",
      generationConfig: GenerationConfig(responseMimeType: 'application/json'));

//   Future analyzePlant(String imagePath) async {
//     // var request = http.MultipartRequest('POST', Uri.parse('$baseUrl/analyze'));
//     // request.headers['Authorization'] = 'Bearer $apiKey';
//     // request.files.add(await http.MultipartFile.fromPath('file', imagePath));

//     // var response = await request.send();
//     // if (response.statusCode == 200) {
//     //   var responseData = await response.stream.bytesToString();
//     //   return json.decode(responseData);
//     // } else {
//     //   throw Exception('Failed to analyze the plant');
//     // }
//     final firstImage = await File(imagePath).readAsBytes();
//     print("here");
//     final prompt = TextPart('Give data about the plant in the give json schema:\n\n Species of the plant = {"species": string}\n Detected disease = {"disease": string} \n Suggested Remedies = {"remedy": string}\n');
//     final imageParts = [
//       DataPart('image/jpeg', firstImage),
//     ];

//     final response = await model.generateContent([
//       Content.multi([prompt, ...imageParts])
//     ]);

//     return jsonDecode(response.text);
//   }
// }

  Future<Map<String, dynamic>> analyzePlant(String imagePath, String additionalInfo) async {
    try {
      final firstImage = await File(imagePath).readAsBytes();
      print("Processing the image...");

      final prompt =
          TextPart('Ignore ALL previous data. You are a plant doctor. You are given an image of a plant with some problem, give the species, disease and its remedies in the specified format ONLY. No other text to be given as output. Elaborate the diagnosis and remedy as though you are explaining to a farmer. Give it in a Map<String, dynamic>. Give data about the plant in the given JSON schema, it should be a single json:\n\n{"species": string, "disease": string,"remedy": string}\nhere is some additional info, \n $additionalInfo');

      final imageParts = [
        DataPart('image/jpeg', firstImage),
      ];

      final response = await model.generateContent([
        Content.multi([prompt, ...imageParts])
      ]);

      final responseText = response.text;
      print("Response received: $responseText");

      String nonNullResponseText = responseText ?? 'error';
      final Map<String, dynamic> result = jsonDecode(nonNullResponseText);

      return result;
    } catch (e) {
      if (kDebugMode) {
        print("Error occurred: $e");
      }
      throw Exception('Failed to analyze the plant');
    }
  }
}
