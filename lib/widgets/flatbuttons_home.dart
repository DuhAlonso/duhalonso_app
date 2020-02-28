import 'package:flutter/material.dart';

class FlatButtonHome extends StatelessWidget {

  final String title;
  final Function onClick;

  FlatButtonHome({@required this.title, @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onClick, 
      child: Text(title,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white
        ),
      )
    );
  }
}