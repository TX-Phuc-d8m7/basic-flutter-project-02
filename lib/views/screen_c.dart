import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String data = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text("Screen B")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Go Back with Result"),
              onPressed: () {
                Navigator.pop(context, "Result from Screen B");
              },
            ),
          ],
        ),
      ),
    );
  }
}
