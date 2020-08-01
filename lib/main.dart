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
        primaryColor: Colors.green[200],
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
        level: 'Intermediate'),
    Workout(
        title: 'Test3',
        author: 'Anna3',
        description: 'Test Workout3',
        level: 'Preintermediate'),
    Workout(
        title: 'Test4',
        author: 'Anna4',
        description: 'Test Workout4',
        level: 'Advanced'),
    Workout(
        title: 'Test5',
        author: 'Anna5',
        description: 'Test Workout5',
        level: 'Master'),
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
                decoration:
                    BoxDecoration(color: Color.fromRGBO(50, 65, 85, 0.9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(Icons.fitness_center, color: Colors.white),
                    decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(width: 1, color: Colors.white)),
                    ),
                  ),
                  title: Text(
                    workouts[i].title,
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  trailing:
                      Icon(Icons.keyboard_arrow_right, color: Colors.white),
                  subtitle: subtitle(context, workouts[i]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget subtitle(BuildContext context, Workout workout) {
  var color = Colors.grey;
  double indicatorLevel = 0;

  switch (workout.level) {
    case 'Beginner':
      color = Colors.red;
      indicatorLevel = 0.23;
      break;
    case 'Intermediate':
      color = Colors.orange;
      indicatorLevel = 0.33;
      break;
    case 'Preintermediate':
      color = Colors.yellow;
      indicatorLevel = 0.53;
      break;
    case 'Advanced':
      color = Colors.blue;
      indicatorLevel = 0.76;
      break;
    case 'Master':
      color = Colors.green;
      indicatorLevel = 1;
      break;
  }

  return Row(
    children: <Widget>[
      Expanded(
        flex: 1,
         child: LinearProgressIndicator(
           backgroundColor: Colors.white,
           value: indicatorLevel,
           valueColor: AlwaysStoppedAnimation(color),
         )
         ),
      SizedBox(width: 20),
      Expanded(
        flex: 2,
        child: Text(
          workout.level,
          style: TextStyle(
                color: Colors.white, 
                fontWeight: FontWeight.bold),

         ),
        ),
      ],
  );
}
