import 'package:flutter/material.dart';

import '../models/calls_model.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: callsData.length,
        itemBuilder: (ctx, i) => Column(
          children: <Widget>[
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(callsData[i].avatarUrl),
              ),
              title: Text(callsData[i].name, style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Container(padding: const EdgeInsets.only(top: 5.0),
              child: Text(callsData[i].time),
              ),
              trailing: Icon(Icons.call, color: Theme.of(context).primaryColor,),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor, 
        child: Icon(Icons.add_call, color: Colors.white,),
        onPressed: () => print('Open Chats')
      ),
   );
  }
}