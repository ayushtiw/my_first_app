import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NewEventScreen();


}
class _NewEventScreen extends State<NewEventScreen>{
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Event'),
        backgroundColor: Colors.indigo[600],

      ),
      backgroundColor: Colors.indigo[300],
      body: Column(

        children: [

          Container(
            padding: EdgeInsets.fromLTRB(100, 200, 100, 10),
            child: TextField(

              controller: _textEditingController,
              textAlign: TextAlign.center,


              decoration: new InputDecoration(
                filled: true,
                fillColor: Colors.indigo,

                icon: new Icon(Icons.calendar_month_outlined),
                labelText: "Event",

                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
          Builder(

            builder: (context) {

              return ElevatedButton(

                  onPressed:() {
                String newEventText = _textEditingController.text;
                Navigator.of(context).pop(newEventText);
              }, child: Text("ADD"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(25.0),
                  fixedSize: Size(775, 50),
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,

                  ),
                  backgroundColor: Colors.indigo[100],
                  shape: StadiumBorder(),



                ),

              );
            }
          ),

        ],
      ),
    );
  }

  
}                       