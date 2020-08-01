import 'package:flutter/material.dart';
import 'domain/workout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitnes tracker',
      theme: ThemeData(
        primaryColor: Colors.green,
        // textTheme: TextTheme(title: TextStyle(color: Colors.white))
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text("FitTrak"),
          leading: Icon(Icons.swap_horizontal_circle),
        ),
        body: WorkoutList(),
      ),
    );
  }
}

class WorkoutList extends StatelessWidget {
  final workouts = <Workout>[
    Workout(
        title: 'Test1',
        author: 'Anna1',
        description: 'Test Workout1',
        level: 'Beginner'),
    Workout(
        title: 'Test2',
        author: 'Anna2',
        description: 'Test Workout2',
        level: 'Beginner'),
    Workout(
        title: 'Test3',
        author: 'Anna3',
        description: 'Test Workout3',
        level: 'Beginner'),
    Workout(
        title: 'Test4',
        author: 'Anna4',
        description: 'Test Workout4',
        level: 'Beginner'),
    Workout(
        title: 'Test5',
        author: 'Anna5',
        description: 'Test Workout5',
        level: 'Beginner'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: ListView.builder(
          itemCount: workouts.length,
          itemBuilder: (context, i) {
            return Card(
              elevation: 2.0,
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(50, 65, 85, 0.9)),
                child: ListTile(
                  title: Text(
                    workouts[i].title,
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
