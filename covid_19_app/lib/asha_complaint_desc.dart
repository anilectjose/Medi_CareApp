import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'covid_19.dart';


class Asha_Complaint_desc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: new AppBar(
        title: new Text('Complaint'),
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
                    subtitle: Text('Anilect Jose', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1)),
                  ),
                  ListTile(
                    title: Text('Subject:', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                    subtitle: Text('About the issue faced by a covid patient', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1)),
                  ),
                  ListTile(
                    title: Text('Complaint:', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                    subtitle: Text('In oour area(Mananthavady) a Covid patient- Ashin Thankachan is facing some isssues from his house. He was in quarantine for the last 2weeks and now facing some Covid symptoms but none of the authority is looking on that.',
                        style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1)),
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}
