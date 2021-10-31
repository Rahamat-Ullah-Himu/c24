import 'package:c24/Homepage.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const c24());
}

class c24 extends StatelessWidget {
  const c24({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
