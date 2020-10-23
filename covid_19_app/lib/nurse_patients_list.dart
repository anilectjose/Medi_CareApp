import 'package:covid_19_app/covid_19.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'nurse_patient_desc.dart';

class Patient_List extends StatefulWidget {
  @override
  _Patient_ListState createState() => _Patient_ListState();
}

class _Patient_ListState extends State<Patient_List> {
  List date = ["12805", "11095", "11086"];
  List subject = [
    "Joice John",
    "Arjun Prabhakaran",
    "Riya V"
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Patients'),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          backgroundColor: Covid_19.themecolor,
        ),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/backgrounds/mc7.jpg"),
                    fit: BoxFit.fill)),
          ),
          ListView.builder(
              itemCount: subject.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext, int index) => Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: width,
                                  child: Text(
                                    subject[index],
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ),
                                Text(
                                  date[index],
                                  style: TextStyle(),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                              horizontal: 3, vertical: 5),
                          child: FlatButton(
                            onPressed: () {
                              print('View more details');
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return Nurse_Patient_desc();
                                  }));
                            },
                            color: Covid_19.themecolor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "View",
                            ),
                            textColor: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
          ),
        ]),
      ),
    );
  }
}
