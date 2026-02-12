import 'package:flutter/material.dart';
import 'package:lotto_app/themes/theme_provider.dart';

import 'package:lotto_app/widgets/custom_navbar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
     create: (context) => ThemeProvider(),
     child:  const MyApp()
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
  
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home:CustomNavbar(),
     theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
