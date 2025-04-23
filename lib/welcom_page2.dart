import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:my_food_app/home/home_page.dart';
import 'package:my_food_app/styles/app_styles.dart';
import 'package:my_food_app/welcome_page3.dart';

// ignore: camel_case_types
class Welcome_page2 extends StatelessWidget {
  const Welcome_page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/an_air-susp.jpg', fit: BoxFit.cover),
          // this  is the images of the welcome page
          //فایل  عکس   که imgeتبدیل باشد بشه imagesتا خطال برطرف بشه  و عکس  نشون  داده بشه
          Align(
            alignment: Alignment.bottomCenter,

            child: Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.70,
                height: MediaQuery.of(context).size.height * 0.30,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: const Color(0xFFFF8C00).withOpacity(0.99),
                  borderRadius: BorderRadius.circular(32),

                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 60,

                      offset: const Offset(2, 1),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.14,
                    ),

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'We serve\nincomparable\ndelicacies',
                          textAlign: TextAlign.center,

                          style: AppStyles.featuredTextStyle.copyWith(
                            fontSize: MediaQuery.of(context).size.width * 0.040,
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.019,
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.80,
                          ),
                          child: Text(
                            'All the best restaurants with their top\nmenu waiting for you, they can’t wait\nfor your order!!',
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            style: AppStyles.whiteNormalStyle.copyWith(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.034,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.040,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(() => const HomePage());
                              },

                              child: Text(
                                'Skip',

                                style: AppStyles.whiteBoldStyle.copyWith(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                              ),
                            ),
                            FilledButton.tonal(
                              onPressed: () {
                                Get.off<Welcome_page2>(
                                  opaque: false,
                                  () => const Welcome_page3(),
                                );
                              },
                              style: FilledButton.styleFrom(
                                backgroundColor: const Color(0xFFD9D9D9),
                              ),
                              // this  is the next button of the welcome page
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  color: const Color(0xFF722C00),
                                  fontSize: 14,
                                  fontFamily: ' AppleGaramond',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
