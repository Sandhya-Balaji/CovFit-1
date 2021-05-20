import 'package:flutter/material.dart';

class ExerciseTile extends StatefulWidget {
  //const ExerciseTile({Key key}) : super(key: key);

  @override
  _ExerciseTileState createState() => _ExerciseTileState();
}

class _ExerciseTileState extends State<ExerciseTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.30;
    return Scaffold(
        body: Container(
                height: size.height,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "EXERCISE PLAN",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                        child: ListWheelScrollView(
                          itemExtent: categoryHeight,
                          children: [
                          Container(
                          height: 150,
                          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                StatefulBuilder(builder: (BuildContext context, StateSetter setState){
                                  return Center(
                                    child:Checkbox(
                                      checkColor: Colors.white,
                                      activeColor: Colors.greenAccent,
                                      value: this.isChecked,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.isChecked = value;
                                        });
                                      },
                                    )
                                  );
                                }),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "WALKING",
                                      style: const TextStyle(
                                          fontSize: 20, fontWeight: FontWeight.bold),
                                      softWrap: false,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "15 mins",
                                      style: const TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Image.asset(
                                  "assets/images/walk.png",
                                  height: double.infinity,
                                  width: 100,
                                )
                              ],
                            ),
                          ),
                        ),
                          Container(
                            height: 150,
                            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Checkbox(
                                    checkColor: Colors.white,
                                    activeColor: Colors.greenAccent,
                                    value: this.isChecked,
                                    onChanged: (bool value) {
                                      setState(() {
                                        this.isChecked = value;
                                      });
                                    },
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "CLIMBING STAIRS",
                                        style: const TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                        softWrap: false,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "5 mins",
                                        style: const TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Image.asset(
                                    "assets/images/climb.jpg",
                                    height: double.infinity,
                                    width: 100,
                                  )
                                ],
                              ),
                            ),
                          ),
                            Container(
                              height: 150,
                              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Checkbox(
                                      checkColor: Colors.white,
                                      activeColor: Colors.greenAccent,
                                      value: this.isChecked,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.isChecked = value;
                                        });
                                      },
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "PRANAYAMA",
                                          style: const TextStyle(
                                              fontSize: 20, fontWeight: FontWeight.bold),
                                          softWrap: false,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "10 mins",
                                          style: const TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/images/prana.jpg",
                                      height: double.infinity,
                                      width: 100,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 150,
                              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Checkbox(
                                      checkColor: Colors.white,
                                      activeColor: Colors.greenAccent,
                                      value: this.isChecked,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.isChecked = value;
                                        });
                                      },
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "BHRAHMARI",
                                          style: const TextStyle(
                                              fontSize: 20, fontWeight: FontWeight.bold),
                                          softWrap: false,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "5 mins",
                                          style: const TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/images/bhramari.jpg",
                                      height: double.infinity,
                                      width: 100,
                                    )
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ))
                  ],
                )),
    );

  }
}
