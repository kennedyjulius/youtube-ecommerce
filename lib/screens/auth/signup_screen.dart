import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:youtube_ecommerce/screens/auth/login_screen.dart';
import 'package:youtube_ecommerce/widgets/my_textwidget.dart';
import 'package:youtube_ecommerce/widgets/mybutton.dart';
import 'package:youtube_ecommerce/widgets/mytextinputfield.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController ConfirmpasswordController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();
  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyTextWidget(
                    text: "Create a New Account",
                    size: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                SizedBox(
                  height: 10,
                ),
                MyTextWidget(
                    text: "Welcome to Storia",
                    size: 22,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
                SizedBox(
                  height: 20,
                ),
                MyTextInputField(
                    hintext: "Name",
                    controller: nameController,
                    prefixicon: Icon(
                      Icons.person_2,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.greenAccent,
                            ))),
                    initialCountryCode: 'KE',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
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
                  height: 20,
                ),
                MyTextInputField(
                    hintext: "Confirm Password",
                    controller: ConfirmpasswordController,
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
                  text: "Signup",
                  onTap: () {
                    CircularProgressIndicator();
                    Get.snackbar("SignUp", "Signing you up shortly");
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
                        text: "Already have an account?",
                        size: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    SizedBox(
                      width: 4,
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(Login());
                        },
                        child: Text("Login here...")),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
