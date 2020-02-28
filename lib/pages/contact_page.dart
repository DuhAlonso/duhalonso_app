import 'package:duhalonso/widgets/flatbuttons_home.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class ContactPage extends StatefulWidget {

  @override
  _ContactPageState createState() => _ContactPageState();
}

  linkedInLink(){
    html.window.location.href = "https://www.linkedin.com/in/duhalonso";
  }
  telegramLink(){
    html.window.location.href = "https://t.me/duhalonso";
  }

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Contato"),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/contact_back.jpg'),
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
              Text('Gostou do meu trabalho?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10),
              Text('Fique à vontade para entrar em contato.',
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
                    FlatButtonHome(title: 'LinkedIn', onClick: linkedInLink),
                    FlatButtonHome(title: 'Telegram', onClick: telegramLink),
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