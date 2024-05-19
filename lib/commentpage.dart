import 'package:flutter/material.dart';
import 'package:loginwithgoogle/widgets.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({super.key});

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: AllWidgets.customText(data: 'Comments Screen'),
      ),
    );
  }
}

