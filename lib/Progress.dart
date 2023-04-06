import 'package:flutter/material.dart';
import 'previousworkouts.dart';
import 'main.dart';
import 'welcome.dart';
import 'secondd.dart';


Container ProgressOverlay(String boxtext) {
  return Container(
    height: 50,
    width: 180,
    decoration: BoxDecoration(border: Border.all(), color: Colors.white),
    child: Center(
      child: Text(
        '$boxtext',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class Progress extends StatefulWidget {
  final String? muscleGroup;
  final String? excerciseName;
  const Progress({Key? key, this.muscleGroup, this.excerciseName}) : super(key: key);

  @override
  State<Progress> createState() => _ProgressState(muscleGroup:muscleGroup,excerciseName:excerciseName);
}

class _ProgressState extends State<Progress> {
  final String? muscleGroup;
  final String? excerciseName;
  _ProgressState({Key? key, this.muscleGroup, this.excerciseName});
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  final _textController3 = TextEditingController();

  String value1 = '';
  String value2 = '';
  String value3 = '';

  @override
  Widget build(BuildContext context) {
    //return MaterialApp(
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
            'Progress',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
              )),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [ProgressOverlay('Weight'), ProgressOverlay('Sets x Reps') ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 180,
                    child: TextField(
                    controller: _textController1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter the weight',
                    ),
                  ),
                ),
                  SizedBox(
                  width: 180,
                  child: TextField(
                    controller: _textController2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter the number of reps x sets',
                    ),
                  ),
                )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [ProgressOverlay('Date')],
              ),
              Row(
                children: [SizedBox(width: 180,
                  child: TextField(
                    controller: _textController3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter the date',
                    ),
                  ),
                )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
                child: ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: () {
                    setState(() {
                      value1 = _textController1.text;
                      value2 = _textController2.text;
                      value3 = _textController3.text;
                      CreateExercise(value1,value2,value3,excerciseName,muscleGroup);
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)  {return Previous();}),);
                    },
                ),
              ),
            ],
          ),
        ),
      );
    //);
  }
}
