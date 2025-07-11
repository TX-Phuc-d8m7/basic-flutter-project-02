import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen A")),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Screen B"),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/screenB',
              arguments: "Hello from Screen A",
            );
          },
        ),
      ),
    );
  }

  Widget titlePage() {
    return Container(child: Text("Screen A"));
  }

  Widget bodyPage() {
    return Container(child: Text("Screen A"));
  }
  
}
