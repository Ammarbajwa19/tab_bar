import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


TextStyle appstyle(double Size, Color color, FontWeight fw){
  return GoogleFonts.poppins(fontSize: Size, color: color, fontWeight: fw);
}
TextStyle appstylewithHt(double Size, Color color, FontWeight fw, ht){
  return GoogleFonts.poppins(fontSize: Size, color: color, fontWeight: fw, height: ht);
}