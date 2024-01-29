import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page Form",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: "mail"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "mail"),
            ),
            TextButton(
                onPressed: () {
                  // Your button click logic here
                },
                child: Text('Press me',style: TextStyle(fontSize: 20,color: Colors.white),),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color?>(Colors.purple))),
          ],
        ),
      ),
    );
  }
}
