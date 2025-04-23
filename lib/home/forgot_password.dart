import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:my_food_app/home/verification.dart';
import 'package:my_food_app/styles/app_styles.dart';
// ignore: unused_import
import 'package:my_food_app/widget/contactselection.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.secondaryTextColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 20),
            child: Text(
              'Forgot password?',
              style: AppStyles.titleStyle.copyWith(
                fontSize: 33,
                fontFamily: 'AppleGaramond',
              ),
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
              'Enter your email address to reset your password',
              style: AppStyles.bodyStyle.copyWith(
                fontSize: 16,
                fontFamily: 'AppleGaramond',
              ),
            ),
          ),
          SizedBox(height: 90),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Text(
              'Email Address',
              style: AppStyles.subtitleStyle.copyWith(
                fontSize: 16,
                fontFamily: 'AppleGaramond',
              ),
            ),
          ),
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              cursorColor: Colors.orange,
              cursorWidth: 2.0,
              cursorHeight: 24.0,
              cursorRadius: const Radius.circular(4.0),
              decoration: InputDecoration(hintText: 'Enter your email'),
            ),
          ),
          SizedBox(height: 110),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => Verification());
              },
              style: AppStyles.orangeButtonStyle.copyWith(
                padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 110),
                ),
              ),
              child: Text('Sign In'),
            ),
          ),
        ],
      ),
    );
  }
}
