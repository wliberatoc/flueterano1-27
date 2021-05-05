import 'package:flutter/material.dart';

class DesafioLayoutPage extends StatefulWidget {
  @override
  _DesafioLayoutPageState createState() => _DesafioLayoutPageState();
}

class _DesafioLayoutPageState extends State<DesafioLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.red[300],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,  
                height: 150,
                child: Image.asset('assets/imagens/tinder.png'),
              ),
              Container(height: 30,),
              Text('Location Changer', style: TextStyle(fontSize: 25, color: Colors.white),),
              Container(height: 10,),
              Text('Pag of the Tinder', style: TextStyle(fontSize: 15, color: Colors.white),),
              Container(height: 30,),
              // ignore: deprecated_member_use
              RaisedButton(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),),
                textColor: Colors.red[300],
                color: Colors.white,
                onPressed: (){
                  print('ainda em produção');
                },           
                child: Text('Sing in our creat'),
              ),
            ],
          )
          // _body(),          
        ],
      )
    );
  }
}