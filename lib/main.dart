import 'package:project/splashscreen.dart';
import 'package:flutter/material.dart';

void main()async{
  await WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp()); 
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}