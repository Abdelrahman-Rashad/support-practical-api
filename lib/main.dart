import 'package:flutter/material.dart';
import 'package:support_session_api/view/sign_in.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
    );
  }
}