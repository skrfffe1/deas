
import 'package:flutter/material.dart';
import 'Events.dart';

void main() {
  runApp(MaterialApp(
    home: MyPass(),
  ));
}


class MyPass extends StatefulWidget {

  MyPass() : super();

  @override
  _MyPassState createState() => _MyPassState();
}

class _MyPassState extends State<MyPass> {

 List<Events> event;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        
      ),
      body: new Container(
        margin: new EdgeInsets.only(top: 100.0),
        child: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            TextFormField(            
              autofocus: false,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.black12,
                border: UnderlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            RaisedButton(
              onPressed: (){              
                  
                            
              },
              child: const Text('Enter'),
              ),
          ],
        )
      ) ,
        )
      
    );
  }
}