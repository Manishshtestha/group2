import 'package:clientx/screens/admin/admin_bottomnav.dart';
import 'package:clientx/screens/client/client_bottomnav.dart';
import 'package:clientx/screens/login_page.dart';
import 'package:clientx/screens/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/clientBottomNav',
        routes:{
            '/adminBottomNav':(context)=>AdminBottomNav(),
            '/clientBottomNav':(context)=>ClientBottomnav(),
            '/login':(context)=>LoginPage(),
            '/register':(context)=>RegisterPage()
        }
    );
  }
}