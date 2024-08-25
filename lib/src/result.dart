import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_code_scanner/src/types/barcode.dart';

class ScanResultPage extends StatelessWidget {
  final TextEditingController textController = TextEditingController();

  ScanResultPage({super.key, required Barcode result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Copy to Clipboard Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: textController,
              decoration: InputDecoration(
                hintText: 'Enter text to copy',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              ),
            ),
            SizedBox(height: 20), // Add space between the text field and button
            ElevatedButton(
              onPressed: () async {
                final String textToCopy = textController.text;
                if (textToCopy.isNotEmpty) {
                  try {
                    await Clipboard.setData(ClipboardData(text: textToCopy));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Copied to Clipboard!')),
                    );
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Failed to copy to clipboard.')),
                    );
                  }
                }
              },
              child: const Text('Copy to Clipboard'),
            ),
          ],
        ),
      ),
    );
  }
}