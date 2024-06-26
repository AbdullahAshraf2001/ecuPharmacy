import 'package:ecu/ui/screens/auth/login/login_view.dart';
import 'package:ecu/ui/screens/home/home_screen.dart';
import 'package:ecu/ui/utilites/app_colors.dart';
import 'package:ecu/ui/widgets/custom_buttom.dart';
import 'package:ecu/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "register";

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),


                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Login.routeName);
                      },
                      child: Icon(CupertinoIcons.back),
                    ),

                    SizedBox(width: MediaQuery.of(context).size.width*.3,),
                    Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),


                SizedBox(height: 20.0),
                CustomTextFormField(
                  hintText: 'Enter your name',
                  controller: nameController,
                  validator: (value) => value!.isEmpty ? 'Name cannot be empty' : null,
                  type: TextInputType.name,
                ),
                SizedBox(height: 10.0),
                CustomTextFormField(
                  hintText: 'Enter your email',
                  controller: emailController,
                  validator: (value) => value!.isEmpty ? 'Email cannot be empty' : null,
                  type: TextInputType.emailAddress,
                ),
                SizedBox(height: 10.0),
                CustomTextFormField(
                  hintText: 'Enter your Phone number',
                  controller: phoneController,
                  validator: (value) => value!.isEmpty ? 'Phone number cannot be empty' : null,
                  type: TextInputType.phone,
                ),
                SizedBox(height: 10.0),
                CustomTextFormField(
                  hintText: 'Enter your password',
                  isPassword: true,
                  controller: passwordController,
                  validator: (value) => value!.isEmpty ? 'Password cannot be empty' : null,
                  type: TextInputType.text,
                ),
                SizedBox(height: 10.0),
                CustomTextFormField(
                  hintText: 'Confirm password',
                  isPassword: true,
                  controller: confirmPasswordController,
                  validator: (value) => value!.isEmpty ? 'Confirm password cannot be empty' : null,
                  type: TextInputType.text,
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.2,),
                CustomButtomWidget(
                  title: "Sign Up",
                  onPressed: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void register() {}
