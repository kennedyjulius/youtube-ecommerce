import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_ecommerce/screens/auth/login_screen.dart';
import 'package:youtube_ecommerce/screens/auth/signup_screen.dart';
import 'package:youtube_ecommerce/widgets/my_textwidget.dart';
import 'package:youtube_ecommerce/widgets/mybutton.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyTextWidget(
                text: "Welcome",
                size: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            SizedBox(
              height: 10,
            ),
            MyTextWidget(
                text: "Buy an Item from our App",
                size: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width-30,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                          //color: Colors.whi,
                          blurRadius: 1,
                          spreadRadius: 1,
                          offset: Offset(0.8, 0.2))
                    ]
                    ),
                    child: Center(child: Image.asset("assets/landing.png")),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.8, 0.2),
                          blurRadius: 1,
                          //color: Colors.white,
                          spreadRadius: 1,
                        )
                      ],
                      image: DecorationImage(
                        image: AssetImage("assets/facebooklogo.png"))
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.8, 0.2),
                          blurRadius: 1,
                          //color: Colors.black,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    child: Image.asset("assets/googglelogo.png"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            MyButton(
              text: "Login",
              onTap: () {
                Get.to(Login());
              },
            ),
            SizedBox(
              height: 10,
            ),
            MyButton(
              text: "Signup",
              onTap: () {
                Get.to(SignupScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}
