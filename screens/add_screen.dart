import 'package:flutter/material.dart';
import 'package:notepadflutter/models/NotesOperation.dart';
import 'package:provider/provider.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String titleText;
    String descriptionText;
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Notas'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Entre com o Titulo',
                hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              onChanged: (value) {
                titleText = value;
              },
            ),
            Expanded(
              child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Entre com a descrição',
                    hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  onChanged: (value) {
                    descriptionText = value;
                  }),
            ),
            FlatButton(
              onPressed: () {
                Provider.of<NotesOperation>(context, listen: false)
                    .addNewNote(titleText, descriptionText);
                Navigator.pop(context);
              },
              color: Colors.white,
              child: Text(
                'Adicionar Nota',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
