import 'package:flutter/material.dart';
import 'package:loginwithgoogle/app_color.dart';
import 'package:loginwithgoogle/widgets.dart';

class HeartPage extends StatefulWidget {
  const HeartPage({super.key});

  @override
  State<HeartPage> createState() => _HeartPageState();
}

class _HeartPageState extends State<HeartPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: AllWidgets.customText(data: 'Heart Screen'),
      ),


    );
  }
}


