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

class tricepsWorkout extends StatefulWidget {
  final String? muscleGroup;
  const tricepsWorkout({Key? key, this.muscleGroup}) : super(key: key);

  @override
  State<tricepsWorkout> createState() => _tricepsWorkoutState();
}

class _tricepsWorkoutState extends State<tricepsWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: const Text('Triceps Workout'),
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
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Triceps', excerciseName: 'Triceps Pushdown')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/tricepsExercise1.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Triceps Pushdown'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Triceps', excerciseName: 'Reverse-Grip Triceps Pushdown')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/chestimages/tricepsExercise2.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Reverse-Grip Triceps Pushdown'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Triceps', excerciseName: 'Cable Triceps Kick Back')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/tricepsExercise3.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Cable Triceps Kick Back'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Triceps', excerciseName: 'Rope Triceps Extension')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/tricepsExercise4.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Rope Triceps Extension'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Triceps', excerciseName: 'Cable Standing High Cross Triceps Extension')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/tricepsExercise5.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Cable Standing High Cross Triceps Extension'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Triceps', excerciseName: 'Cable Overhead Triceps Extension')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/chestimages/tricepsExercise6.jpg')),
                    ),
                  ),
                ),
                workoutNames('Cable Overhead Triceps Extension'),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
    );
  }
}
