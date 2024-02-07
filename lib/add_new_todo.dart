import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewTodo extends StatefulWidget {
  const AddNewTodo({super.key});

  @override
  State<AddNewTodo> createState() => _AddNewTodoState();
}

class _AddNewTodoState extends State<AddNewTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create contact"),leading: Icon(Icons.dangerous_outlined),),body:
      Padding(padding: EdgeInsets.all(20),child: Center(child:
        Column(children: [
          CircleAvatar(radius: 70,
          backgroundImage: AssetImage("images/nafi.png")
          
          ),SizedBox(height: 10,),Text("Add a Photo"),
            
          TextField(),TextField()
        ],),),),
    );
  }
}
