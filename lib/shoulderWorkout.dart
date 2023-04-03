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

class shoulderWorkout extends StatefulWidget {
  final String? muscleGroup;
  const shoulderWorkout({Key? key, this.muscleGroup}) : super(key: key);

  @override
  State<shoulderWorkout> createState() => _shoulderWorkoutState();
}

class _shoulderWorkoutState extends State<shoulderWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: const Text('Shoulder Workout'),
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
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Shoulders', excerciseName: 'Seated Barbell Overhead Press')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/shoulderExercise1.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Seated Barbell Overhead Press'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Shoulders', excerciseName: 'Barbell Front Raise')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/chestimages/shoulderExercise2.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Barbell Front Raise'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Shoulders', excerciseName: 'Behind The Neck Press')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/shoulderExercise3.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Behind the Neck Press'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Shoulders', excerciseName: 'Barbell Shrug')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/chestimages/shoulderExercise5.jpg')),
                    ),
                  ),
                ),
                workoutNames('Barbell Shrug'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Shoulders', excerciseName: 'Behind The Back Barbell Shrug')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/chestimages/shoulderExercise6.jpg')),
                    ),
                  ),
                ),
                workoutNames('Behind The Back Barbell Shrug'),
              ],
            ),
          ),
        ),
    );
  }
}
