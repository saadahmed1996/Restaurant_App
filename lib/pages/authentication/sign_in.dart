import 'package:flutter/material.dart';
import 'package:restaurant_application/pages/authentication/sign_up.dart';
import 'package:restaurant_application/pages/home/bottom_navigation/bottom_navgivation_bar.dart';
import 'package:restaurant_application/pages/home/main_food_body.dart';
import 'package:restaurant_application/utils/colors.dart';
import 'package:restaurant_application/utils/dimensions.dart';
import 'package:restaurant_application/widgets/bigtext.dart';
import 'package:restaurant_application/widgets/smalltext.dart';
import 'package:restaurant_application/widgets/textField.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Container For Logo Image
          Container(
            height: Responsive.height(22, context),
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              //color: Colors.redAccent,
              image: DecorationImage(
                image: AssetImage('assets/image/logo part 1.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          //Container for welcome heading
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                //color: Colors.yellowAccent,
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Responsive.height(1.5, context),
                ),
                BigText(
                  text: 'W e l c o m e',
                  size: Responsive.height(10, context),
                ),
                SmallText(
                  text: 'Sign into your account',
                  size: Responsive.height(3.5, context),
                  color: Colors.black38,
                ),
              ],
            ),
          ),

          //Container for text field.
          Container(
            margin: EdgeInsets.only(
              top: Responsive.height(1, context),
              left: Responsive.height(3, context),
              right: Responsive.height(3, context),
            ),
            height: Responsive.height(18, context),
            decoration: BoxDecoration(
                //color: Colors.redAccent,
                ),
            child: Column(
              children: [
                CustomTextField(
                    isPassword: false,
                    text: 'Enter Your Name',
                    icon: Icons.person,
                    hintText: 'Enter Your Name'),
                SizedBox(
                  height: Responsive.height(1, context),
                ),
                CustomTextField(
                  isPassword: true,
                  text: 'Enter Your Password',
                  icon: Icons.lock,
                  hintText: 'Enter Your Password',
                ),
              ],
            ),
          ),

          //Container for forgot password.
          Container(
            height: Responsive.height(5, context),
            margin: EdgeInsets.only(
              left: Responsive.width(45, context),
            ),
            decoration: BoxDecoration(
                //color: Colors.yellowAccent,
                ),
            child: SmallText(
              text: 'Forgot Password',
              size: Responsive.height(3, context),
              color: Colors.black38,
            ),
          ),

          //Container for Sign in Button.
          Container(
            height: Responsive.height(9, context),
            width: Responsive.width(45, context),
            decoration: BoxDecoration(
                // color: Colors.redAccent,
                // borderRadius: BorderRadius.circular(
                //   Responsive.height(5, context),
                // ),
                ),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => BottomNavBar(),
                //   ),
                // );
              },
              child: SmallText(
                text: 'Sign In',
                size: Responsive.height(5, context),
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                primary: CustomColors.mainAppColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    Responsive.height(4, context),
                  ),
                ),
              ),
            ),
          ),

          //Container to navigate to create new account.
          Container(
            height: Responsive.height(7, context),
            width: Responsive.width(85, context),
            decoration: BoxDecoration(
                //color: Colors.redAccent,
                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmallText(
                  text: 'Dont have an account?',
                  size: Responsive.height(3, context),
                  color: Colors.black38,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    );
                  },
                  child: SmallText(
                    text: 'Create',
                    size: Responsive.height(3, context),
                    color: CustomColors.mainAppColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
