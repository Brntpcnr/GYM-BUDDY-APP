import 'package:flutter/material.dart';
import 'Progress.dart';
import 'main.dart';

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

class abWorkout extends StatefulWidget {
  final String? muscleGroup;
  const abWorkout({Key? key, this.muscleGroup}) : super(key: key);

  @override
  State<abWorkout> createState() => _abWorkoutState();
}

class _abWorkoutState extends State<abWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: const Text('Ab Workout'),
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
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Abs', excerciseName: 'Hanging Leg Raises')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/abExercise1.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Hanging Leg Raises'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Abs', excerciseName: 'Hanging Knee Raises')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                              AssetImage('assets/chestimages/abExercise2.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Hanging Knee Raises'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Abs', excerciseName: 'Crunches')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/abExercise3.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Crunches'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Abs', excerciseName: 'Unileteral Leg Raises')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/abExercise4.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Unilateral Leg Raises'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Abs', excerciseName: 'Mountain Climbers')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/abExercise5.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Mountain Climbers'),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
    );
  }
}
