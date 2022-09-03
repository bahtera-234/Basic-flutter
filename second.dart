import 'package:flutter/material.dart';
import 'package:myapp/next.dart';
import 'package:myapp/third.dart';
import 'package:myapp/home.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // backgroundColor: Colors.purple, //background color certain page
      body: Center(
        child: ElevatedButton(
          child: const Text('Next'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NextPage()),
            );
          }, //action
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
          ),
        ),
      ),
    );
  }
}
