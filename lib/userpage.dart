import 'package:flutter/material.dart';
import 'package:loginwithgoogle/widgets.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: AllWidgets.customText(data: 'User Page Screen'),
      ),
    );
  }
}
