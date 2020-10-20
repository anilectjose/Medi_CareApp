import 'package:covid_19_app/covid_19.dart';
import 'package:covid_19_app/patient_edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Patient_Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
          children:[
            Container(
              decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage("assets/backgrounds/mc7.jpg"),
                  fit: BoxFit.fill)),
            ),
            Column(
              children: <Widget>[
                Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 3,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/backgrounds/profile_b.png"),
                    ),
                    Positioned(
                      bottom: -60.0,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/icons/profile.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                ListTile(
                  title: Center(child: Text('Anilect Jose', style: TextStyle(fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.w500),)),
                  subtitle: Center(child: Text('Patient',style: TextStyle(fontFamily: 'Poppins'))),
                ),
                FlatButton.icon(
                  onPressed: () {
                    print('Edit Button Pressed');
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Patient_Edit_Profile();
                      Navigator.pop(context);
                    }));
                  },
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                  ),
                  color: Covid_19.themecolor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                ),
                ListTile(
                  title: Text('Mail id', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                  subtitle: Text('anilectjose@gmail.com', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  title: Text('Mobile', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                  subtitle: Text('+919656291130', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  title: Text('Address', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                  subtitle: Text('Kanjirathinkal house \nVanhode post \nWayanad-670731', style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ]
      ),
    );
  }
}
