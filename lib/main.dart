import 'package:flutter/material.dart';

import 'new_event.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyApp();




}
class _MyApp extends State<MyApp>{
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Event Scheduler"),
          backgroundColor: Colors.indigo[600],
        ),
        body:


            ListView.builder(
                  padding: EdgeInsets.all(25.0),
                shrinkWrap: true,
                itemCount: _list.length,
                itemBuilder:((context, index) {
                  return Center(
                    child: Container(
                      color: Colors.grey[200],
                      height: 100,
                      width: 750,

                      padding: EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: Icon(Icons.add_box_outlined),
                        title: _list[index],
                        contentPadding: EdgeInsets.all(10.0),

                      ),

                    ),
                  );
                }
                ),


            ),


            backgroundColor: Colors.indigo[300],
            floatingActionButton: Builder(
              builder: (context) {
                return FloatingActionButton(
                  onPressed: () async {

                   String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
                   setState(() {
                     _list.add(Text(newText));
                   });

                  },
                  child: Icon(Icons.add),
                  backgroundColor: Colors.indigo[600],
                );
              }
            ),

      ),
    );
  }

}


