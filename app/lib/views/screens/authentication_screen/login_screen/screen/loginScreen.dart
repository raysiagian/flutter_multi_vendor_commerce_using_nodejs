import 'package:app/styles/localColors.dart';
import 'package:app/styles/localTextStyle.dart';
import 'package:app/views/screens/authentication_screen/login_screen/widget/loginTextFormWidget.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
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
        Positioned(
          right: 45,
          bottom: 55,
          child: Opacity(
            opacity: 0.5,
            child: Container(
              width: 40,
              height: 40,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                  color: LocalColorsStyle.primaryColor,
                )
              ),
            ),
          ),
        ),
        Positioned(
          right: 20,
          bottom: 20,
          child: Opacity(
            opacity: 0.5,
            child: Container(
              width: 30,
              height: 30,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                  color: LocalColorsStyle.primaryColor,
                )
              ),
            ),
          ),
        ),
        
      ],),
    );
  }
}