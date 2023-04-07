import 'package:flutter/material.dart';
import 'package:secondpage/secondd.dart';
import 'main.dart';

void main(){
  runApp(const MaterialApp(
    title: 'Welcoming Page',
    home: Welcome(),
  ));
}

class Welcome extends StatefulWidget{
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  final _textController = TextEditingController();

  String value = '' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.blue,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.fromLTRB(120, 60.0, 120.0, 50.0),
                  child: Text('Welcome to', style: TextStyle(color: Colors.white, fontSize: 20))
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                  child: Text('GYM BUDDY APP', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40))
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assets/chestimages/gym.gif'),
                      radius: 80,
                  ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: SizedBox(
                  width: 200,
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Please enter your name',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: () {
                    setState(() {
                      value = _textController.text;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  Second(value: _textController.text)
                      ),
                    );
                  },
                ),
              ),
            ],
            ),
        ),
      ),
    );
  }
}
