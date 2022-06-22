import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/theme/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Sign In with your\nexisting account',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget emailInput() {
      return CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your email address',
          controller: _emailController,
          obscureText: false);
    }

    Widget passwordInput() {
      return CustomTextFormField(
          title: 'Password',
          hintText: 'Your password',
          controller: _passwordController,
          obscureText: true);
    }

    Widget submitButton() {
      return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.of(context).pushNamedAndRemoveUntil(
            '/mainPage', (Route<dynamic> route) => false);
          } else if (state is AuthFailed) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.error),
              backgroundColor: kRedColor,
            ));
          }
        },
        builder: (context, state) {

           if (state is AuthLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
           }

          return CustomButton(
            title: 'Sign In',
            onPressed: () {
              context.read<AuthCubit>().signIn(
                email: _emailController.text, 
                password: _passwordController.text,
              );
            },
          );
        },
      );
    }

    Widget tacButton() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/signUp');
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 40),
          child: Text(
            'Don\'t have an account? Sign Up',
            style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ),
        ),
      );
    }

    Widget inputSection() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: <Widget>[
            emailInput(),
            passwordInput(),
            submitButton(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: <Widget>[title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}
