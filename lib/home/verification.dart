import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_food_app/styles/app_styles.dart';
import 'package:my_food_app/widget/reset%20password.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();

  int _remainingTime = 180;
  Timer? _timer;

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();

    _focusNode4.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (Timer timer) {
      if (_remainingTime == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _remainingTime--;
        });
      }
    });
  }

  @override
  // ignore : unsed_element
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore : unused_element
      backgroundColor: AppStyles.secondaryTextColor,
      appBar: AppBar(
        title: Text(
          'Reset Password',
          style: AppStyles.titleStyle.copyWith(
            fontSize: 22,
            fontFamily: 'AppleGaramond',
          ),
        ),
        centerTitle: true,
        backgroundColor: AppStyles.secondaryTextColor,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30),
            child: Text(
              'Email verification',
              style: AppStyles.titleStyle.copyWith(
                fontSize: 30,
                fontFamily: 'AppleGaramond',
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Enter the verification code we sent you on:\nAlberts******@gmail.com',
              style: AppStyles.bodyStyle.copyWith(
                fontSize: 16,

                fontFamily: 'AppleGaramond',
              ),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // here we will build the code field
            children: [
              _buildCodeField(_controller1, _focusNode1, _focusNode2),
              _buildCodeField(_controller2, _focusNode2, _focusNode3),
              _buildCodeField(_controller3, _focusNode3, _focusNode4),
              _buildCodeField(_controller4, _focusNode4, null),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.access_alarm, color: Colors.orange),
              const SizedBox(width: 3),

              Text(
                '${_remainingTime ~/ 60}:${(_remainingTime % 60).toString().padLeft(2, '0')}',
                style: TextStyle(color: Colors.orange, fontSize: 18),
              ),
            ],
          ),
          const SizedBox(height: 120),
          // here we will check if the code is correct or not
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  // Here we will check if the code is correct
                  // if correct , we will navigate to the reset password screen
                  // if incorrect , we will show a snackbar,
                  // if the code is incorrect 3 times , we will show a snackbar ,
                  // if the code is correct , we will navigate to the reset password screen
                  // we will use the code to check if it is correct or not
                  // ignore: unused_local_variable
                  Get.to(() => Resetpassword());
                  String code =
                      _controller1.text +
                      _controller2.text +
                      _controller3.text +
                      _controller4.text;
                  if (kDebugMode) {
                    print('Entered Code: $code');
                  }
                },
                style: AppStyles.orangeButtonStyle,
                child: const Text('Continue'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCodeField(
    TextEditingController controller,
    FocusNode currentFocusNode,
    FocusNode? nextFocusNode,
  ) {
    return SizedBox(
      width: 50,
      height: 50,

      child: TextField(
        controller: controller,
        cursorColor: Colors.deepOrangeAccent,
        focusNode: currentFocusNode,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,

        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        maxLength: 1,
        style: TextStyle(color: Colors.black, fontSize: 20),

        decoration: InputDecoration(
          hintText: '0',
          counterText: '',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.black, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.black, width: 1),
          ),
          hintStyle: TextStyle(color: const Color(0xFF2C2B2B), fontSize: 20),
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          labelText: '',
          labelStyle: TextStyle(color: const Color(0xFF2C2B2B), fontSize: 20),
          errorStyle: TextStyle(color: const Color(0xFF2C2B2B), fontSize: 20),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
        ),
        onChanged: (value) {
          // here we will check if the value is not empty and if the next focus node is not null \
          // if it is not empty and the next focus node is not null ,we will request the focus to the next focus node
          // if the value is empty , we will not request the focus to the next focus node
          // if the value is not empty and the next focus node is null , we will not request the focus to the next focus node
          if (value.isNotEmpty && nextFocusNode != null) {
            // here we will request the focus to the next focus node

            FocusScope.of(context).requestFocus(nextFocusNode);
          }
        },
      ),
    );
  }
}
