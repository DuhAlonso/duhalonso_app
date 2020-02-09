import 'package:flutter/material.dart';
import 'dart:html' as html;

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  link(){
    html.window.location.href = "https://github.com/DuhAlonso?tab=repositories";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EM CONSTRUÇÃO"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Stack(
            alignment: Alignment.center,
              children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("DuhAlonso", 
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
              SizedBox(height: 15),
              Text("Este site está sendo desenvolvido em flutter... Aguarde!", 
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.white
                ),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: link,
                child: Text("Clique aqui e veja meus repositorios", 
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.white
                  ),
                ),
              )
            ],
          )
        ]   
      ),
    ),
  ),
      
      backgroundColor: Colors.black,

    );
  }
}