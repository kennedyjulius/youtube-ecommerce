import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_ecommerce/screens/auth/signup_screen.dart';
import 'package:youtube_ecommerce/widgets/my_textwidget.dart';
import 'package:youtube_ecommerce/widgets/mybutton.dart';
import 'package:youtube_ecommerce/widgets/mytextinputfield.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyTextWidget(
                  text: "Login",
                  size: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              SizedBox(
                height: 10,
              ),
              MyTextWidget(
                  text: "Welcome back to Storia",
                  size: 22,
                  fontWeight: FontWeight.w200,
                  color: Colors.black),
              SizedBox(
                height: 20,
              ),
              MyTextInputField(
                  hintext: "Email",
                  controller: emailController,
                  prefixicon: Icon(
                    Icons.email_outlined,
                    color: Colors.black26,
                  ),
                  suffixicon: Icon(
                    Icons.clear,
                  ),
                  Obsecure: false),
              SizedBox(
                height: 20,
              ),
              MyTextInputField(
                  hintext: "Password",
                  controller: passwordController,
                  prefixicon: Icon(
                    Icons.lock,
                  ),
                  suffixicon: Icon(
                    Icons.visibility,
                  ),
                  Obsecure: false),
              SizedBox(
                height: 30,
              ),
              MyButton(
                text: "Login",
                onTap: () {
                  CircularProgressIndicator();
                  Get.snackbar("Login", "Logging you shortly");
                },
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Divider(
                  color: Colors.black,
                  height: 3,
                  thickness: 5,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  MyTextWidget(
                      text: "Don't have an account?",
                      size: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  SizedBox(
                    width: 4,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(SignupScreen());
                      },
                      child: Text(
                        "Signup here...",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Recover password here ...",
                    selectionColor: Colors.green,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
