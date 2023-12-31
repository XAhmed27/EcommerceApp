import 'package:e_commerceapp/shared/components/custom_button.dart';
import 'package:e_commerceapp/shared/components/custom_text_form_feild.dart';
import 'package:e_commerceapp/shared/components/form_label.dart';
import 'package:e_commerceapp/ui/register_ui/register_ui.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  static String routename = "SignIn";
  @override
  State<SignIn> createState() => _State();
}

class _State extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset("assets/image/Route_Login_Logo.png"),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "Welcome Back to Route ",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "Please sign in with mail",
                style: Theme.of(context).textTheme.labelSmall,
              ),
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
              height: 16,
            ),
            InkWell(
              onTap: () {},
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 9),
                    child: FormLabel(label: "Forget Password"),
                  )),
            ),
            const SizedBox(
              height: 28,
            ),
            CustomButton('Login', () {}),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FormLabel(
                  label: 'Dont have an Account?',
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterScreen.routename);
                  },
                  child: FormLabel(
                    label: 'Create Account',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
