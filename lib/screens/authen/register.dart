import 'package:flutter/material.dart';
import 'package:patient_assistant/models/profile.dart';
import '../../services/auth_service.dart';
import 'signin.dart';
import '../../services/dataBase.dart';
import 'package:provider/provider.dart';
import '../../models/user.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    //associate our form with this key
    String email = '';
    String password = '';
    String error = '';
    String name,age;
    String condition = 'NORMAL';

    return Scaffold(
      //backgroundColor: Colors.white,
        appBar: AppBar(
          //backgroundColor: Colors.blueAccent,
          actions: <Widget>[TextButton.icon(
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: () {
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signin()),
                );
              }
            },
            icon: Icon(Icons.person),
            label: Text('SIGN IN'),
          )
          ],
          elevation: 0.0,
          title: Text('REGISTER '),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(50),
          child: Form(
            key: _formkey, //track the state of the form
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20.0),
              children: [
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'NAME',
                      icon: Icon(Icons.person_outlined)),
                  validator: (val) => val.isEmpty ? 'Please enter a name':null,
                  onSaved: (String val) {
                    name = val;
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'AGE',
                      icon: Icon(Icons.calendar_today)),
                  validator: (val) => val.isEmpty ? 'Please enter a age':null,
                  onSaved: (String val) {
                    age = val;
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: 'CONDITION',
                      icon: Icon(Icons.local_hospital_outlined),
                  ),
                  value: condition,
                  items: <String>['DIABETIC', 'HEART', 'LUNG', 'KIDNEY','NORMAL']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,style: TextStyle(fontSize: 15), ),
                    );
                  }).toList(),
                  onChanged: (String newValue) {
                    setState(() {
                      condition = newValue;
                    });
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'EMAIL',
                      icon: Icon(Icons.email_outlined)),
                  validator: (val) => val.isEmpty ? 'Enter the email' : null,
                  //null is executed when the form is valid
                  onSaved: (String value) {
                    email = value;
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'PASSWORD',
                      icon: Icon(Icons.lock_outline_sharp)),
                  validator: (val) => val.isEmpty ? 'Must be more than 6 chars' : null,
                  onSaved: (String value) {
                    password = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                    child: Text('REGISTER'),
                    onPressed: () async {
                      _formkey.currentState.save();
                      if (_formkey.currentState.validate()) {
                        final pf = Profile(
                          name: name,
                          age: age,
                          condition: condition,
                        );

                        //if this condition is true we got a valid form
                        print(email);
                        dynamic result =
                        await _auth.registerEmailPassword(email, password);
                        if (result == null) {
                          setState(() => error = 'Unable to register');
                        } else {
                          final u = Provider.of<MyUser>(context, listen:false);
                          final DatabaseService _databaseServices = DatabaseService(uid: u.uid);
                          await _databaseServices.addProfile(pf);
                          Navigator.pop(context);
                        }
                      }
                    }),
              ],
            ),
          ),
        ));
  }
}
