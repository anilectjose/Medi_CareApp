import 'package:covid_19_app/covid_19.dart';
import 'package:covid_19_app/patient_report.dart';
import 'package:flutter/material.dart';


class PHR_details extends StatefulWidget {
  PHR_detailsState createState() => new PHR_detailsState();
}

class PHR_detailsState extends State<PHR_details> {

  TextEditingController age = new TextEditingController();
  TextEditingController bloodgroup = new TextEditingController();
  @override
  void initState() {
    super.initState();
    age = TextEditingController(text: "55");
    bloodgroup = TextEditingController(text: "A+");
  }
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('PHR Details'),
        backgroundColor: Covid_19.themecolor,
      ),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(
            image: AssetImage("assets/backgrounds/mc7.jpg"),
            fit: BoxFit.fill)),
        child: new Center(
          child: new Container(
            margin: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: 60,),
                Text("Anilect Jose",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold), ),
                SizedBox(height: 30,),
                Container(
                  child: TextField(
                    controller: age,
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Age',
                      hintText: 'Age',
                      suffixIcon: Icon(
                        Icons.edit,
                        color: Covid_19.themecolor,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: TextField(
                    controller: bloodgroup,
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Blood Group',
                      hintText: 'Blood Group',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                FlatButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Patient_report();
                  }));
                  },
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  color: Covid_19.themecolor,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), ),
                    child: Text("Reports",style: TextStyle(fontSize: 20),),textColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}