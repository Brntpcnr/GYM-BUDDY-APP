import 'package:flutter/material.dart';
import 'package:secondpage/secondd.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


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
  final emailOrUsernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in
  void signUserIn() async {
    //show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try signing in
    try {
      // Check if the user entered an email or a username
      final String emailOrUsername = emailOrUsernameController.text;
      final isEmail = emailOrUsername.contains('@');

      UserCredential userCredential;
      if (isEmail) {
        // Sign in with email
        userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailOrUsername,
          password: passwordController.text,
        );
      } else {
        // Sign in with username
        final QuerySnapshot snapshot = await FirebaseFirestore.instance
            .collection('users')
            .where('username', isEqualTo: emailOrUsername)
            .limit(1)
            .get();

        if (snapshot.docs.isNotEmpty) {
          final String email = snapshot.docs.first.get('email');
          userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: email,
            password: passwordController.text,
          );
        } else {
          // No user found with the entered username
          throw FirebaseAuthException(code: 'user-not-found');
        }
      }

      // User signed in successfully, handle the login completion, e.g., navigate to the next screen.
    } on FirebaseAuthException catch (e) {
      // Sign in failed, show an error message
      showErrorMessage(e.code);
    }

    // Close the loading dialog
    Navigator.pop(context);
  }

  //error message to user
  void showErrorMessage(String message){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              message,
              style: TextStyle(color:Colors.white),
            ),
          ),
        );
      },
    );
  }


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
                  padding: const EdgeInsets.fromLTRB(120, 60, 120.0, 50.0),
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
              //username
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
              SizedBox(
                height: 20,
              ),
              //email/user textfield
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SizedBox(
                    width: 200,
                    child: TextField(
                      controller: emailOrUsernameController,
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
              SizedBox(
                height: 20,
              ),
              //password textfield
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SizedBox(
                    width: 200,
                    child: TextField(
                      controller: passwordController,
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
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: RaisedButton(
                  color: Colors.red,
                  child: Text('Register'),
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
