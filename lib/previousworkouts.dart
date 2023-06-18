import 'package:flutter/material.dart';
import 'Progress.dart';
import 'secondd.dart';
import 'main.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'env.sample.dart';



class Previous extends StatelessWidget {

  final String? value1 ;
  final String? value2 ;
  final String? value3 ;
  final String? muscleGroup;
  final String? exerciseName;


  Previous({this.muscleGroup, this.exerciseName, this.value1,  this.value2,  this.value3});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: Text(
                'Previous Workouts',
                style: TextStyle(color: Colors.white),
              ),
            )),
      ),
      body: SingleChildScrollView(
               child: Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        'Muscle Group: $muscleGroup\n'
                        'Exercise Name: $exerciseName\n'
                        'Weight: $value1\n'
                        'Sets x Reps: $value2\n'
                        'Date: $value3\n',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
      ),
    );
  }
}
