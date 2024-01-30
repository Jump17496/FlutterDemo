import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext formScreenContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page Form",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "mail"),
                autofocus: true,
                 keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "mail"),
                keyboardType: TextInputType.number,
              ),
              TextButton(
                  onPressed: () {
                    // Your button click logic here
                    Navigator.pop(formScreenContext);
                  },
                  child: Text('Log In',style: TextStyle(fontSize: 20,color: Colors.white),),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color?>(Colors.purple))),
            ],
          ),
        ),
      ),
    );
  }
}
