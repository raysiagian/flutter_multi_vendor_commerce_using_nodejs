import 'package:app/styles/localTextStyle.dart';
import 'package:app/views/screens/authentication_screen/login_screen/widget/loginTextFormWidget.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: LocalTextStyle.textTheme.headlineSmall!.copyWith(
                color: Colors.black,
              ),
            ),
            Text(
              "To Explore the World Excusives",
              style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.png'), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            LoginTextFormWidget(),
          ],
        ),
      ),
    );
  }
}