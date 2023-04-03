import 'package:flutter/material.dart';
import 'Progress.dart';

Container workoutNames(String name) {
  return Container(
    color: Colors.blue[300],
    width: 300,
    child: Text(
      "$name",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16),
    ),
  );
}

class gluteWorkout extends StatefulWidget {
  final String? muscleGroup;
  const gluteWorkout({Key? key, this.muscleGroup}) : super(key: key);

  @override
  State<gluteWorkout> createState() => _gluteWorkoutState();
}

class _gluteWorkoutState extends State<gluteWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: const Text('Glute Workout'),
          )),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Glutes', excerciseName: 'Kickbacks')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/gluteExercise1.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Kickbacks'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Glutes', excerciseName: 'Sumo Deadlift')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/chestimages/gluteExercise3.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Sumo Deadlift'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Glutes', excerciseName: 'Romanian Deadlift')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/gluteExercise4.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Romanian Deadlift'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Glutes', excerciseName: 'Glute Bridges')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/gluteExercise5.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Glute Bridges'),
              ],
            ),
          ),
        ),
    );
  }
}
