import 'package:flutter/material.dart';
import 'package:notepadflutter/models/NotesOperation.dart';
import 'package:notepadflutter/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(
      create: (context) => NotesOperation(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
