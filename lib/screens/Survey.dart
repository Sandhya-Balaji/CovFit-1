import 'package:flutter/material.dart';

class Survey extends StatefulWidget {
  const Survey({Key key}) : super(key: key);

  @override
  _SurveyState createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  int val1,val2,val3,val4,val5,val6,val7,val8,val9,val10,val11,val12,val13 = 0;
  static List options = [];
  // bool showValue = false;
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
              ListView(
                children: [Column(
                  children: <Widget>[
                    Center(
                      child: Text(
                        "*Select the option that suits your condition*",
                        style: TextStyle(color: Colors.red,fontSize: 16.0,letterSpacing: 2.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "1. Have you received the COVID-19 Vaccine?",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          )
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 1,
                          groupValue: val1,
                          onChanged: (value) {
                            setState(() {
                              val1 = 1;
                              options.add(val1);
                            });
                          } ,
                          title: Text("YES",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.green[900],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 2,
                          groupValue: val1,
                          onChanged: (value){
                            setState(() {
                              val1 = 2;
                              options.add(val1);
                            });
                          } ,
                          title: Text("NO",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "2. Do you have FEVER or have you felt FEVERISH recently?",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 1,
                          groupValue: val2,
                          onChanged: (value) {
                            setState(() {
                              val2 = 1;
                              options.add(val2);
                            });
                          } ,
                          title: Text("YES",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 2,
                          groupValue: val2,
                          onChanged: (value) {
                            setState(() {
                              val2 = 2;
                              options.add(val2);
                            });
                          } ,
                          title: Text("NO",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.green[900],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "3. Do you have a cough?",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 1,
                          groupValue: val3,
                          onChanged: (value) {
                            setState(() {
                              val3 = 1;
                              options.add(val3);
                            });
                          } ,
                          title: Text("YES",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.red,
                        ),
                      ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "4. Are I having Shortness of Breath or any difficulty in breathing?",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 2,
                          groupValue: val3,
                          onChanged: (value) {
                            setState(() {
                              val3 = 2;
                              options.add(val3);
                            });
                          } ,
                          title: Text("NO",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.green[900],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "4. Are you having Shortness of Breath or any difficulty in breathing?",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 1,
                          groupValue: val4,
                          onChanged: (value) {
                            setState(() {
                              val4 = 1;
                              options.add(val4);
                            });
                          } ,

                          title: Text("YES",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 2,
                          groupValue: val4,
                          onChanged: (value) {
                            setState(() {
                              val4 = 2;
                              options.add(val4);
                            });
                          } ,
                          title: Text("NO",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.green[900],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "5. Do you have chills or repeated shivering with chills?",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 1,
                          groupValue: val5,
                          onChanged: (value) {
                            setState(() {
                              val5 = 1;
                              options.add(val5);
                            });
                          } ,
                          title: Text("YES",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 2,
                          groupValue: val5,
                          onChanged: (value)
                          {
                            setState(() {
                              val5 = 2;
                              options.add(val5);
                            });
                          } ,
                          title: Text("NO",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.green[900],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "6.Do you have any muscle pain or body ache?",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 1,
                          groupValue: val6,
                          onChanged: (value) {
                            setState(() {
                              val6 = 1;
                              options.add(val6);
                            });
                          } ,
                          title: Text("YES",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 2,
                          groupValue: val6,
                          onChanged: (value) {
                            setState(() {
                              val6 = 2;
                              options.add(val6);
                            });
                          } ,
                          title: Text("NO",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.green[900],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "7. Do you have any recent loss of TASTE and/or SMELL?",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 1,
                          groupValue: val7,
                          onChanged: (value) {
                            setState(() {
                              val7 = 1;
                              options.add(val7);
                            });
                          } ,
                          title: Text("YES",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 2,
                          groupValue: val7,
                          onChanged: (value) {
                            setState(() {
                              val7 = 2;
                              options.add(val7);
                            });
                          } ,
                          title: Text("NO",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.green[900],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "8. Have you been experiencing Fatigue recently?",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 1,
                          groupValue: val8,
                          onChanged: (value) {
                            setState(() {
                              val8 = 1;
                              options.add(val8);
                            });
                          } ,
                          title: Text("YES",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 2,
                          groupValue: val8,
                          onChanged: (value) {
                            setState(() {
                              val8 = 2;
                              options.add(val8);
                            });
                          } ,
                          title: Text("NO",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.green[900],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "9. Have you experienced any GI upset or diarrhea?",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 1,
                          groupValue: val9,
                          onChanged: (value) {
                            setState(() {
                              val9 = 1;
                              options.add(val9);
                            });
                          } ,
                          title: Text("YES",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 2,
                          groupValue: val9,
                          onChanged: (value) {
                            setState(() {
                              val9 = 2;
                              options.add(val9);
                            });
                          } ,
                          title: Text("NO",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.green[900],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "10. Have you been advised to SELF - QUARANTINE because of exposure to someone with COVID-19?",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 1,
                          groupValue: val10,
                          onChanged: (value) {
                            setState(() {
                              val10 = 1;
                              options.add(val10);
                            });
                          } ,
                          title: Text("YES",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 2,
                          groupValue: val10,
                          onChanged: (value) {
                            setState(() {
                              val10 = 2;
                              options.add(val10);
                            });
                          } ,
                          title: Text("NO",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.green[900],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "11. Have you traveled in the past 14 days to any regions affected by COVID-19?",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 1,
                          groupValue: val11,
                          onChanged: (value) {
                            setState(() {
                              val11 = 1;
                              options.add(val11);
                            });
                          } ,
                          title: Text("YES",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 2,
                          groupValue: val11,
                          onChanged: (value) {
                            setState(() {
                              val11 = 2;
                              options.add(val11);
                            });
                          } ,
                          title: Text("NO",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.green[900],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "12. Have you been tested positive for COIVD-19?",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 1,
                          groupValue: val12,
                          onChanged: (value) {
                            setState(() {
                              val12 = 1;
                              options.add(val12);
                            });
                          } ,
                          title: Text("YES",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                        child: RadioListTile(
                          value: 2,
                          groupValue: val12,
                          onChanged: (value) {
                            setState(() {
                              val12 = 2;
                              options.add(val12);
                            });
                          } ,
                          title: Text("NO",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          activeColor: Colors.green[900],
                        ),
                      ),
                    ),
                  ],),
                  Text(
                    "*REMEMBER TO TAKE THE SURVEY EVERY NOW AND THEN*",
                    style: TextStyle(color: Colors.red,fontSize: 14.0,letterSpacing: 1.5),
                  ),
                ],
              ),
            ])
    );
  }
}