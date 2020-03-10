import 'package:flutter/material.dart';

import '../models/status_model.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold (
      body: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Theme.of(context).accentColor,
              backgroundImage: NetworkImage('https://images.pexels.com/photos/3727464/pexels-photo-3727464.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
            ),
            title: Text('My status', style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Container(padding: const EdgeInsets.only(top: 5.0),
            child: Text('Tap to add status update'),),
          ),
          // Container(
          //   padding: const EdgeInsets.only(right: 300),
          //   //margin: EdgeInsets.only(top: 100),
          //   child: Icon(Icons.add_circle, color: Theme.of(context).accentColor,),
          // ),
          Container(
            height: 25,
      decoration: BoxDecoration(
        color: Color.fromRGBO(230, 230, 230, 1),
        border: Border.all(width: 0, 
        color: Colors.grey,
        ),
      ),
      child: Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          Text('Recent updates', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
        ],
      ),
     ),
      Expanded(
          child: ListView.builder(
             itemCount: statusData.length,
             itemBuilder: (ctx, i) => Column(
               children: <Widget>[
                 
                 Divider(
                   height: 10.0,
                 ),
                 
                ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(statusData[i].avatarUrl),
                  ),
                  title: Text(statusData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                subtitle: Container(padding: const EdgeInsets.only(top: 5.0),
                child: Text(statusData[i].time),
                ),
               )
              ],
             ),
          ),
        ),
         Padding(
           padding: const EdgeInsets.only(bottom: 10, right: 20),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             
             children: <Widget>[
               FloatingActionButton(
        backgroundColor: Colors.white, 
        child: Icon(Icons.create, color: Colors.grey,),
        onPressed: () => print('Open Chats')
      ),
             ],
           ),
         ),
         SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.only(bottom: 20, right: 20),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: <Widget>[
               FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor, 
        child: Icon(Icons.camera_alt, color: Colors.white,),
        onPressed: () => print('Open Chats')
      ),
             ],
           ),
         ),
    ],
   ),
   
  
      
  );
    
    
  }
}