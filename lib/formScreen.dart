import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBar(
          title: Text(
            "Page Form",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
            decoration: new InputDecoration(labelText: "mail"),
          ),
          TextFormField(
            decoration: new InputDecoration(labelText: "mail"), 
          ),
          FloatingActionButton(onPressed: null,child:Text("addData"))
        ],
      )),
    );
  }
}
