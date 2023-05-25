import 'package:flutter/material.dart';
import 'package:secondpage/secondd.dart';
import 'main.dart';

void main(){
  runApp( MaterialApp(
    theme: ThemeData(splashColor: Colors.red),
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
  TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void navigateToSecond() {
    String name = _nameController.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Second(name: name),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.fromLTRB(120, 80, 120.0, 50.0),
                  child: Text('Welcome to', style: TextStyle(color: Colors.white, fontSize: 20))
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text('7GYM APP', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40))
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assets/chestimages/200w.gif'),
                      radius: 100,
                  ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: SizedBox(
                  width: 200,
                  child: TextField(
                    controller: _nameController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      hintText: 'Enter text',
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: RaisedButton(
                  color: Colors.red,
                  child: Text('Submit'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  textColor: Colors.white,
                  onPressed: navigateToSecond,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
