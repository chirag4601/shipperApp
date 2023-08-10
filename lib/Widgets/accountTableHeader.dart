import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:screenshot/screenshot.dart';
import 'package:shipper_app/constants/fontSize.dart';

Container AccountTableHeader(context) {
  bool small = true;
  double leftRightPadding, textFontSize, containerWidth;
  var screenWidth = MediaQuery.of(context).size.width;
  if (screenWidth < 1400 && screenWidth > 1099) {
    small = true;
  } else {
    small = false;
  }

  if (small) {
    leftRightPadding = 0;
    textFontSize = 12;
    containerWidth = 56;
  } else {
    leftRightPadding = 20;
    textFontSize = 16;
    containerWidth = 100;
  }

  return Container(
    height: 50,
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Color.fromARGB(255, 197, 195, 195), width: 1),
            top: BorderSide(color: Color.fromARGB(255, 197, 195, 195), width: 1),
            left: BorderSide(color: Color.fromARGB(255, 197, 195, 195), width: 1),
            right: BorderSide(color: Color.fromARGB(255, 197, 195, 195), width: 1))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 4,
            child: Center(
                child: Container(
                    //padding: EdgeInsets.only(left: 8),
                    child: Text(
                      
                          'Users',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 135, 135, 135),
                          fontSize: size_8,
                          fontFamily: 'Montserrat'),
                    )))),
        VerticalDivider(color: Color.fromARGB(255, 197, 195, 195), thickness: 1),

        Expanded(
            flex: 5,
            child: Center(
                child: Container(
                    //padding: EdgeInsets.only(left: 8),
                    child: Text(
                      
                          'Email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 135, 135, 135),
                          fontSize: size_8,
                          fontFamily: 'Montserrat'),
                    )))),
        VerticalDivider(color: Color.fromARGB(255, 197, 195, 195), thickness: 1),

        Expanded(
            flex: 3,
            child: Center(
                child: Container(
                    //padding: EdgeInsets.only(left: 8),
                    child: Text(
                      
                          'Role',
                          
                      textAlign: TextAlign.center,
                      selectionColor: Color.fromARGB(255, 135, 135, 135),
                      style: TextStyle(
                          color: Color.fromARGB(255, 135, 135, 135),
                          fontSize: size_8,
                          fontFamily: 'Montserrat'),
                    )))),
        VerticalDivider(color: Color.fromARGB(255, 197, 195, 195), thickness: 1),

        Expanded(
            flex: 3,
            child: Center(
                child: Container(
                    //padding: EdgeInsets.only(left: 8),
                    child: Text(
                      
                          'Delete',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: size_8,
                          color: Color.fromARGB(255, 135, 135, 135),
                          
                          fontFamily: 'Montserrat'),
                    )))),
       
        
      ],
    ),
  );
}
