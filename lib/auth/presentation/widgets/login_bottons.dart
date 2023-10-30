// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/auth/application/auth_bloc.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          InkWell(
            onTap: () async {
              context.read<AuthBloc>().add(SignInWithEmailAndPassword(
                  emailController.text, passwordController.text));
            },
            child: Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(9)),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () async {
              context.read<AuthBloc>().add(SignInWithGoogle());
            },
            child: Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(9)),
              child: const Center(
                  child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 23, right: 23),
                    child: Icon(
                      Icons.g_mobiledata_rounded,
                      color: Colors.blue,
                      size: 35,
                    ),
                  ),
                  Text(
                    'Login with Google',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ],
              )),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
