import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:patient_assistant/services/dataBase.dart';
import 'package:provider/provider.dart';
import '../models/profile.dart';


class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key key}) : super(key: key);

  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final _formkey = GlobalKey<FormState>();
  String name, age;
  String condition = 'NORMAL';
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print('UserUid');
    print(user.uid);
    return StreamBuilder<Profile>(
        stream: DatabaseService(uid: user.uid).getEachProfile(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Profile profile = snapshot.data;
            return Form(
                key: _formkey,
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(20.0),
                  children: [
                    Text("UPDATE PROFILE",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'NAME', icon: Icon(Icons.person_outlined)),
                          initialValue: profile.name,
                          validator: (val) =>
                          val.isEmpty ? 'Please enter a name' : null,
                      onChanged: (String val) => setState(() => name = val),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'AGE', icon: Icon(Icons.calendar_today)),
                      initialValue: profile.age,
                      validator: (val) =>
                          val.isEmpty ? 'Please enter a age' : null,
                      onChanged: (String val) => setState(() => age = val),
                    ),
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        labelText: 'CONDITION',
                        icon: Icon(Icons.local_hospital_outlined),
                      ),
                      value: profile.condition,
                      items: <String>['BP', 'HEART', 'LUNG', 'KIDNEY', 'NORMAL']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(fontSize: 15),
                          ),
                        );
                      }).toList(),
                      onChanged: (String newValue) {
                        setState(() {
                          condition = newValue;
                        });
                      },
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    ElevatedButton(
                        child: Text('UPDATE'),
                        onPressed: () async {
                          _formkey.currentState.save();
                          if (_formkey.currentState.validate()) {
                            final pf = Profile(
                              name: name,
                              age: age,
                              condition: condition,
                            );
                          }
                        }),
                  ],
                ),
            );
          } else {
            return Center(
              child: Text('Error!'),
            );
          }
        });
  }
}
