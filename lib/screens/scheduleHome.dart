import 'package:flutter/material.dart';
import 'package:patient_assistant/models/profile.dart';
import 'package:patient_assistant/screens/exerciseTile.dart';
import 'package:patient_assistant/screens/general.dart';
import 'package:patient_assistant/services/dataBase.dart';
import 'package:provider/provider.dart';
import '../models/user.dart';

class ScheduleHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final u = Provider.of<MyUser>(context);
    return StreamBuilder<Profile>(
        stream: DatabaseService(uid: u.uid).getEachProfile(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Profile profile = snapshot.data;
            return Scaffold(
              body: Stack(
                children: [
                  Container(
                    constraints: BoxConstraints.expand(),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/5026563.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Welcome ${profile.name}!",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            ),
                            Text("Check your daily schedule here ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                            Container(
                              height: 20.0,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GenSchedule()));
                              },
                              child: Text(
                                'DIET PLAN',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ExerciseTile()));
                              },
                              child: Text(
                                'FITNESS PLAN',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GenSchedule()));
                              },
                              child: Text(
                                'PRESCRIPTION',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
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
