import 'package:flutter/material.dart';
import 'package:myapp/imagepage.dart';
import 'package:myapp/second.dart';
import 'package:myapp/app_drawer.dart';

class Home extends StatefulWidget {
  const Home([Key? key]) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromRGBO(156,204,101, 1),
      //background color of Appbar to green
      title: Text("Time2Study"),
      actions: <Widget>[
          IconButton( 
             icon: Icon(Icons.search),
             onPressed: (){
                 //action for search icon button
             },
          ),

          IconButton( 
             icon: Icon(Icons.person),
             onPressed: (){
                 //action for user icon button
             },
          )
      ],
      ),
      drawer: exampleDrawer(),
      body: Container(
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImagePage()),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                          radius: 30.0, backgroundColor: Colors.purple),
                      title: Text("Asyahira"),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
