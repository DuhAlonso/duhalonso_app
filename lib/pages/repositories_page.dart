import 'package:duhalonso/widgets/repositories_tile.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map repositories;

  Future<Map> getRepositories() async {
    http.Response response = await http.get('https://api.github.com/users/duhalonso/repos');
  
    return repositories = json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EM CONSTRUÇÃO"),
        centerTitle: true,
      ),
      body: Container(),
      backgroundColor: Colors.black,
    );
  }
}