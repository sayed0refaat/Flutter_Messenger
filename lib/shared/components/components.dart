
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

Widget defaultformfield({
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword=false ,
  Function(String)? onSubmitted,
  Function(String)? onChanged,
  required String? Function(String?) validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  VoidCallback? SuffixPressed,
}) => TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  onFieldSubmitted: onSubmitted,
  onChanged: onChanged,
  validator: validate,
  decoration: InputDecoration(
    // hintText: 'Email Address',
    labelText: label,
    prefixIcon: Icon(
      prefix,
    ),
    suffixIcon: suffix!=null ? IconButton(
      icon: Icon(
        suffix,
      ),
      onPressed: SuffixPressed,
    ) : null,
    border: OutlineInputBorder(),
  ),
);