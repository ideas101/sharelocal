import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // shadowColor: Colors.black,
        // elevation: 4,
        leading: GestureDetector(
          child: const Icon(
            Icons.close,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Text('Page 2'),
      ),
    );
  }
}
