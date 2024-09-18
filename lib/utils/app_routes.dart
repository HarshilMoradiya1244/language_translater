import 'package:flutter/cupertino.dart';
import 'package:language_translater/screen/home/view/home_screen.dart';
import 'package:language_translater/screen/login/view/sig_in_screen.dart';
import 'package:language_translater/screen/login/view/sign_up_screen.dart';

Map<String, WidgetBuilder> app_routes = {
  '/':(context) => const SignInScreen(),
  'signUp':(context) => const SignUpScreen(),
  'home':(context) => const HomeScreen(),
};
