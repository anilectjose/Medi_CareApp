import 'package:covid_19_app/covid_19.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Patient_report extends StatefulWidget {
  @override
  _Patient_reportState createState() => _Patient_reportState();
}

class _Patient_reportState extends State<Patient_report> {
  List date=["15-09-2020","03-06-2020","22-05-2020"];
  List report=["Corona","fever","fever"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Reports'),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
          backgroundColor: Covid_19.themecolor,
        ),
        body: Stack(
          children:[ Container(
            decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage("assets/backgrounds/mc7.jpg"),
                fit: BoxFit.fill)),),
            ListView.builder(itemCount: 3,shrinkWrap: true, itemBuilder:( BuildContext, int index)=>Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0)
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          /*Container(
                              width: 55,
                              height: 55,
                              child: CircleAvatar(),
                            )*/
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(report[index],style:TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                              Text(date[index],style:TextStyle(),),
                            ],
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child:FlatButton(
                          onPressed: (){
                          },
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text("Download",),textColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )),
         ]
        ),
      ),
    );
  }
}
