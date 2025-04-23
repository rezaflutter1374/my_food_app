import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:my_food_app/home/create_new.dart';
import 'package:my_food_app/home/forgot_password.dart';
import 'package:my_food_app/home/home_page.dart';
import 'package:my_food_app/styles/app_styles.dart';
// ignore: unused_import
import 'package:my_food_app/components/action_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool isPasswordVisible = true;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.primaryTextColor,
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 10),
              child: Text(
                'Login to your\naccount',
                style: AppStyles.titleStyle.copyWith(
                  fontSize: 30,
                  fontFamily: 'AppleGaramond',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Enter your email and password to login to your account',
                style: AppStyles.bodyStyle.copyWith(
                  fontSize: 17,
                  fontFamily: 'AppleGaramond',
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Email Address',
                style: AppStyles.subtitleStyle.copyWith(
                  fontSize: 16,
                  fontFamily: 'AppleGaramond',
                ),
              ),
            ),
            SizedBox(height: 3),
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
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Password',
                style: AppStyles.subtitleStyle.copyWith(
                  fontSize: 16,
                  fontFamily: 'AppleGaramond',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: passwordController,
                obscureText: !isPasswordVisible,
                cursorColor: Colors.orange,
                cursorWidth: 2.0,
                cursorHeight: 24.0,
                cursorRadius: const Radius.circular(4.0),
                decoration: InputDecoration(
                  hintText: '********',
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed:
                        () => setState(
                          () => isPasswordVisible = !isPasswordVisible,
                        ),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the password';
                  }
                  if (value.length < 8) {
                    return 'Enter at least 8 characters';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 9),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: InkWell(
                    onTap: () {
                      Get.to(const ForgotPassword());
                    },
                    child: Text(
                      'Forgot password ?',
                      style: AppStyles.subtitleStyle.copyWith(
                        fontSize: 16,
                        fontFamily: 'AppleGaramond',
                        color: AppStyles.accentColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 90),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const HomePage());
                },
                style: AppStyles.orangeButtonStyle.copyWith(
                  // ignore: deprecated_member_use
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 110,
                    ), 
                  ),
                ),
                child: Text('Sign In'),
              ),
            ),
            // ActionButton(
            //   label: 'Sign In',
            //   onPressed: () => Get.to(() => const HomePage()),
            //   isPrimary: true,
            // ),
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(child: Container(height: 1, color: Colors.grey)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Or sign in with',
                    style: AppStyles.bodyStyle.copyWith(
                      fontSize: 16,
                      fontFamily: 'AppleGaramond',
                    ),
                  ),
                ),
                Expanded(child: Container(height: 1, color: Colors.grey)),
              ],
            ),
            SizedBox(height: 90),
            Center(
              child: Text.rich(
                TextSpan(
                  text: 'Don\'t have an account? ',
                  style: AppStyles.bodyStyle.copyWith(
                    fontSize: 16,
                    fontFamily: 'AppleGaramond',
                  ),
                  children: [
                    TextSpan(
                      text: 'Register',
                      style: AppStyles.subtitleStyle.copyWith(
                        fontSize: 16,
                        fontFamily: 'AppleGaramond',
                        color: AppStyles.accentColor,
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(const CreateNew());
                            },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
