import 'package:flutter/material.dart';

import 'exerciseTile.dart';

class ExerciseYoung extends StatefulWidget {
  const ExerciseYoung({Key key}) : super(key: key);

  @override
  _ExerciseYoungState createState() => _ExerciseYoungState();
}

class _ExerciseYoungState extends State<ExerciseYoung> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  final CategoriesScroller categoriesScroller = CategoriesScroller();
  bool closeTopContainer = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.30;
    return Scaffold(
      appBar: AppBar(
        title: Text("SCHEDULE"),
        centerTitle: true,

      ),
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
          Container(
            height: size.height,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Text(
                  "EXERCISE PLAN",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: closeTopContainer ? 0 : 1,
                  child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: size.width,
                      alignment: Alignment.topCenter,
                      height: closeTopContainer ? 0 : categoryHeight,
                      child: categoriesScroller),
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Card(
                        margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                        child: ListTile(
                          //isThreeLine: true,
                          //dense: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          leading: Image.asset(
                            "assets/images/walk.png",
                            height: double.infinity,
                            width: 100,
                          ),
                          title: Text(
                            "BRISK WALKING",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "15 mins",
                            style: const TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.greenAccent,
                            value: this.isChecked1,
                            onChanged: (bool value) {
                              setState(() {
                                this.isChecked1 = value;
                              });
                            },
                          ),
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.0, horizontal: 60.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [Text("INSTRUCTIONS", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),),
                                        Text("Walk at your own pace inside the room in which you are isolated.\n"
                                            "Don't walk if :\n"
                                            " •	Temp > 102 F\n"
                                            " •	Oximeter readings < 92\n •	Pulse rate >105\n •	People with low bp\n •	Dizziness\n"
                                        )],
                                    ),
                                  );
                                });
                          },
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                        child: ListTile(
                          //isThreeLine: true,
                          //dense: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          leading: Image.asset(
                            "assets/images/climb.jpg",
                            height: double.infinity,
                            width: 100,
                          ),
                          title: Text(
                            "EASY FITNESS EXERCISE",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "5 mins",
                            style: const TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.greenAccent,
                            value: this.isChecked2,
                            onChanged: (bool value) {
                              setState(() {
                                this.isChecked2 = value;
                              });
                            },
                          ),
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.0, horizontal: 60.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [Text("INSTRUCTIONS", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),),
                                        Text("Walk at your own pace inside the room in which you are isolated.\n"
                                            "Don't walk if :\n"
                                            " •	Temp > 102 F\n"
                                            " •	Oximeter readings < 92\n •	Pulse rate >105\n •	People with low bp\n •	Dizziness\n"
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                        child: ListTile(
                          //isThreeLine: true,
                          //dense: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          leading: Image.asset(
                            "assets/images/prana.jpg",
                            height: double.infinity,
                            width: 100,
                          ),
                          title: Text(
                            "PRANAYAMA",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "10 mins",
                            style: const TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.greenAccent,
                            value: this.isChecked3,
                            onChanged: (bool value) {
                              setState(() {
                                this.isChecked3 = value;
                              });
                            },
                          ),
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.0, horizontal: 60.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [Text("INSTRUCTIONS", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),),
                                        Text("Sit on a chair or on the ground cross legged, in a meditation position. \n"
                                            "With your right thumb, close your right nostril and inhale through the left nostril.\n"
                                            "Release your right nostril and with your middle and ring finger, close your left nostril exhaling through the right nostril.\n"
                                            "Inhale through the right nostril, then release the fingers, closing the right nostril and exhaling through the left nostril.\n"
                                            "Continue the slow breathing through alternate nostrils and focus on the breath.\n"
                                            "Practise this for 10 minutes for benefits to start accruing.")],
                                    ),
                                  );
                                });
                          },
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                        child: ListTile(
                          //isThreeLine: true,
                          //dense: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          leading: Image.asset(
                            "assets/images/bhramari.jpg",
                            height: double.infinity,
                            width: 100,
                          ),
                          title: Text(
                            "BHRAMARI",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "5 mins",
                            style: const TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.greenAccent,
                            value: this.isChecked4,
                            onChanged: (bool value) {
                              setState(() {
                                this.isChecked4 = value;
                              });
                            },
                          ),
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.0, horizontal: 60.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [Text("INSTRUCTIONS", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),),
                                        Text("Sit on a chair or on the ground cross legged, in a meditation position."
                                            "Close your ears using your thumb and place your middle and ring fingers lightly at the inner corner of your eyes."
                                            "Rest your index finger above your eyebrows and little finger where it rests on your cheeks."
                                            "Take a deep breathe in and while exhaling make a soft humming sound similar to ‘hmmmmm’, throughout the entire exhalation. Inhale again and while exhaling make the humming sound."
                                            "Practise for 10 minutes for benefits to start accruing."
                                        )],
                                    ),
                                  );
                                });
                          },
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        child: ListTile(
                          //isThreeLine: true,
                          //dense: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          leading: Image.asset(
                            "assets/images/fish.jpg",
                            height: double.infinity,
                            width: 100,
                          ),
                          title: Text(
                            "FISH POSE",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "5 mins",
                            style: const TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.greenAccent,
                            value: this.isChecked5,
                            onChanged: (bool value) {
                              setState(() {
                                this.isChecked5 = value;
                              });
                            },
                          ),
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.0, horizontal: 60.0),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("INSTRUCTIONS", style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),),
                                        Text("Lie down on your back without bending your knees. Slightly lift your hip area and keep your hands under them. "
                                            "Now take a deep breath and bend your elbows a little. Push the upper part of your body. "
                                            "Put your chest out while placing your head back on the floor. Hold the pose and breathe.")],
                                    ),
                                  );
                                });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
