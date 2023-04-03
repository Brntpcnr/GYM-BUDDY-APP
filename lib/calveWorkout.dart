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

class calveWorkout extends StatefulWidget {
  final String? muscleGroup;
  const calveWorkout({Key? key, this.muscleGroup}) : super(key: key);

  @override
  State<calveWorkout> createState() => _calveWorkoutState();
}

class _calveWorkoutState extends State<calveWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: const Text('Calf Workout'),
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
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Calves', excerciseName: 'Bent Knee Calf Raises')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/calfExercise1.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Bent Knee Calf Raises'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Calves', excerciseName: "Farmer's Walk")),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/chestimages/calfExercise2.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames("Farmer's Walk"),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Calves', excerciseName: 'Seated Calf Raises (Leg Press Machine)')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/chestimages/calfExercise3.jpg')),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                workoutNames('Seated Calf Raises (Leg Press Machine)'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Calves', excerciseName: 'Donkey Calf Raises')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/calfExercise4.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Donkey Calf Raises'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Progress(muscleGroup: 'Calves', excerciseName: 'Standing Calf Raises')),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/chestimages/calfExercise5.jpg')),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                workoutNames('Standing Calf Raises'),
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
