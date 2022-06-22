import 'package:airplane/theme/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/img_get.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold
                  ),),
                  SizedBox(height: 10),
                  Text('Explore new world with us and let\nyourself get an amazing experiences',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light
                  ),
                  textAlign: TextAlign.center,),
                  CustomButton(
                    title: 'Get Started',
                    width: 220,
                    margin: EdgeInsets.only(top: 50, bottom: 80),
                    onPressed: () { 
                      Navigator.pushNamed(context, '/signUp');
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}