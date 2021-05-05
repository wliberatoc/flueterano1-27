import 'package:flutter/material.dart';
import 'app_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  int counter = 0;
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network('https://png.pngtree.com/png-clipart/20190516/original/pngtree-users-vector-icon-png-image_3725294.jpg'),
              ),
                
              accountName: Text('Willian'), accountEmail: Text('wliberatoc@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('inicio'),
              subtitle: Text('tela home') ,
              onTap: (){
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Desafio de Layout'),
              subtitle: Text('desafio de layout aula 27 fluterando') ,
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/desafio_layout');
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text('Sair'),
              subtitle: Text('Finaliza sessão'),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitcher(),
        ],
      ),
      body: Container( 
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('contador: $counter'),
            CustomSwitcher(),
            Container(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center ,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                )
              ]
            ) 
          ] 
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value){
          AppController.instance.changeTheme();
      },
    );
          

  }
}