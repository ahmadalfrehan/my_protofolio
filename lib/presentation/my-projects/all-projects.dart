import 'package:flutter/material.dart';

class AllProjects extends StatelessWidget {
  const AllProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Projects'),
      ),
      body: const Center(
        child: Text('all Projects'),
      ),
    );
  }
}
