import 'package:flutter/material.dart';
import 'package:whats_app/core/colors/colors.dart';
import 'package:whats_app/widget/app_button.dart';
import 'package:whats_app/widget/app_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 50,),
          AppText(text: "Welcome to WhatsApp",color: mainColor,fontSize: 25,),
        Padding(
          padding: const EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child:Image.asset('assets/images/logo_login.jpg',
              width: double.infinity,
              height: 500,),
          ),
        ),
        Text("Read Our Privacy Policy, Tap \"Agree and continue\" to\n "
            "                  accept the Terms of Service"),
        AppButton(title: "AGREE AND CONTINUE")

      ],)),
    );
  }
}
