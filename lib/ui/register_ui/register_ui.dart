import 'package:e_commerceapp/shared/components/custom_button.dart';
import 'package:e_commerceapp/shared/components/custom_text_form_feild.dart';
import 'package:e_commerceapp/shared/components/form_label.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const String routename = "Register";
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController? repasswordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 75,
            ),
            Image.asset("assets/image/Route_Login_Logo.png"),
            const SizedBox(
              height: 20,
            ),
            FormLabel(label: "Full name"),
            const SizedBox(
              height: 24,
            ),
            CustomTextFormFeild(
                hintText: "please enter your Full name",
                controller: nameController,
                validator: (Text) {
                  if (Text == null || Text.isEmpty) {
                    return 'please enter your full name';
                  }
                  return null; // return null means no error
                },
                type: TextInputType.name),
            const SizedBox(
              height: 24,
            ),
            FormLabel(label: "Mobil number"),
            const SizedBox(
              height: 24,
            ),
            CustomTextFormFeild(
              hintText: "Please enter your Mobile Number",
              controller: phoneController,
              validator: (Text) {
                if (Text == null || Text.isEmpty) {
                  return 'please enter your number';
                }
                if (Text.length < 10) {
                  return " invalid phone number ";
                }
                return null;
              },
              type: TextInputType.phone,
            ),
            const SizedBox(
              height: 24,
            ),
            FormLabel(label: "EmailAddress"),
            const SizedBox(
              height: 24,
            ),
            CustomTextFormFeild(
                hintText: "please enter your email",
                controller: emailController,
                validator: (Text) {
                  if (Text == null || Text.isEmpty) {
                    return 'please enter your email';
                  }
                  var emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(Text);
                  if (!emailValid) {
                    return 'email format invaild';
                  }
                  return null; // return null means no error
                },
                type: TextInputType.emailAddress),
            const SizedBox(
              height: 24,
            ),
            FormLabel(label: "Password"),
            const SizedBox(
              height: 24,
            ),
            CustomTextFormFeild(
              hintText: "Please enter your Password",
              controller: passwordController,
              validator: (Text) {
                if (Text == null || Text.isEmpty) {
                  return 'please enter your Password';
                }
                if (Text.length < 6) {
                  return "invalid password ";
                }
                return null;
              },
              type: TextInputType.visiblePassword,
              isPassword: true,
            ),
            const SizedBox(
              height: 45,
            ),
            CustomButton('Sign Up', () {}),
          ],
        ),
      ),
    );
  }
}
