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
      backgroundColor: Colors.black,
      body: Column(
        children: [
        Center(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.fromLTRB(120, 60.0, 120.0, 50.0),
                  child: Text('Welcome to', style: TextStyle(color: Colors.white, fontSize: 20))
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text('GYM BUDDY APP', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40))
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
                    style: TextStyle(
                      color: Colors.white,
                    ),
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
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: RaisedButton(
                  color: Colors.red,
                  child: Text('Submit'),
                  textColor: Colors.white,
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
         ],
      ),
    );
  }
}
