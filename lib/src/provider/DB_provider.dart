import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBprovider{

  static Database _database;
  static final DBprovider db = DBprovider._();

  DBprovider._();

  Future <Database> get  ()async{

      if(_database != null) return _database;

      _database = await initDB();
      return _database;

  }

  Future <Database> initDB() async{

    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path,"dbSacn.db");

    return await openDatabase(
      path,
      version: 1,
      onOpen: (db){},
      onCreate: (Database db,int version )async{
          await db.execute(
            'CREATE TABLE Scans ('
            'id INTEGER PRIMARY KEY,'
            'tipo TEXT,'
            'valor TEXT'
            ')'

          );

      }

    );




  }

}

