import 'package:flutter/material.dart';
import 'package:qrcode_reader/qrcode_reader.dart';
import 'package:qrreadapp/src/pages/direcciones_page.dart';
import 'package:qrreadapp/src/pages/mapas_page.dart';
import 'dart:developer';
//import 'package:qrcode_reader/qrcode_reader.dart';

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
        appBar: AppBar(
          title: Text("QR Scanner"),
          actions: <Widget>[
            IconButton(
              
              onPressed:(){},
              icon: Icon(
                Icons.delete_forever),
            )
          ],
        ),
        body: _callPage(_ind),
        bottomNavigationBar: _bottonNavigationBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: _scanQR,
          child: Icon(Icons.filter_center_focus ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
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

  _scanQR() async{
      // https://fernando-herrera.com
      // geo:40.724233047051705,-74.00731459101564

      // String futureString = '';
      String futureString;

      try {
       futureString = await new QRCodeReader().scan();
      } catch(e) {
       futureString = e.toString();
      }
      log("$futureString");
     if ( futureString != null ) {

       log("Encontrado");

    }
}
}