import 'package:flutter/cupertino.dart';

class CheckValidate{
  /*String? validateName(FocusNode fNode, String value){
    if(value.isEmpty){
      return 'Type a valid name';
    }
    else{
      return null;
    }
  }

  String? validatePW(FocusNode fNode, String value){
    if(value.length<8){
      return 'Type a valid password';
    }
    else{
      return null;
    }
  }*/
  String? validate(String label, FocusNode fNode, String value, int minLength) {
    String temp = label.toLowerCase();
    if (value.length < minLength) {
      if(temp.indexOf('block')==0){
        return 'Type a valid course name';
      }
      return 'Type a valid $temp';
    }
    else {
      return null;
    }
  }
}