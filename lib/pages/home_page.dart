import 'package:flutter/material.dart';
import 'package:qrreadapp/pages/direcciones_page.dart';
import 'package:qrreadapp/pages/mapas_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int  _ind =0;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Scaffold(
        body: _callPage(_ind),
        bottomNavigationBar: _bottonNavigationBar(),
      ),
    );
  }

  BottomNavigationBar _bottonNavigationBar() {
    
    return BottomNavigationBar(
      
      
      currentIndex: _ind,
      onTap: (index){
        setState(() {_ind=index;});
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.map),title: Text("Mapa")),
        BottomNavigationBarItem(icon: Icon(Icons.directions),title: Text("Direcciones")),
        
      ],


    );
  }

  Widget _callPage(int pagActual) {

    switch(pagActual){

      case 0:
        return MapasPage();
      case 1:
        return DireccionesPage();
      default: 
        return MapasPage();

    }
  }
}