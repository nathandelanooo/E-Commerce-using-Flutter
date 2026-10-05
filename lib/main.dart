import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const ProjectUtsApp());
}

class ProjectUtsApp extends StatelessWidget {
  const ProjectUtsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
