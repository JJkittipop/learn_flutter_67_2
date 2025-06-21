import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2/screen/item.dart';

// Step 4: sperate the home widget into a separate file
import 'screen/home.dart';
import 'package:learn_flutter_67_2/screen/home.dart';

void main() {
  // Step 1: appBar and body
  // runApp(const MyApp());
  // const app = MaterialApp(title: "My Title", home: Text("Hello World"));
  // runApp(app);
  // runApp(
  //  MaterialApp(
  //    title: "My Title",
  //     home: Scaffold(
  //       appBar: AppBar(
  //       title: Text("My App"),
  //       backgroundColor: Colors.pinkAccent,
  //       centerTitle: true,
  //      ),
  //      body: Text("Hello Flutter"),
      
  //    )
  //   )
  // );


  // STEP 2:  stateless widget
  var scaffold = Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body:  Item(),
      );
  runApp(
    MaterialApp(
      title: "My Title",
      home: scaffold,
    ),
  );
}

