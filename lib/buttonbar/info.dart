import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  // Function to open the default email app
  void _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'info@gmail.com',
      queryParameters: {
        'subject': 'Feedback for Recongizerhelper App',
        'body': 'Hello, I would like to provide some feedback...',
      },
    );

    if (await canLaunch(emailLaunchUri.toString())) {
      await launch(emailLaunchUri.toString());
    } else {
      // Handle error
      print('Could not launch email');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recongizerhelper App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Version: 0.0.1',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Ласкаво просимо до майбутнього розпізнавання обє*ктів - нашого нового мобільного застосунку, який змінить ваш погляд на світ навколо. Неважливо, чи ви любите фотографувати, досліджувати або просто цікавитесь оточуючим середовищем, наш застосунок вам точно сподобається.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: _launchEmail,
              child: Text('Contact Us'),
            ),
          ],
        ),
      ),
    );
  }
}
