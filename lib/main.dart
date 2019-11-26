import 'package:flutter/material.dart';
import 'package:qrreadapp/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes:{
          'home':(BuildContext context)=>HomePage(),

      },
      //centralizar el tema
      //ctrl+space para ver todas las opciones
      theme: ThemeData(
        

        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(42, 42, 42, 1.0)

        )
        
      ),
    );
  }
}