import 'package:ecu/ui/screens/auth/register/register_view.dart';
import 'package:ecu/ui/screens/home/home_screen.dart';
import 'package:ecu/ui/utilites/app_colors.dart';
import 'package:ecu/ui/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_text_form_field.dart';
class Login extends StatelessWidget {
  static const routeName = "login";
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height *.10,
                ),
                const Center (
                    child: Text("Sign In",style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),)
                ),
                const SizedBox(height: 30,),
                CustomTextFormField(
                  hintText: 'Enter your email',
                  controller: emailController,
                  validator: (value) =>
                  value!.isEmpty ? 'Email cannot be empty' : null,
                  type: TextInputType.emailAddress,
                ),
                const SizedBox(height: 25,),
                CustomTextFormField(
                  hintText: 'Enter your password',
                  isPassword: true,
                  controller: passwordController,
                  validator: (value) =>
                  value!.isEmpty ? 'Password cannot be empty' : null,
                  type: TextInputType.text,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ),
                ),
                const SizedBox(height: 70,),
                CustomButtomWidget(
                    title: "Sign In", onPressed: (){Navigator.pushNamed(context, HomeScreen.routeName);}
                ),
                TextButton(
                  onPressed: () {Navigator.pushNamed(context, RegisterScreen.routeName);},
                  child: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: "Don't have an account? "),
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyle(color: AppColors.primary),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('OR'),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25,),
                SizedBox(
                  width: double.infinity,
                  height: 48.0,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.email,
                      color: AppColors.primary,
                      size: 24.0,
                    ),
                    label: const Text('Sign in with Google'),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  height: 48.0,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.facebook,
                      color: AppColors.primary,
                      size: 24.0,
                    ),
                    label: const Text('Sign in with Facebook'),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


