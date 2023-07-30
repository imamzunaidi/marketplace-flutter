import 'package:flutter/material.dart';
import 'package:market/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  Widget header(){
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: primaryTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Sign In To Continue',
            style: subtitleTextStyle,
            ),
        ],
      ),
    );
  }

  Widget emailInput(){
    return Container(
      margin: EdgeInsets.only(top:70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),  
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height : 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/icon_email.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: "Your Email Address",
                        hintStyle: subtitleTextStyle,
                      ),
                    )),
                  ],
                ),
              ),
            )

        ],
      ),
    );
  }

  Widget passwordInput(){
    return Container(
      margin: EdgeInsets.only(top:20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Password Address',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),  
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height : 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/icon_password.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: "Your Password",
                        hintStyle: subtitleTextStyle,
                      ),
                    )),
                  ],
                ),
              ),
            )

        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              emailInput(),
              passwordInput(),
            ],
          ),
        ),
      ),
    );
  }
}