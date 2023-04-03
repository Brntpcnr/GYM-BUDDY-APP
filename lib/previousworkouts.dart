import 'package:flutter/material.dart';
import 'Progress.dart';
import 'secondd.dart';
import 'main.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'env.sample.dart';

class Previous2{
  final int? id;
  final String? value1 ;
  final String? value2 ;
  final String? value3 ;
  final String? muscleGroup;
  final String? exerciseName;

  const Previous2({ this.id,this.muscleGroup, this.exerciseName, this.value1,  this.value2,  this.value3});

  factory Previous2.fromJson(Map<String, dynamic> json) {
    return Previous2(
      muscleGroup: json['Muscle_Group'] as String,
      exerciseName: json['Exercise_Name'] as String,
      value1: json['Weight'] as String,
      id: json['id'] as int,
      value2: json['SetsxReps'] as String,
      value3: json['Date'] as String,
    );
  }
}

void main() {
  runApp(  MaterialApp(
    title: ('Previous Workouts'),
    home: Previous(),
  ));
}


class Previous extends StatefulWidget {

  @override
  PreviousState createState() => PreviousState();
}

Future<void> CreateExercise(String value1,String value2,String value3,String? Exercise_Name,
    String? Muscle_Group) async {
  final http.Response response = await http.post(
    Uri.parse("${Env.URL_PREFIX}/apis/v1"),

    headers: <String, String>{'Content-Type': 'application/json; charset=utf-8'},
    body: jsonEncode(<String, dynamic>{
      'Muscle_Group': Muscle_Group,
      'Exercise_Name' : Exercise_Name,
      'Weight' : value1,
      'SetsxReps' : value2,
      'Date' : value3,

    }),
  );

  if (response.statusCode == 201) {
    print('successful');
  }

  else {
    throw new Exception(response.body);
  }
}


class PreviousState extends State<Previous> {

  late Future<List<Previous2>> exercises;
  final ExercisesListKey = GlobalKey<PreviousState>();

  @override
  void initState() {
    super.initState();
    exercises = getExercisesList();
  }
  Future<List<Previous2>> getExercisesList() async {
    final response = await http.get("${Env.URL_PREFIX}/apis/v1?format=json",
        headers: <String, String>{'Content-Type': 'application/json; charset=utf-8'},
    );
    print(response.body);
    final parsed = jsonDecode(utf8.decode(response.bodyBytes));
    List<Previous2> prs = parsed.map<Previous2>((json) => Previous2.fromJson(json)).toList();
    for(final item in prs)
      print('aa ${item.muscleGroup}');
    return prs;
}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: ExercisesListKey,
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
        child: FutureBuilder<List<Previous2>>(
          future: getExercisesList(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return CircularProgressIndicator();
             print(snapshot.data.toString());
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data?.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        'Muscle Group: ''${snapshot.data![index].muscleGroup!}\n'''
                        'Exercise Name: ''${snapshot.data![index].exerciseName!}\n'''
                        'Weight: ''${snapshot.data![index].value1!} \n'''
                        'Sets x Reps: ''${snapshot.data![index].value2!}\n'''
                        'Date: ''${snapshot.data![index].value3!}\n''',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  );
                },
              );
            }
        ),
      ),
    );
  }
}
