import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);
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
                text: 'CHATBOT',
              ),
            ],
          ),
          leading: GestureDetector(
            onTap: () {
              showModalBottomSheet(context: context, builder: (context){
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("TEXT"),
                    ],
                  ),
                );
              }
              );
            },
            child: Icon(
              Icons.person,  // add custom icons also
            ),
          ),
          title: Text('HOME PAGE',),
          centerTitle: true,
          actions: <Widget>[

            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () async
              {
                await _auth.signOut();
              },
            ),


          ],
        ),
        body: TabBarView(
          children: [
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
          ]
        ),
      ),
    );
  }
}