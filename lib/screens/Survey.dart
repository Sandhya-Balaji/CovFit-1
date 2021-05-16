import 'package:flutter/material.dart';

class Survey extends StatelessWidget {
  const Survey({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      ],
    ));
  }
}
