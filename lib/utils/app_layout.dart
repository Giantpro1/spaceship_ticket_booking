 import 'package:flutter/cupertino.dart';
 import 'package:get/get.dart';

class AppLayOut {
   static getSize(BuildContext context){
    return MediaQuery.of(context).size; 
   }

  static getScreenHeight(){
    return Get.height;
  }

  static getScreenWidth(){
    return Get.width;
  }

  static getHeight(double phoneSize){
    double x = getScreenHeight()/phoneSize;
    return getScreenHeight()/x;
  }

  static getWidth(double phoneSize){
    double x = getScreenWidth()/phoneSize;
    return getScreenWidth()/x;
  }
 }