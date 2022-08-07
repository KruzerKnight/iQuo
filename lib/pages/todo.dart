import 'package:flutter/material.dart';
import 'package:iquo/taskWidgets/tasks_list.dart';
import 'adding_screen.dart';

class TaskSScreen extends StatelessWidget {
  static String id = 'todo';


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff33ccff),
              Color(0xff),
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff124192),
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(context: context,builder: (context) => AddTask());
          },
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 70, left: 35, right: 35, bottom: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Color(0xff144292),
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    'I-Todo',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 50.0,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}






