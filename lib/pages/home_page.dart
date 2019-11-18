import 'package:flutter/material.dart';
import 'package:qrreadapp/pages/direcciones_page.dart';
import 'package:qrreadapp/pages/mapas_page.dart';
import 'package:qrcode_reader/qrcode_reader.dart';

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
          onPressed: (){
            _scanQR();
          },
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

  void _scanQR() {
    print("scan");
  }
}