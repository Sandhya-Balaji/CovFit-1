import 'package:flutter/material.dart';
import './register.dart';
import '../../services/auth_service.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  // AuthService is something i have created
  final _formkey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  //got an instance of the auth service class
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: <Widget>[
            TextButton.icon(
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                }
              },
              icon: Icon(Icons.person),
              label: Text('Register'),
            )
          ],
          //backgroundColor: Colors.blueAccent,
          elevation: 0.0,
          title: Text('SIGN IN '),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'EMAIL',
                      icon: Icon(Icons.email_outlined)),
                  validator: (val) => val.isEmpty ? 'Enter any email' : null,
                  onSaved: (val) {
                    email = val;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'PASSWORD',
                      icon: Icon(Icons.lock_outline_sharp)),
                  validator: (val) => val.isEmpty ? 'Must be more than 6 chars' : null,
                  onSaved: (val) {
                    password = val;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                    child: Text('SIGN IN'),
                    onPressed: () async {
                      if (_formkey.currentState.validate()) {
                        //if this condition is true we got a valid form
                        _formkey.currentState.save();
                        print("logged in");
                        dynamic result =
                        await _auth.signInEmailRegister(email, password);
                        print(result.uid);
                        if (result == null) {
                          print("error-- SignIn dead");
                        }
                      }
                    }),
              ],
            ),
          ),
        ));
  }
}
