import 'package:flutter/material.dart';
import 'package:language_translater/screen/home/provider/translater_provider.dart';
import 'package:language_translater/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TranslaterProvider(),)
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: app_routes,
      ),
    ),
  );
}
