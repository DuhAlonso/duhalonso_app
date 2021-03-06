import 'package:duhalonso/pages/contact_page.dart';
import 'package:duhalonso/widgets/flatbuttons_home.dart';
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

  Future contactPageLink(){
    return Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => ContactPage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("EM CONSTRUÇÃO"),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back.png'),
                fit: BoxFit.cover,
                
              )
            ),
          ),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.8),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Seja bem-vindo(a) ao meu portfólio!',
              textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10),
              Text('Tenha paciência, ainda está em construção.',
              textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButtonHome(title: 'CONTATO', onClick: contactPageLink),
                    FlatButtonHome(title: 'REPOSITÓRIOS', onClick: link),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}