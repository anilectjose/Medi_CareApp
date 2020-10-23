import 'package:flutter/material.dart';

import 'covid_19.dart';

class Patient_Prescription_Checkboxes extends StatefulWidget {
  @override
  _Patient_Prescription_CheckboxesState createState() =>
      _Patient_Prescription_CheckboxesState();
}

class _Patient_Prescription_CheckboxesState
    extends State<Patient_Prescription_Checkboxes> {
  Map<String, bool> values = {
    'Paracetamol': true,
    'Zinc 10g': false,
    'Genmisart 40': false,
    'a': true,
    's 10g': false,
    'x 40': false,
    'x': true,
    'e 10g': false,
    'g 40': false,
    'f': true,
    'b 10g': false,
    'n 40': false,
    'j': true,
    'j 10g': false,
    'y 40': false,'q': true,
    'y 10g': false,
    /*'y 40': false,'w': true,
    'k 10g': false,
    'm 40': false,'e': true,
    'h 10g': false,
    'k 40': false,'r': true,
    'l 10g': false,
    'i 40': false,'t': true,
    'ii 10g': false,
    'iii 40': false,*/
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Presceiption'),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          backgroundColor: Covid_19.themecolor,
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage("assets/backgrounds/mc7.jpg"),
                  fit: BoxFit.fill)),
            ),
            ListView(
              children: values.keys.map((String key) {
                return new CheckboxListTile(
                  title: new Text(key),
                  value: values[key],
                  checkColor: Colors.white,
                  activeColor: Covid_19.themecolor,
                  onChanged: (bool value) {
                    setState(() {
                      values[key] = value;
                    });
                  },
                );
              }).toList(),
            ),
            Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.symmetric(
                    horizontal: 0, vertical: 30),
                child: FloatingActionButton(
                  onPressed: () {
                    print('Applied');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return Patient_Prescription_Checkboxes();
                        }));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Covid_19.themecolor,
                  child: Text(
                    "Apply",
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
