import 'package:covid_19_app/covid_19.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem = [
    'assets/logos/facebook.jpg',
    'assets/logos/google.jpg',
    'assets/logos/facebook.jpg',
    'assets/logos/google.jpg',
    'assets/logos/facebook.jpg',
    'assets/logos/google.jpg',
    'assets/logos/facebook.jpg',
    'assets/logos/google.jpg',
    'assets/logos/facebook.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Covid_19.themecolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text("Dashboard"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("0")),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
         Container(
          decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage("assets/backgrounds/mc7.jpg"),
          fit: BoxFit.fill)),
            ),
         SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 150,
                  child: Center(child:Text(Covid_19.name,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),),
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: _listItem.map((item) => Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(item),
                            fit: BoxFit.cover,
                          ),
                        ),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 65),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black
                            ),
                            child: Text('"Profile',style: TextStyle(color: Covid_19.themecolor),),
                          ),
                      ),
                    )).toList(),
                  )
                )
              ],
            ),
          ),
        ),
    ],
      ),
    );
  }
}
