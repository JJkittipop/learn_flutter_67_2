//Step 4: sprate the home widget into a separate file
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

// Step 5 container, column,row , main axis, cross axis
  @override
  Widget build(BuildContext context) {
  //   return Column(
  //     //mainAxisAlignment: MainAxisAlignment.start,
  //     //mainAxisAlignment: MainAxisAlignment.center,
  //     //mainAxisAlignment: MainAxisAlignment.end,
  //     //mainAxisAlignment:  MainAxisAlignment.spaceBetween,
  //     //mainAxisAlignment: MainAxisAlignment.spaceAround,
  //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     mainAxisAlignment:  MainAxisAlignment.spaceBetween,
  //     crossAxisAlignment: CrossAxisAlignment.stretch,
  //     children: [
  //       Container(color: const Color.fromARGB(255, 248, 163, 5),
  //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
  //       child: Text(
  //         "Hello Flutter",
  //         style: TextStyle(
  //           fontSize: 20, 
  //           letterSpacing: 3,
  //           color: Colors.white,
  //       ),
  //       ),
  //       ),
  //        Container(color: const Color.fromARGB(255, 248, 163, 5),
  //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
  //       child: Text(
  //         "Hello Flutter",
  //         style: TextStyle(       
  //           fontSize: 20, 
  //           letterSpacing: 3,
  //           color: Colors.white,
  //       ),
  //       ),
  //       ),
  //        Container(color: const Color.fromARGB(255, 248, 163, 5),
  //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
  //       child: Text(
  //         "Hello Flutter",
  //         style: TextStyle(
  //           fontSize: 20, 
  //           letterSpacing: 3,
  //           color: Colors.white,
  //       ),
  //       ),
  //       ),
  //     ],
  //   );
  // }
  
  return Row(
      //mainAxisAlignment: MainAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.center,
      //mainAxisAlignment: MainAxisAlignment.end,
      //mainAxisAlignment:  MainAxisAlignment.spaceBetween,
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisAlignment:  MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(color: const Color.fromARGB(255, 248, 163, 5),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Text(
          "Hello ",
          style: TextStyle(
            fontSize: 20, 
            letterSpacing: 3,
            color: Colors.white,
        ),
        ),
        ),
         Container(color: const Color.fromARGB(255, 248, 163, 5),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Text(
          "Hello ",
          style: TextStyle(       
            fontSize: 20, 
            letterSpacing: 3,
            color: Colors.white,
        ),
        ),
        ),
         Container(color: const Color.fromARGB(255, 248, 163, 5),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Text(
          "Hello ",
          style: TextStyle(
            fontSize: 20, 
            letterSpacing: 3,
            color: Colors.white,
        ),
        ),
        ),
      ],
    );
  }
}