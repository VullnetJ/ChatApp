import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  // custom button class used as component. 
 RoundedButton({required this.colour, required this.title, required this.onPressed
    });
    final Color colour;
    final String title;
    final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
      child: Material(
        elevation: 5,
        color: colour,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200,
          height: 42,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
