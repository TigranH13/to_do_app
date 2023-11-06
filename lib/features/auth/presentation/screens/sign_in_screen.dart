import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:to_do_app/core/router/app_router.dart';
import 'package:to_do_app/features/auth/application/authBloc/auth_bloc.dart';
import 'package:to_do_app/features/auth/presentation/widgets/login_bottons.dart';
import 'package:to_do_app/features/auth/presentation/widgets/my_text_field.dart';

import '../../../tasks/application/bloc/todo_bloc.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          isSigned: (value) {
            context.router.replace(
              const HomeRoute(),
            );
            context.read<TodoBloc>().add(
                  const TodoEvent.init(),
                );
          },
        );
      },
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Icon(
                      Icons.message_rounded,
                      color: Colors.grey[800],
                      size: 120,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Welcome back you\'ve been missed!',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    MyTextField(
                        isemail: true,
                        controller: emailController,
                        hintText: 'Email',
                        onbsureText: false),
                    const SizedBox(
                      height: 10,
                    ),
                    MyTextField(
                        controller: passwordController,
                        isemail: false,
                        hintText: 'Password',
                        onbsureText: true),
                    const SizedBox(
                      height: 25,
                    ),
                    LoginButtons(
                        emailController: emailController,
                        passwordController: passwordController),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Not a member?'),
                        const SizedBox(
                          width: 4,
                        ),
                        TextButton(
                          onPressed: () {
                            context.router.push(
                              const SignUpRoute(),
                            );
                          },
                          child: const Text(
                            'Register Now',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    if (kIsWeb)
                      ElevatedButton(
                          onPressed: () {
                            context.router.push(
                              const QrRoute(),
                            );
                          },
                          child: Text('with qr'))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
