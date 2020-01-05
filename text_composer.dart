import 'package:flutter/material.dart';

class TextComposer extends StatefulWidget {
  @override
  _TextComposerState createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer> {

  bool _isComposing = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera),
            onPressed: (){

            },
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: 'Enviar uma Mensagem'),
              onChanged: (text){
                setState(() {
                  _isComposing = text.isNotEmpty;
                });
              },
              onSubmitted: (text){

              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: _isComposing ? (){

            } : null,
          ),
        ],
      ),
    );
  }
}
