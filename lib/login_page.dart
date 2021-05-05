
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  Widget _body(){
    return Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,  
                    height: 150,
                    child: Image.asset('assets/imagens/logo.png'),
                  ),
                  Container(height: 20,),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (text){
                              email = text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder()
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            onChanged: (text){
                              senha = text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'senha',
                              border: OutlineInputBorder()
                            ),
                          ),
                          SizedBox(height: 10),
                          // ignore: deprecated_member_use
                          RaisedButton(
                            textColor: Colors.white,
                            color: Colors.red,
                            onPressed: (){
                              if(email == 'will' && senha == '123'){
                                Navigator.of(context).pushReplacementNamed('/home');
                              }else{
                                print('erro');
                              }
                            },           
                            child: Text('Entrar'),
                          )
                        ]
                      ),
                    ), 
                  ),
                ],
              ),
            ),
          ),
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         SizedBox(
           height: MediaQuery.of(context).size.height,
           child: Image.asset('assets/imagens/background.jpg', fit: BoxFit.cover)
          ), 
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          _body(),          
        ],
      )
    );
  }
}