import 'dart:async';
import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    Timer(Duration(seconds: 5),
        () {
        User? user = FirebaseAuth.instance.currentUser;

        if (user == null) {
          Navigator.pushReplacementNamed(context, '/getStarted');
        } else {
          context.read<AuthCubit>().getCurrentUser(user.uid);
          Navigator.pushReplacementNamed(context, '/mainPage');
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/ic_logo.png'),
                ),
              ),
            ),
            Text('AIRPLANE',
            style: whiteTextStyle.copyWith(
              fontSize: 32,
              fontWeight: medium,
              letterSpacing: 10
            ),)
          ],
        ),
      ),
    );
  }
}