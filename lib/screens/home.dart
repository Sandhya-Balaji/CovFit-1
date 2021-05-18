import 'package:flutter/material.dart';
import 'package:patient_assistant/screens/general.dart';
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UpdateProfile()),
              );
            },
            child: Icon(
              Icons.person, // add custom icons also
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
              Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/5026563.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Stack(
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
              GenSchedule(),
            ],
          ),
          Stack(
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
            ],
          ),
        ]),
      ),
    );
  }
}
