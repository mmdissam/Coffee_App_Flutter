import 'package:flutter/material.dart';
import 'package:flutter_app_firebase/services/auth.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';
import 'screens/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    // I make stream provider type user cuz value return Stream<User> from AuthService yea
    return StreamProvider<User>.value(
        value: AuthService().user,
        catchError: (_, __) => null,
        child :MaterialApp(
         home: Wrapper(),
      )
    );
  }
}
