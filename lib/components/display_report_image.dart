import 'package:flutter/material.dart';
import 'package:gemini/components/constants.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'dart:io';
import 'dart:typed_data';

class displayReportImage extends StatefulWidget  {
  final String fileUrl;
  final String imageUrl;

  //constructor with required parameters
  const displayReportImage({
    required this.fileUrl,
    required this.imageUrl});

  @override
  displayReportImageState createState() => displayReportImageState();
}

class displayReportImageState extends State<displayReportImage> {
  final Color mint = Color.fromARGB(255, 162, 228, 184);
  // void geminiAnalyze() async {
  //   final apiKey = 'AIzaSyDc8aYbZAgj1ZH5zKUUgD7y7JfZNYpNkpI';
  //   final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey!);
  //   final prompt = 'You are an image-to-text converter. Please take this image and convert it to text, exactly as in the photo.';
  //   try {
  //     final Uint8List raw_file = await supabase
  //       .storage
  //       .from('report_images')
  //       .download(widget.fileUrl);
      
  //     final imageBytes = await File.fromRawPath(raw_file).readAsBytes();
  //     final convertedText = [
  //        Content.multi([
  //         TextPart(prompt),
  //         DataPart('image/png', imageBytes),
  //     ])];
      
  //     final response = await model.generateContent(convertedText);
  //     print(response.text);
  //   } catch (error)  {
  //     //TODO
  //   }
  //  }
  
    @override
    Widget build(BuildContext context) {
      return MaterialButton(
          hoverColor: mint,
          onPressed: () {print("Pressed!");},
          child: Row(
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: 
              Image.network(
                      widget.imageUrl,
                      fit: BoxFit.cover,
                    )
            ),
            SizedBox(
              width: 150,
              height: 150,
              child: Text(widget.fileUrl)
            )
          ], 
        )
      );
    }
}