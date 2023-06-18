import 'package:flutter/material.dart';
import 'abWorkout.dart';
import 'backWorkout.dart';
import 'bicepsWorkout.dart';
import 'calveWorkout.dart';
import 'chestWorkout.dart';
import 'forearmWorkout.dart';
import 'gluteWorkout.dart';
import 'quadricepsWorkout.dart';
import 'shoulderWorkout.dart';
import 'tricepsWorkout.dart';
import 'secondd.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      splashColor: Colors.red
    ),
    home: FirstRoute(),
  ));
}

BoxDecoration imgName(String imgname) {
  return BoxDecoration(
    image: DecorationImage(
        fit: BoxFit.fill, image: AssetImage('assets/chestimages/$imgname')),
  );
}

class FirstRoute extends StatefulWidget {

  const FirstRoute({Key? key}) : super(key: key);

  //final String? muscleGroup;

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: Center(
            child:  Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: Text(
          'MUSCLE GROUPS',
          style: TextStyle(color: Colors.white),
        ),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            FlatButton(
              splashColor: Colors.red,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => chestWorkout(muscleGroup: 'Chest')),
                );
              },
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/chestimages/Chest1.jpg'),
                            fit: BoxFit.contain),
                        border: Border.all(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 150,
                    width: 210,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text("CHEST EXERCISES",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ), //for chest workout
            SizedBox(
              height: 10,
            ),
            //for backworkout
            FlatButton(
              splashColor: Colors.red,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => bicepsWorkout(muscleGroup: 'Biceps')),
                );
              },
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/chestimages/Biceps.jpg'),
                            fit: BoxFit.contain),
                        border: Border.all(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 150,
                    width: 210,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text("BICEPS EXERCISES",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              splashColor: Colors.red,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => forearmWorkout(muscleGroup:'Forearm')),
                );
              },
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image:
                                AssetImage('assets/chestimages/Forearms.jpg'),
                            fit: BoxFit.contain),
                        border: Border.all(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 150,
                    width: 210,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text("FOREARM EXERCISES",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              splashColor: Colors.red,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => tricepsWorkout(muscleGroup: 'Triceps')),
                );
              },
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/chestimages/Triceps.jpg'),
                            fit: BoxFit.contain),
                        border: Border.all(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 150,
                    width: 210,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text("TRICEPS EXERCISES",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
            //for legs
            SizedBox(
              height: 10,
            ),
            FlatButton(
              splashColor: Colors.red,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => shoulderWorkout(muscleGroup: 'Shoulders')),
                );
              },
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image:
                                AssetImage('assets/chestimages/Shoulders.jpg'),
                            fit: BoxFit.contain),
                        border: Border.all(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 150,
                    width: 210,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text("SHOULDER EXERCISES",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              splashColor: Colors.red,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => backWorkout(muscleGroup: 'Back')),
                );
              },
              child: Row(
                children: [
                  Container(
                    height: 148,
                    width: 100,
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/chestimages/Back.jpg'),
                            fit: BoxFit.contain),
                        border: Border.all(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 150,
                    width: 210,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text("BACK EXERCISES",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              splashColor: Colors.red,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => abWorkout(muscleGroup: 'Abs')),
                );
              },
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/chestimages/Abs.jpg'),
                            fit: BoxFit.contain),
                        border: Border.all(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 150,
                    width: 210,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text("AB EXERCISES",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              splashColor: Colors.red,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => quadricepsWorkout(muscleGroup: 'Quadriceps')),
                );
              },
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image:
                                AssetImage('assets/chestimages/UpperLeg.jpg'),
                            fit: BoxFit.contain),
                        border: Border.all(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 150,
                    width: 230,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text("QUADRICEPS EXERCISES",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              splashColor: Colors.red,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => gluteWorkout(muscleGroup: 'Glute')),
                );
              },
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/chestimages/Glutes.jpg'),
                            fit: BoxFit.contain),
                        border: Border.all(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 150,
                    width: 210,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text("GLUTE EXERCISES",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              splashColor: Colors.red,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => calveWorkout(muscleGroup: 'Calves')),
                );
              },
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/chestimages/Calves.jpg'),
                            fit: BoxFit.contain),
                        border: Border.all(color: Colors.red, width: 5),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 150,
                    width: 210,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text("CALF EXERCISES",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
