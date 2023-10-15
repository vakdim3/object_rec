import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:translator/translator.dart';



class TranslationPage extends StatefulWidget {
  @override
  _TranslationPageState createState() => _TranslationPageState();
}
class _TranslationPageState extends State<TranslationPage> {
  final TextEditingController _inputController = TextEditingController();
  String _outputText = '';

  void _translate() async {
    final translator = GoogleTranslator();

    // Translating from English to Ukrainian
    Translation translation = await translator.translate(
      _inputController.text,
      from: 'en',
      to: 'uk',
    );

    setState(() {
      _outputText = translation.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _inputController,
              decoration: InputDecoration(
                labelText: 'Enter text in English',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _translate();
              },
              child: Text('Translate'),
            ),
            SizedBox(height: 20),
            Text(
              'Translation:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              _outputText,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}