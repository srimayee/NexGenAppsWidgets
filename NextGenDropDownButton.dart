import 'package:ecommerce_app/widgets/theme.dart';
import 'package:flutter/material.dart';

class NextGenDropDownButton extends StatelessWidget {

  NextGenDropDownButton({
    Key key,
    this.value,
    this.isExpanded,
    this.enabled,
    this.hint,
    this.icon,
    this.errorMsg,
    this.inputType,
    this.onSaved,
    this.onChanged,
    this.validate,
    this.items,
    this.labelText,
    this.isOptional,
    this.enableBorder,

  }) : super(key: key);

  final bool isOptional;
  final String value;
  final Function validate;
  final bool enabled;
  final Widget hint;
  final Icon icon;
  final String errorMsg;
  final bool isExpanded;
  final TextInputType inputType;
  final Function onChanged;
  final Function onSaved;
  final List items;
  final String labelText;
  final Widget enableBorder;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: value == null ? null : value,
//      decoration: InputDecoration(
//        labelText: labelText,
////        contentPadding: const EdgeInsets.all(10),
//        enabledBorder: enableBorder == null ? OutlineInputBorder(
////            borderSide:
////            new BorderSide(color: Colors.teal)
////          borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8)),
//        ) : enableBorder,
//      ),
      decoration: InputDecoration(
        enabledBorder: enableBorder == null ? OutlineInputBorder(
//            borderSide:
//            new BorderSide(color: Colors.teal)
//          borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8)),
        ) : enableBorder,
        labelText: isOptional == true? '$labelText': '* $labelText',
        contentPadding: EdgeInsets.all(10.0),
        filled: true,
        fillColor: MyColors.textFieldBackGroundColor,
        hintStyle: TextStyle(
          color: Colors.indigo[900],
        ),
        icon: icon == null? null : icon,
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
      icon: icon==null?Icon(Icons.arrow_drop_down) : null,
      items: items,
      onChanged : onChanged == null? null : onChanged,
      validator: validate == null ?
          (value) {
        if(isOptional == true){
          return null;
        }
        if(value == null){
          return '$errorMsg';
        }
        if (value.trim().isEmpty) {
          return '$errorMsg';
        }
        return null;
      } : validate,
    );
  }
}