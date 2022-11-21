import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/backend.dart';
import '../widgets/provincia_widget.dart';
import 'detail_screen.dart';
import '../model/provincia.dart';

class ListScreen extends StatefulWidget {


  const ListScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {


  
  
  var provincias = Backend().getProvincias();
 

  void showDetail( Provincia provincia) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen( provincia: provincia,);
    }));
    
    setState(() {
 
      provincias = Backend().getProvincias();
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), 
    
      ),


      
      body: ListView.separated(
        itemCount: provincias.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: primaryColor,
          indent: 40.0,
          endIndent: 20.0,
        ),
          itemBuilder: (BuildContext context, int index) => EmailWidget(
          provincia: provincias[index],
          onTap: showDetail,  
  
        ),
      
          
      ),  

    );  
  }
}
