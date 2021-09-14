import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter ListView",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Basic List view"),
      ),
      body: getListView(),
    ),
  ));
}

Widget getListView() {
  var listView = ListView(
    padding: EdgeInsets.all(10.0),
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.accessibility_new_rounded),
        title: Text("Human box"),
        subtitle: Text("Sub title "),
        trailing: Icon(Icons.whatshot_outlined),
        onTap: (){
          debugPrint("human Box clicked");
        },
      ),
      ListTile(
        leading: Icon(Icons.phone_android),
        title: Text("Phone details"),
        subtitle: Text("contact history "),
        onTap: (){
          debugPrint("contact clicked");
        },
      ),
      ListTile(
        leading: Icon(Icons.account_box_outlined),
        title: Text("Profile box"),
        onTap: (){
          debugPrint("profile clicked");
        },
      ),
      Text("Some other Element in List view"),
      Container(color: Colors.deepOrange, height: 50.0,),
    ],
  );
  return listView;
}
