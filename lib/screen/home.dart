import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final commonStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );

    final buttonSize = const Size(150, 50);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
              minimumSize: buttonSize,
            ),
            onPressed: () {
              print("TextButton Clicked");
            },
            child: Text("Click Me!", style: commonStyle),
          ),
          const SizedBox(height: 10),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              minimumSize: buttonSize,
            ),
            onPressed: () {
              print("FilledButton Clicked");
            },
            child: Text("Click Me!", style: commonStyle),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.red,
              side: const BorderSide(color: Colors.red, width: 2),
              minimumSize: buttonSize,
            ),
            onPressed: () {
              print("OutlinedButton Clicked");
            },
            child: Text("Click Me!", style: commonStyle),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 194, 1, 120),
              foregroundColor: const Color.fromARGB(255, 251, 255, 13),
              minimumSize: buttonSize,
            ),
            onPressed: () {
              print("ElevatedButton Clicked");
            },
            child: Text("Click Me!", style: commonStyle),
          ),
        ],
      ),
    );
  }
}
