import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body:DynamicList(),
      )

    );
  }
}
class DynamicList extends StatelessWidget{
  return Container(
  )
}