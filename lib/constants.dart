
import 'package:flutter/material.dart';

// constants used to access and in case modify with necessary properties. ß
const kSendButtonTextStyle = TextStyle(
  color: Colors.black54,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  
  contentPadding: EdgeInsets.symmetric(
    vertical: 10, horizontal: 20),
    
  hintText: 'Write your message here... ',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  color: Colors.lightGreen,
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2),
  ),
);

const kTextFieldDecoration = InputDecoration(
  
  hintText: 'Enter a value', 
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
    borderRadius: BorderRadius.all(Radius.circular(32),
    ),
  ),
    
);