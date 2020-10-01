import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './covid_19.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Covid_19.themecolor,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: null)],
      ),
        body:Stack(
          children: [
            Container(
              decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage("assets/backgrounds/mc7.jpg"),
              fit: BoxFit.fill)),
            ),
            SafeArea(
              child: Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 50,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 150,
                        child: Center(
                          child:Text(Covid_19.name,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),),
                      ),
                      SizedBox(height: 20),
                         GridView.count(
                            crossAxisCount: 2,
                           children: [
                             Image.asset("assets/logos/google.jpg"),
                           ],
                          ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}
