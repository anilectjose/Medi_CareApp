import 'package:covid_19_app/nurse_patient_prescrip_checks.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'covid_19.dart';


class Nurse_Patient_desc extends StatefulWidget {
  @override
  _Nurse_Patient_descState createState() => _Nurse_Patient_descState();
}
  class _Nurse_Patient_descState extends State<Nurse_Patient_desc> {
  List time = ["12:30", "02:15", "07:00"];
  List subject = [
  "Consultation",
  "Scanning",
  "Medicines"
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.5;
    return  Scaffold(
      appBar: new AppBar(
        title: new Text('Patient Detail'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
        backgroundColor: Covid_19.themecolor,
      ),
      body: Stack(
          children:[
            Container(
              decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage("assets/backgrounds/mc7.jpg"),
                  fit: BoxFit.fill)),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Name:', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                    subtitle: Text('Riya V', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1)),
                  ),
                  ListTile(
                    title: Text('Patient Id:', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                    subtitle: Text('11095', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1)),
                  ),
                  ListTile(
                    title: Text('Place:', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                    subtitle: Text('Mananthavady', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1)),
                  ),
                  ListTile(
                    title: Text('Prescription:', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                    subtitle: ListView.builder(
                        itemCount: subject.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext, int index) => Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
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
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Text(
                                            time[index],
                                            style: TextStyle(),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 5),
                                    child: FlatButton(
                                      onPressed: () {
                                        print('View more details');
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) {
                                              return Patient_Prescription_Checkboxes();
                                            }));
                                      },
                                      color: Covid_19.themecolor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        "Allort",
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
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}
