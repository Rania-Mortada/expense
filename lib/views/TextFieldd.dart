import 'package:flutter/material.dart';
class TextFieldExample extends StatefulWidget {
  @override
  _TextFieldExampleState createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  TextEditingController _controller = TextEditingController();
  List<String> textList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextField(
            controller: _controller,
            decoration: InputDecoration(labelText: 'Enter Text'),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                textList.add(_controller.text);
              });
            },
            child: Text('Print Text'),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: textList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(textList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }



}
