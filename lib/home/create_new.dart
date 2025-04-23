import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:my_food_app/home/login_page.dart';
import 'package:my_food_app/styles/app_styles.dart';

class CreateNew extends StatefulWidget {
  const CreateNew({super.key});

  @override
  State<CreateNew> createState() => _CreateNewState();
}

class _CreateNewState extends State<CreateNew> {
  final _formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  bool isChecked = false;
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
                'Create your\n new account',
                style: AppStyles.titleStyle.copyWith(
                  fontSize: 28,
                  fontFamily: 'AppleGaramond',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Create an account to start looking for the food\n you like',
                style: AppStyles.bodyStyle.copyWith(
                  fontSize: 15,
                  fontFamily: 'AppleGaramond',
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'User Name',
                style: AppStyles.subtitleStyle.copyWith(
                  fontSize: 16,
                  fontFamily: 'AppleGaramond',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Alber tstevano',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
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
            SizedBox(height: 20),
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
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                  activeColor: const Color(0xFFFF6B35),
                  checkColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Text(
                  'I Agree with Terms of Service and Privacy Policy ',
                  style: AppStyles.bodyStyle.copyWith(
                    fontSize: 16,
                    fontFamily: 'AppleGaramond',
                  ),
                ),
              ],
            ),
            SizedBox(height: 90),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const LoginPage());
                },
                style: AppStyles.orangeButtonStyle,
                child: const Text('Register'),
              ),
            ),
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
                  text: 'Don have an account?  ',
                  style: AppStyles.bodyStyle.copyWith(
                    fontSize: 16,
                    fontFamily: 'AppleGaramond',
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      style: AppStyles.subtitleStyle.copyWith(
                        fontSize: 16,
                        fontFamily: 'AppleGaramond',
                        color: AppStyles.accentColor,
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(const LoginPage());
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
