import 'package:flutter/material.dart';
import 'package:market/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  Widget header(){
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign Up',
            style: primaryTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Register and Happy Shopping',
            style: subtitleTextStyle,
            ),
        ],
      ),
    );
  }

  
  Widget nameInput(){
    return Container(
      margin: EdgeInsets.only(top:70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name',
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
                    Image.asset('assets/icon_name.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: "Your Full Name",
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

Widget emailInput(){
    return Container(
      margin: EdgeInsets.only(top:20),
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

  Widget usernameInput(){
    return Container(
      margin: EdgeInsets.only(top:20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username',
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
                    Image.asset('assets/icon_username.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: "Your Username",
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
            'Password',
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
                      obscureText: true,
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

  Widget signUpButton(){
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 50),
      child: TextButton(
        onPressed: (){},
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),
        child: Text(
          "Sign Up",
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),  
      ),
    );
  }

  Widget footer(BuildContext context){
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Already have a account? ',
          style: subtitleTextStyle.copyWith(
            fontSize: 12,
          ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Text(
              'Sign In',
              style: purpleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              nameInput(),
              usernameInput(),
              emailInput(),
              passwordInput(),
              signUpButton(),
              Spacer(),
              footer(context),
            ],
          ),
        ),
      ),
    );
  }
}