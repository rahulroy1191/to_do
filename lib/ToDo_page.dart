import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/add_new_todo.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search contacts and places"),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: Colors.grey,
        leading: IconButton(onPressed: () {}, icon: (Icon(Icons.search))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            children: [
              Expanded(
                  flex: 10,
                  child: Row(
                    children: [
                      IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewTodo()));}, icon: Icon(Icons.person)),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Create new contact")
                    ],
                  )),
              Expanded(
                flex: 90,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) =>
                      ListTile(
                          title: Text("Rahul Roy"),
                      subtitle: Text("017400099641"),trailing: Wrap(children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                      ]),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
