import 'package:flutter/material.dart';
import 'package:new_one/AppColors/AllColors.dart';
import 'package:new_one/mainHomepage.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'AppUtils/Utils.dart';



class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController _otpController = TextEditingController();
  bool isResending = false;

  // Simulating a resend functionality
  Future<void> resendOTP() async {
    // Add your logic to resend OTP here (e.g., send a new OTP)
    print("Resending OTP...");
    // Simulating a delay for demonstration purposes
    await Future.delayed(Duration(seconds: 2));
    print("New OTP sent!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appUser(whiteColor),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),

          // Container with text
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.center,
            child: Text(
              "Your additional information or instructions can go here.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          // Display your logo or header here if needed

          // OTP input field
          Padding(
            padding: const EdgeInsets.only(left: 19,right: 19),
            child: PinCodeTextField(
              appContext: context,
              length: 4,
              controller: _otpController,
              onChanged: (value) {
                // Handle OTP input changes
              },
              onCompleted: (value) {
                // Handle OTP verification
                print("OTP Verified: $value");
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                fieldHeight: 50,
                fieldWidth: 65,
                activeColor: blackColor,
                inactiveColor: Colors.grey,
                selectedColor: blackColor,
              ),
            ),
          ),

          // Spacer to push the button to the bottom
          Spacer(),

          // Row containing a TextButton for resending OTP
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Didn't receive the code? "),
              TextButton(
                onPressed: isResending
                    ? null
                    : () async {
                  setState(() {
                    isResending = true;
                  });
                  await resendOTP();
                  setState(() {
                    isResending = false;
                  });
                },
                child: Text(
                  "Resend",
                  style: TextStyle(
                    color: isResending ? Colors.grey : Colors.blue,
                  ),
                ),
              ),
            ],
          ),

          // Button to manually submit OTP
          Container(
            height: 50,
            width: 400,
            child: ElevatedButton(
              onPressed: () {
                // Handle manual submission of OTP
                String enteredOTP = _otpController.text;
                if (enteredOTP.length == 4) {
                  print("Manually Entered OTP: $enteredOTP");
                  // Perform OTP verification here
                } else {
                  // Display an error or prompt the user to enter a valid OTP
                }
              },
              child: buttonuser( 'Submit Otp',  mainhome)

              ),
            ),


          // SMS Autofill (optional)

        ],
      ),
    );
  }
}

