import 'package:flutter/cupertino.dart';

class Covid_19 {
  static const String name = "Medi Care";
  static const String Desc = "Hang in there,\n as better times are ahead.";
  String imageAssetPath;
  String title;
  String desc;

  static const Color themecolor= Color(0xFF20B2AA);
  static Image background_image= Image.asset("assets/backgrounds/mc7.jpg");


  Covid_19({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }
}

List<Covid_19> getSlides(){

  List<Covid_19> slides = new List<Covid_19>();
  Covid_19 sliderModel = new Covid_19();

  //1
  sliderModel.setDesc("Discover nearest Hospitals and Medical shops, get prescriptions..");
  sliderModel.setTitle("Search");
  sliderModel.setImageAssetPath("assets/backgrounds/ob1.jpg");
  slides.add(sliderModel);

  sliderModel = new Covid_19();

  //2
  sliderModel.setDesc("Make our each step to fight against each pademic situations...");
  sliderModel.setTitle("Let's Fight");
  sliderModel.setImageAssetPath("assets/backgrounds/ob2.jpg");
  slides.add(sliderModel);

  sliderModel = new Covid_19();

  //3
  sliderModel.setDesc("Let us make your life secured in our hands..");
  sliderModel.setTitle("Connect to All");
  sliderModel.setImageAssetPath("assets/backgrounds/ob3.jpg");
  slides.add(sliderModel);

  sliderModel = new Covid_19();

  return slides;
}
