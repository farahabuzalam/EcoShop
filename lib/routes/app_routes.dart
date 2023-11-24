import 'package:farah_s_ecoshop/presentation/iphone_14_eight_screen/carrefourItems.dart';
import 'package:flutter/material.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_one_screen/iphone_14_one_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_three_screen/iphone_14_three_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_four_screen/iphone_14_four_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_nine_screen/iphone_14_nine_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_eight_screen/iphone_14_eight_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_six_screen/iphone_14_six_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_seven_screen/iphone_14_seven_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_five_screen/iphone_14_five_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_two_screen/iphone_14_two_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_eleven_screen/iphone_14_eleven_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_twelve_screen/iphone_14_twelve_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_thirteen_screen/iphone_14_thirteen_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_fourteen_screen/iphone_14_fourteen_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_fifteen_screen/iphone_14_fifteen_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_sixteen_screen/iphone_14_sixteen_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_seventeen_screen/iphone_14_seventeen_screen.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_eighteen_screen/iphone_14_eighteen_screen.dart';
import 'package:farah_s_ecoshop/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone14OneScreen = '/iphone_14_one_screen';

  static const String iphone14ThreeScreen = '/iphone_14_three_screen';

  static const String iphone14FourScreen = '/iphone_14_four_screen';

  static const String iphone14NineScreen = '/iphone_14_nine_screen';

  static const String iphone14EightScreen = '/iphone_14_eight_screen';

  static const String iphone14SixScreen = '/iphone_14_six_screen';

  static const String iphone14SevenScreen = '/iphone_14_seven_screen';

  static const String iphone14FiveScreen = '/iphone_14_five_screen';

  static const String iphone14TwoScreen = '/iphone_14_two_screen';

  static const String iphone14ElevenScreen = '/iphone_14_eleven_screen';

  static const String iphone14TwelveScreen = '/iphone_14_twelve_screen';

  static const String iphone14ThirteenScreen = '/iphone_14_thirteen_screen';

  static const String iphone14FourteenScreen = '/iphone_14_fourteen_screen';

  static const String iphone14FifteenScreen = '/iphone_14_fifteen_screen';

  static const String iphone14SixteenScreen = '/iphone_14_sixteen_screen';

  static const String iphone14SeventeenScreen = '/iphone_14_seventeen_screen';

  static const String iphone14EighteenScreen = '/iphone_14_eighteen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String carrefourItems = '/iphone_14_eight_screen/carrefourItems';


  static Map<String, WidgetBuilder> routes = {
    iphone14OneScreen: (context) => Iphone14OneScreen(),
    iphone14ThreeScreen: (context) => Iphone14ThreeScreen(),
    iphone14FourScreen: (context) => Iphone14FourScreen(),
    iphone14NineScreen: (context) => Iphone14NineScreen(),
    iphone14EightScreen: (context) => Iphone14EightScreen(),
    iphone14SixScreen: (context) => Iphone14SixScreen(),
    iphone14SevenScreen: (context) => Iphone14SevenScreen(),
    iphone14FiveScreen: (context) => Iphone14FiveScreen(),
    iphone14TwoScreen: (context) => Iphone14TwoScreen(),
    iphone14ElevenScreen: (context) => Iphone14ElevenScreen(),
    iphone14TwelveScreen: (context) => Iphone14TwelveScreen(),
    iphone14ThirteenScreen: (context) => Iphone14ThirteenScreen(),
    iphone14FourteenScreen: (context) => Iphone14FourteenScreen(),
    iphone14FifteenScreen: (context) => Iphone14FifteenScreen(),
    iphone14SixteenScreen: (context) => Iphone14SixteenScreen(),
    iphone14SeventeenScreen: (context) => Iphone14SeventeenScreen(),
    iphone14EighteenScreen: (context) => Iphone14EighteenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    carrefourItems: (context) => CarrefourItems(),

  };

  }
