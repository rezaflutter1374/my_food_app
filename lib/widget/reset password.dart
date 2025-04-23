// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:my_food_app/home/home_page.dart';
import 'package:my_food_app/styles/app_styles.dart';
// ignore: unused_import
import 'package:my_food_app/widget/contactselection.dart';

class Resetpassword extends StatefulWidget {
  Resetpassword({super.key});

  @override
  // ignore: library_private_types_in_public_api
  State<Resetpassword> createState() => _ResetpasswordState();
  final TextEditingController newPassword = TextEditingController();
}

class _ResetpasswordState extends State<Resetpassword> {
  // ignore: unused_field
  final TextEditingController newPassword = TextEditingController();

  final bool isPasswordVisible = true;
  final bool isConfirmPasswordVisible = true;

  final bool isConfirmPasswordMatch = true;
  // ignore: unused_field
  final bool _ = true;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final TextEditingController newPasswordController = TextEditingController(
      text: '',
    );
    // ignore: unused_local_variable
    final TextEditingController confirmPasswordController =
        TextEditingController(text: '');
    // ignore: unused_local_variable
    bool isPasswordVisible = true;

    // ignore: unused_local_variable
    final bool isConfirmPasswordVisible = true;
    final bool _ = true;
    // ignore: unused_local_variable
    // ignore: unused_local_variable
    final bool isConfirmPasswordMatch = true;
    // ignore: unused_local_variable
    final bool _ = true;
    // ignore: unused_local_variable
    final bool _ = true;

    return Scaffold(
      backgroundColor: AppStyles.secondaryTextColor,
      appBar: AppBar(
        backgroundColor: AppStyles.secondaryTextColor,
        title: Text(
          'Reset Password',
          style: AppStyles.titleStyle.copyWith(
            fontSize: 20,
            fontFamily: 'AppleGaramond',
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_constructors
              children: [
                // ignore: prefer_counst
                Text(
                  'Enter your new password',
                  style: AppStyles.titleStyle.copyWith(
                    fontSize: 24,

                    fontFamily: 'AppleGaramond',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 40),

            child: Text(
              'Your new password must be different from the\npreviously used password',

              style: AppStyles.bodyStyle.copyWith(
                fontSize: 16,
                fontFamily: 'AppleGaramond',
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'New Password',
              style: AppStyles.titleStyle.copyWith(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              controller: newPassword,
              obscureText: !isPasswordVisible,
              cursorColor: Colors.orange,

              cursorWidth: 2.0,
              cursorHeight: 24.0,
              cursorRadius: const Radius.circular(4.0),
              decoration: InputDecoration(
                hintText: '********',
                // ignore: prefer_const_constructors
                hintStyle: AppStyles.bodyStyle.copyWith(
                  fontSize: 16,
                  fontFamily: 'AppleGaramond',
                ),
                // ignore: prefer_const_constructors
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon: IconButton(
                  // ignore: dead_code
                  icon: Icon(
                    isPasswordVisible
                        // ignore: dead_code
                        ? Icons.visibility_off
                        //ignore: prefer_const_constructors
                        //ignore:prefer_const_literals_to_create_immutables, dead_code
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
                  //ignore: unused_local_variable
                }

                if (value.length < 8) {
                  return 'Enter at least 8 characters';
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 60),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Confirm Password',
              style: AppStyles.titleStyle.copyWith(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              controller: newPasswordController,
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
                        // ignore: dead_code
                        ? Icons.visibility_off
                        //ignore: prefer_const_constructors
                        //ignore:prefer_const_literals_to_create_immutables
                        : Icons.visibility,

                    // ignore: dead_code
                    color: Colors.grey,
                    // ignore: dead_code
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
                  // ignore: dead_code
                  return 'Enter at least 8 characters';
                }
                return null;
                // ignore: unused_local_variable, dead_code
                final bool isConfirmPasswordMatch = true;

                // ignore: unused_local_variable, dead_code,
                final bool isConfirmPasswordVisible = false;
                // ignore: unused_local_variable, dead_code,
              },
            ),
          ),
          SizedBox(height: 90),

          Center(
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (_) {
                    return DraggableScrollableSheet(
                      initialChildSize: 0.5,
                      maxChildSize: 0.6,
                      minChildSize: 0.3,
                      snap: true,
                      builder: (context, scrollController) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,

                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25),
                            ),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                'assets/images/okayso.png',
                                height: 230,
                                width: 100,
                              ),
                              SizedBox(height: 36),

                              Text(
                                'Password Changed',
                                textAlign: TextAlign.center,

                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 36),

                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Get.to(() => HomePage());
                                  },
                                  style: AppStyles.orangeButtonStyle,

                                  child: Text(
                                    'Verify Account',
                                    style: AppStyles.whiteBoldStyle.copyWith(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'AppleGaramond',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              },
              style: AppStyles.orangeButtonStyle,
              child: Text(
                'Verify Account',
                style: AppStyles.whiteBoldStyle.copyWith(
                  fontSize: 20,
                  fontFamily: 'AppleGaramond',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
