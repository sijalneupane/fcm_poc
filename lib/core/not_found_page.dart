import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  final String path;
  const NotFoundPage(this.path, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("404 - Not Found")),
      body: Center(
        child: Text("Oops! The page '$path' does not exist."),
      ),
    );
  }
}
