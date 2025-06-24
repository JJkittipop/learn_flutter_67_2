import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2/screen/addForm.dart';
import 'package:learn_flutter_67_2/screen/item.dart';

// Step 4: sperate the home widget into a separate file
import 'screen/home.dart';
import 'package:learn_flutter_67_2/screen/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: "My Title",
      home: const AddForm(),  // ครอบด้วย MaterialApp แล้ว
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    ),
  );
}
