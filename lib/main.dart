import 'package:flutter/material.dart';
import 'package:flutter_application_1/formScreen.dart';
import 'package:flutter_application_1/providers/transaction_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

// create widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context){
          return TransactionProvider();
        })
      ],
      child: MaterialApp(
        title: "Jump App",
        home: MyHomePage(),
        theme: ThemeData(primarySwatch: Colors.purple),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;

  String title = "SOME APP";

  @override
  void initState() {
    super.initState();
    print("เรียกใช้งาน init State");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBar(
          title: Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FormScreen();
                }));
              },
            )
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, int index) {
            return const Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              color: Colors.red,
              child: ListTile(
                leading: CircleAvatar(
                  child: FittedBox(
                    child: Text("BBB"),
                  ),
                ),
                title: Text(
                  "Menu",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "20202020",
                  style: TextStyle(color: Color.fromARGB(255, 246, 214, 214)),
                ),
              ),
            );
          }),
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
