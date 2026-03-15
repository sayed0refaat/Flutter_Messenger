
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultbutton({
  double width=double.infinity,
  Color background=Colors.cyan,
  bool IsUpperCase=true,
  required  VoidCallback function,
  required String text,

}) => Container(
  width: width,
  color: background ,
  child: MaterialButton(
    onPressed : function,
    child: Text(
      IsUpperCase ? text.toUpperCase() : text,
      style: TextStyle(
          color: Colors.white
      ),
    ) ,
  ),
);

