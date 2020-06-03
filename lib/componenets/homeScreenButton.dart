import 'package:flutter/material.dart';


class homeScreenButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final Function onPressed;


  homeScreenButton({this.buttonColor, this.buttonText, this.onPressed});

  /*const homeScreenButton({
    Key key,
  }) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
            )
          ),
        ),
      ),
    );
  }
}