import 'package:flutter/material.dart';
import 'package:patient_assistant/screens/Survey.dart';
import 'package:patient_assistant/screens/exerciseTile.dart';
import 'package:patient_assistant/screens/general.dart';
import 'package:patient_assistant/screens/scheduleHome.dart';
import 'package:patient_assistant/screens/updateProfile.dart';
import '../services/auth_service.dart';

class HomePage extends StatefulWidget {
  //const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    void _showProfile() {
      showModalBottomSheet(context: context, builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
          child: UpdateProfile(),
        );
      });
    }
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'SURVEY',
              ),
              Tab(
                text: 'SCHEDULE',
              ),
              Tab(
                text: 'CHAT BOT',
              ),
            ],
          ),
          leading: GestureDetector(
            onTap: () => _showProfile(),
            child: Icon(
              Icons.person,
              semanticLabel: 'PROFILE',// add custom icons also
            ),
          ),
          title: Text(
            'HOME PAGE',
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
        body: TabBarView(children: [
          Stack(
            children: [
              Survey(),
            ],
          ),
          Stack(
            children: [
              ScheduleHome(),
            ],
          ),
          Stack(
            children: [
              ScheduleHome(),
            ],
          ),
        ]),
      ),
    );
  }
}
