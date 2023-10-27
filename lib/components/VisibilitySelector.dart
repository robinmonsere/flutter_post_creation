
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class VisibilitySelector extends StatelessWidget {
  final onChanged;
  final String value;

  VisibilitySelector({
    super.key,
    required this.onChanged,
    required this.value,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox (
      width: 75,
      height: 40,
      child: DropdownButtonFormField<String>(
        icon: Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black,),
        //alignment: Alignment.center,
        decoration: InputDecoration(
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(10.0)),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(30.0)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(30.0)),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: ColorConstants.lAccent,

        ),
        isDense: true,
        alignment: Alignment.center,
        borderRadius: BorderRadius.horizontal(right: Radius.circular(10.0)),
        style: TextStyle(color: Colors.black),
        onChanged: onChanged,
        value: value,
        items: <String>['Private', 'Public'].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(
              children: [
                Icon(value == 'Private' ? Icons.visibility_off : Icons.visibility),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }


}