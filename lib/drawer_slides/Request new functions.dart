import 'package:flutter/material.dart';



class FeatureRequestPage extends StatefulWidget {
  @override
  _FeatureRequestPageState createState() => _FeatureRequestPageState();
}

class _FeatureRequestPageState extends State<FeatureRequestPage> {
  final TextEditingController _functionDetailsController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feature Request'),
        backgroundColor: Colors.teal, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Please provide details about the new function:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _functionDetailsController,
              maxLines: 5,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelText: 'Function Details',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _submitFunctionRequest();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, 
                textStyle: TextStyle(color: Colors.white), 
              ),
              child: Text('Submit Function Request'),
            ),
          ],
        ),
      ),
    );
  }

  void _submitFunctionRequest() {
    String functionDetails = _functionDetailsController.text;
    print('Function Details: $functionDetails');
  }
}
