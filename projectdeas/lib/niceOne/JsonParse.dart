import 'package:flutter/material.dart';
import 'Password.dart';
import 'Services.dart';
import 'Events.dart';


class JsonParse extends StatefulWidget {

    JsonParse() : super ();

  @override
  _JsonParseState createState() => _JsonParseState();
}

class _JsonParseState extends State<JsonParse> {
  //
  List<Events> _events;
  bool _loading;


  @override
  void initState() {
    super.initState();
    _loading = true;
   Services.getEvents().then((events) {

        setState(() {

           _events = events;
           _loading = false;
          
        });

       
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(_loading ? 'Loading...' : 'Events'),
        ),
        body: Container(
          color: Colors.white,
          child: ListView.builder(
            itemCount: null == _events ? 0 : _events.length,
            itemBuilder: (context, index){
              Events event =_events[index];
              return Card(
                 margin: new EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
                 elevation: 15.0,
                child: new InkWell(
                  splashColor: Colors.black12,       
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>  MyPass()),
                    );
                  // insert student_monitor_Id for password;
                  },   
                child: Container(
                  padding: new EdgeInsets.all(25.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                     <Widget>[
                      new Text(event.eventName, style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),), 
                      new Column(
                        children: <Widget>[],
                      ),                 
                      new Text('Time In: '+event.eventTimeIn, style: TextStyle(fontSize: 17.0) ,),                    
                      new Text('Duration: '+event.eventTimeInDuration+'min.', style: TextStyle(fontSize: 17.0), ),                       
                      new Text('Time Out: '+event.eventTimeOut, style: TextStyle(fontSize: 17.0), ),                      
                      new Text('Duration: '+event.eventTimeOutDuration+'min.', style: TextStyle(fontSize: 17.0), ),                  
                      new Text('Date: '+event.eventDate, style: TextStyle(fontSize: 17.0), ),
                      new Text('Student Assigned: '+event.studentMonitorId, style: TextStyle(fontSize: 17.0), ),
                     
                    ],
                  ),
                 
                ),
              ),
              );
            }
            ),
        ) ,
    );
  }
}