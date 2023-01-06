import 'package:amertad/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String fontEN = 'roboto';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'amertad',
      theme: ThemeData(
          buttonTheme: const ButtonThemeData(),
          tabBarTheme: TabBarTheme(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.blue.shade700,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(fontFamily: fontEN),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blue.shade700),
                  elevation: MaterialStateProperty.all(0),
                  minimumSize: MaterialStateProperty.all(Size(300, 70)))),
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
          primaryColor: Colors.blue,
          appBarTheme: AppBarTheme(
              elevation: 8,
              shadowColor: Colors.grey.withOpacity(0.2),
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(color: Colors.black)),
          textTheme: const TextTheme(
              headline6: TextStyle(
                  fontFamily: fontEN,
                  fontWeight: FontWeight.bold,
                  fontSize: 32))),
      home: const SplashScreen(),
    );
  }
}
