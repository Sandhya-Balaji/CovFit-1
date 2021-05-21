import 'package:flutter/material.dart';
// import 'package:patient_assistant/screens/Survey.dart';

class Retake extends StatefulWidget {
  const Retake({Key key}) : super(key: key);

  @override
  _RetakeState createState() => _RetakeState();
}

class _RetakeState extends State<Retake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
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
          Center(
            child: Column(
              children: <Widget>[
                Text(
                    "THANKS FOR TAKING THE SURVEY."
                    "REMEMBER TO RETAKE IT EVERY 6HOURS",
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    ),),
                Container(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // // Survey();
                      // Navigator.pop(context);
                    },
                    icon: Icon(Icons.send),
                    label: Text("RETAKE SURVEY"),
                    ),
                ),
            ],
          ),
                )]),
      ));
            }
}
