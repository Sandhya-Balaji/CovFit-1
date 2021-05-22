import 'package:flutter/material.dart';

class ExerciseTile extends StatefulWidget {
  //const ExerciseTile({Key key}) : super(key: key);

  @override
  _ExerciseTileState createState() => _ExerciseTileState();
}

class _ExerciseTileState extends State<ExerciseTile> {
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
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          leading: Image.asset(
                            "assets/images/walk.png",
                            height: double.infinity,
                            width: 100,
                          ),
                          title: Text(
                            "WALKING",
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
                                      children: [Text("TEXT")],
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
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          leading: Image.asset(
                            "assets/images/climb.jpg",
                            height: double.infinity,
                            width: 100,
                          ),
                          title: Text(
                            "CLIMBING STAIRS",
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
                                      children: [Text("TEXT")],
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
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                                      children: [Text("TEXT")],
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
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                                      children: [Text("TEXT")],
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
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                                      children: [Text("TEXT")],
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
class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Colors.deepPurple.shade200,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Fresh Juices at Regular Intervals",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Keep Yourself Hydrated",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Use Low Fat And Less Oil",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Colors.orange.shade300,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Eat Lots Of Fruits And Vegetables",
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
