import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static const String title = "Pokedex";
  static const String imgurl = "images/pokeball.png";

  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(48),
    );
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(22),
    );
  }

  static TextStyle getPokemonChipTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(16),
    );
  }

  static EdgeInsets getDefaultPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(12.h);
    } else {
      return EdgeInsets.all(8.w);
    }
  }

  static _calculateFontSize(int size){
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    }
    else{
      return (size*0.7).sp;
    }
  }

  static getPokeInfoLabelTextStyle() {
    return TextStyle(fontSize: _calculateFontSize(17),color: Colors.black,fontWeight: FontWeight.bold);
  }

    static getPokeInfoTextStyle() {
    return TextStyle(fontSize: _calculateFontSize(12),color: Colors.black);
  }
}
