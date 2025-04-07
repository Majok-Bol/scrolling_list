import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DynamicList(),
    );
  }
}
class DynamicList extends StatefulWidget{
   const DynamicList({super.key});
  @override
DynamicListState createState()=>DynamicListState();
}
class DynamicListState extends State<DynamicList>{
  List<String>items=['item 1','item 2'];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title: Text('Scrollable list',style: TextStyle(color: Colors.white,fontSize: 25),),centerTitle: true,backgroundColor: Colors.purple,),
      body: ListView.builder(
        itemCount: items.length,
          itemBuilder: (context,index){
          return ListTile(
            title: Text(items[index]),
            trailing: IconButton(onPressed:(){
              setState(() {
                items.removeAt(index);
              });
            }, icon:Icon(Icons.delete)),
          );


      }),
      floatingActionButton: FloatingActionButton(onPressed:(){
        setState(() {
          items.add('Item ${items.length +1}');
        });
        
        
      },child: Text('+',style: TextStyle(fontSize: 25),),),
  

    );
    
  }

  }
