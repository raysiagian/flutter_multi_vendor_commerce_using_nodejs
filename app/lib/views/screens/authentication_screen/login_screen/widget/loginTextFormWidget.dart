import 'package:app/styles/localColors.dart';
import 'package:app/styles/localTextStyle.dart';
import 'package:flutter/material.dart';

class LoginTextFormWidget extends StatelessWidget {
  const LoginTextFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Column(
        children: [
          // Align(
          //   alignment: Alignment.topLeft,
          //   child: Text(
          //     'Email', 
          //     style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
          //       color: Colors.black,
          //     ),
          //   ),
          // ),
          TextFormField(
            decoration: InputDecoration(
              // fillColor: Colors.white,
              // filled: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              // focusedBorder: InputBorder.none,
              labelText: 'Email',
              labelStyle: LocalTextStyle.textTheme.bodySmall!.copyWith(
                color: Colors.black,
              ),
              // prefixIcon: Icon(Icons.email_outlined) 
              // prefixIcon digunakan untuk membuat icon dlaam textfield
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          // Align(
          //   alignment: Alignment.topLeft,
          //   child: Text(
          //     'Password', 
          //     style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
          //       color: Colors.black,
          //     ),
          //   ),
          // ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              labelText: 'Passowrd',
              labelStyle: LocalTextStyle.textTheme.bodySmall!.copyWith(
                color: Colors.black,
              ),
              // prefixIcon: Icon(Icons.key)
              suffixIcon: Icon(Icons.visibility)
            ),
          ),
          // Botton
          const SizedBox(height: 40.0),
          SizedBox(
            height: 50, 
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){}, 
              // Container memiliki padding dan margin bawaan 
              //sehingga kita memutuskan mengganti menjadi elevated button syleform

              // child: Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: LocalColorsStyle.primaryColor,
              //   ),
              //   child: Center(
              //     child: Text(
              //       'Login',
              //       style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              // ),
               style: ElevatedButton.styleFrom(
                backgroundColor: LocalColorsStyle.primaryColor, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                'Login',
                style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),  
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            "Didn't have an account?"
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            height: 50, 
            width: double.infinity,
            child: OutlinedButton(
              onPressed: (){},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                 'Sign Up',
                style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                  color: LocalColorsStyle.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}