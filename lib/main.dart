import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:coopa/routes.dart';
import 'package:coopa/screens/profile/profile_screen.dart';
import 'package:coopa/screens/splash/splash_screen.dart';
import 'package:coopa/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coopa',
      theme: theme(),
      // home: SplashScreen(),q
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
