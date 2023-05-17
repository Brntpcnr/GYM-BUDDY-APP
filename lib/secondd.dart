import 'package:flutter/material.dart';
import 'main.dart';
import 'secondd.dart';
import 'welcome.dart';
import 'previousworkouts.dart';


void main(){
  runApp(const MaterialApp(
    title: 'Second Page',
    home: const Second(name: ''),
  ));
}

class Second extends StatefulWidget{

  final String name;

  const Second({Key ? key, required this.name}) : super(key: key);
  @override

  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(50, 90, 50, 0),
                child: Text('Welcome ${widget.name} ', style: TextStyle(color: Colors.white, fontSize: 35))
                ),
              Container(
                  padding: const EdgeInsets.fromLTRB(70, 30.0, 50, 50.0),
                  child: Text('Please select an option', style: TextStyle(color: Colors.white, fontSize: 28))
              ),

              FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FirstRoute()),
                  );
                },
                child: Row(
                  children: [
                    Container(
                      color: Colors.black,
                      height: 70,
                      width: 230,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 10, 0, 0),
                        child: Text (" 1) Go to exercises", style:TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    ),
                  ],
                ),
              ),
              FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  Previous()),
                  );
                },
                child: Row(
                  children: [
                    Container(
                      color: Colors.black,
                      height: 80,
                      width: 290,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 10, 0, 0),
                        child: Text (" 2) See previous workouts", style:TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/chestimages/dumbbell.gif'),
                        fit: BoxFit.cover
                    ),
                    border: Border.all(color: Colors.black, width: 5 ),
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
        ],
      ),
     ),
    );
  }
}