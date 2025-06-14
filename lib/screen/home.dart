//Step 4: sprate the home widget into a separate file
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

// Step 5 container, column,row , main axis, cross axis
  @override
  Widget build(BuildContext context) {
    // Step 6: Image widgets
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
  Image.asset("assets/images/Dogs.jpg", width: 150, height: 150),
  const SizedBox(height: 10),
  Image.network(
    "https://th.images.search.yahoo.com/search/images;_ylt=Awrx.HisK01oQ94DAImdSwx.;_ylu=c2VjA3NlYXJjaARzbGsDYnV0dG9u;_ylc=X1MDMjExNDczNTAwNQRfcgMyBGZyA21jYWZlZQRmcjIDcDpzLHY6aSxtOnNiLXRvcARncHJpZANXVFJjU3drOFRicXpvNzZxUHRCNjRBBG5fcnNsdAMwBG5fc3VnZwMxMARvcmlnaW4DdGguaW1hZ2VzLnNlYXJjaC55YWhvby5jb20EcG9zAzAEcHFzdHIDBHBxc3RybAMwBHFzdHJsAzYEcXVlcnkDJUUwJUI4JTk1JUUwJUI5JTg5JUUwJUI4JTk5JUUwJUI5JTg0JUUwJUI4JUExJUUwJUI5JTg5BHRfc3RtcAMxNzQ5ODg3OTI2?p=%E0%B8%95%E0%B9%89%E0%B8%99%E0%B9%84%E0%B8%A1%E0%B9%89&fr=mcafee&fr2=p%3As%2Cv%3Ai%2Cm%3Asb-top&ei=UTF-8&x=wrt&type=E210TH91215G0&imgsz=small#id=6&iurl=https%3A%2F%2Flookaside.fbsbx.com%2Flookaside%2Fcrawler%2Fmedia%2F%3Fmedia_id%3D100067733019737&action=click",
    width: 150,
    height: 150,
  )
  ],
);
  }
}