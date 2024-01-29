import 'package:flutter/material.dart';
import 'package:flutter_application_1/formScreen.dart';

void main() {
  runApp(MyApp());
}

// create widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: "Jump App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int number=0;

  String title = "SOME APP";

  @override
  void initState(){
    super.initState();
    print("เรียกใช้งาน init State");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: AppBar(
            title: Text(title,style: TextStyle(fontSize: 20),),
            actions: [
              IconButton(
              icon: Icon(Icons.add),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context){
                  return FormScreen();
                }));
              }, 
                )
            ],
          ),
        ),
        body: Container(),

    );
  }
  // display data on widget
  // @override
  // Widget build(BuildContext context) {
  //   print("เรียกใช้งาน Build");
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: Text("My Accounting",
  //             style: TextStyle(
  //                 fontSize: 30,
  //                 color: Colors.black,
  //                 fontWeight: FontWeight.bold)),
  //       ),
  //       body: Column(children: [
  //         Text(number.toString(),style:TextStyle(fontSize:30),)
  //       ],
  //       ),
  //       floatingActionButton: FloatingActionButton(
  //         onPressed: (){
  //           setState(() {
  //             number++;
  //           });
  //         },
  //         child: Icon(Icons.add),
  //       ),
  //       );
  // }

}
