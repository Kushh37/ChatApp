import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

InputDecoration textFieldInputDecoration(String hintText, Icon icon) {
  return InputDecoration(
      border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(30)),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(30)),
      hintText: hintText,
      fillColor: Colors.white24,
      filled: true,
      hintStyle:
          GoogleFonts.nunito(color: Colors.white, fontWeight: FontWeight.bold),
      prefixIcon: icon);
}

TextStyle textFieldTextStyle() {
  return GoogleFonts.nunito(color: Colors.white, fontWeight: FontWeight.bold);
}
