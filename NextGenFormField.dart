import 'package:flutter/material.dart';

class NextGenFormField extends StatelessWidget {

  NextGenFormField({
    Key key,
    this.enabled,
    this.controller,
    this.initialValue,
    this.labelText,
    this.hintText,
    this.icon,
    this.errorMsg,
    this.isObscure,
    this.isOptional,
    this.maxLength,
    this.inputType,
    this.onSaved,
    this.autofocus,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.focusNode,
    this.textInputAction,
  }) : super(key: key);

  final bool enabled;
  final TextEditingController controller;
  final String initialValue;
  final String labelText;
  final String hintText;
  final Icon icon;
  final String errorMsg;
  final bool isObscure;
  final bool isOptional;
  final int maxLength;
  final TextInputType inputType;
  final bool autofocus;
  final Function onFieldSubmitted;
  final Function onEditingComplete;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final Function onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction == null? TextInputAction.next: textInputAction,
      focusNode: focusNode==null? null: focusNode,
      onEditingComplete: onEditingComplete== null? null : onEditingComplete,
      onFieldSubmitted : onFieldSubmitted == null? null : onFieldSubmitted,
      autofocus: autofocus ==null? false: true,
      enabled: enabled,
      controller: controller==null? null: controller,
      initialValue: initialValue==null? null:initialValue,
      obscureText: isObscure==null? false: true,
      style: TextStyle(
        fontSize: 15.0,
        color: Theme.of(context).primaryColor,
      ),
      decoration: InputDecoration(
        labelText: isOptional == true? '$labelText': '* $labelText',
        hintText: '$hintText',
        hintStyle: TextStyle(
          //color: Colors.indigo[900],
        ),
        icon: icon == null? Icon(Icons.home) : Icon(icon.icon, color: Theme.of(context).buttonColor),
        //fillColor: Colors.indigo[900],
        //contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        /*border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: Colors.lightBlueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: Colors.lightBlueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),*/
      ),
      maxLength: maxLength==null? null: maxLength,
      keyboardType: inputType,
      onSaved: onSaved,
      validator: (value) {
        if(isOptional == true){
          return null;
        }
        if (value.trim().isEmpty) {
          return '$errorMsg';
        }
        return null;
      },
    );
  }
}