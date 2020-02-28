import 'package:flutter/material.dart';

class RepositorieTile extends StatelessWidget {
 
  final Map repositori;

  //RepositorieTile({@required this.name, @required this.description, @required this.language, @required this.url});
  RepositorieTile(this.repositori);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(repositori['name'],
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }
}