import 'package:flutter/material.dart';

class PTranslationPage extends StatelessWidget {
  final Map<String, String> wordTranslations = {
    'background': 'фон',
    'tench': 'тинга',
    'goldfish': 'золота рибка',
    'great white shark': 'велика біла акула',
    'tiger shark': 'тигрова акула',
    'hammerhead': 'молотоголова акула',
    'electric ray': 'електрична ската',
    'stingray': 'ската',
    'cock': 'півень',
    'hen': 'курка',
    'ostrich': 'страус',
    'brambling': 'зяблик',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word Translations'),
      ),
      body: ListView.builder(
        itemCount: wordTranslations.length,
        itemBuilder: (context, index) {
          final word = wordTranslations.keys.elementAt(index);
          final translation = wordTranslations[word];

          return ListTile(
            title: Text(word),
            subtitle: Text(translation!),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PTranslationPage(),
  ));
}
