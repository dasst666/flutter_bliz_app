import 'package:flutter/material.dart';
import 'package:flutter_bliz_app/ui/add_cargo.dart';
import 'package:flutter_bliz_app/ui/add_item_screen.dart';
import 'package:flutter_bliz_app/ui/application.dart';
import 'package:flutter_bliz_app/ui/application_second.dart';
import 'package:flutter_bliz_app/ui/deliver.dart';
import 'package:flutter_bliz_app/ui/delivered.dart';
import 'package:flutter_bliz_app/ui/find_cargo_filters.dart';
import 'package:flutter_bliz_app/ui/gruz.dart';
import 'package:flutter_bliz_app/ui/gruz_block.dart';
import 'package:flutter_bliz_app/ui/my_offer.dart';
import 'package:flutter_bliz_app/ui/offer_for_me.dart';
import 'package:flutter_bliz_app/ui/offer_to_me.dart';
import 'package:flutter_bliz_app/ui/order_second_page.dart';
import 'package:flutter_bliz_app/ui/registration_second.dart';
import 'package:flutter_bliz_app/ui/reject.dart';
import 'package:flutter_bliz_app/ui/search_cargo.dart';
import 'package:flutter_bliz_app/ui/technic_categories.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff008EFF),
        accentColor: Color(0xffFFF389),
        buttonColor: Color(0xff04CC71),
        textTheme: TextTheme(
          headline1: GoogleFonts.ibmPlexSans(fontSize: 20, color: Colors.white),
        ),
      ),
      home: RegistrationSecond(),
    );
  }
}

