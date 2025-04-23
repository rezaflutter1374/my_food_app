import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:my_food_app/home/verification.dart';
import 'package:my_food_app/styles/app_styles.dart';

class ContactSelection extends StatelessWidget {
  const ContactSelection({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenWidth = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: AppStyles.secondaryTextColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot password?',
              style: AppStyles.titleStyle.copyWith(
                fontSize: 33,
                fontFamily: 'AppleGaramond',
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Select which contact details should we use to reset your password',
              style: AppStyles.bodyStyle.copyWith(
                fontSize: 16,
                fontFamily: 'AppleGaramond',
              ),
            ),
            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF0F0C09), width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/whatsapp.png',
                    width: 24,
                    height: 24,
                    color: const Color(0xFFE86E04),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Send via WhatsApp',
                          style: AppStyles.bodyStyle.copyWith(
                            fontSize: 14,
                            fontFamily: 'AppleGaramond',
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '+12 8347 2838 28',
                          style: AppStyles.bodyStyle.copyWith(
                            fontSize: 18,
                            fontFamily: 'AppleGaramond',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Checkbox(value: true, onChanged: (value) {}),
                ],
              ),
            ),
            const SizedBox(height: 16),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF13110E), width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(Icons.email, color: const Color(0xFFEC6206)),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Send via Email',
                          style: AppStyles.bodyStyle.copyWith(
                            fontSize: 14,
                            fontFamily: 'AppleGaramond',
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Albertstevano@gmail.com',
                          style: AppStyles.bodyStyle.copyWith(
                            fontSize: 18,
                            fontFamily: 'AppleGaramond',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Checkbox(value: false, onChanged: (value) {}),
                ],
              ),
            ),
            SizedBox(height: 60),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const Verification());
                },
                style: AppStyles.orangeButtonStyle,
                child: const Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
