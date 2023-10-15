import 'package:flutter/material.dart';


class BugReportPage extends StatefulWidget {
  @override
  _BugReportPageState createState() => _BugReportPageState();
}

class _BugReportPageState extends State<BugReportPage> {
  final TextEditingController _bugDetailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bug Report'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Please provide details about the bug:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _bugDetailsController,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Bug Details',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _submitBugReport();
              },
              child: Text('Submit Bug Report'),
            ),
          ],
        ),
      ),
    );
  }

  void _submitBugReport() {
    String bugDetails = _bugDetailsController.text;
    
    print('Bug Details: $bugDetails');

  }
}
