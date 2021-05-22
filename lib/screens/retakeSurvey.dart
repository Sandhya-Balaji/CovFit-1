import 'package:flutter/material.dart';
class Retake extends StatefulWidget {
  const Retake({Key key}) : super(key: key);

  @override
  _RetakeState createState() => _RetakeState();
}

class _RetakeState extends State<Retake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("RETAKE SURVEY"),
          centerTitle: true,
      ),
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
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "THANKS FOR TAKING THE SURVEY.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),),
                        Text("REMEMBER TO RETAKE IT EVERY 6HOURS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),),
                         SizedBox(
                           height: 20,
                         ),
                         ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.send),
                            label: Text("RETAKE SURVEY"),
                          ),
                      ],
                    ),
                  ),
                )]),
        ));
  }
}
