import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:qr_flutter/qr_flutter.dart';
import 'package:to_do_app/core/router/app_router.dart';

import 'package:to_do_app/core/utils/get_random_id.dart';
import 'package:to_do_app/features/auth/application/authBloc/auth_bloc.dart';
import 'package:to_do_app/features/auth/application/qrBloc/qr_sign_in_bloc.dart';

@RoutePage()
class QrScreen extends StatefulWidget {
  const QrScreen({super.key});

  @override
  State<QrScreen> createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
  @override
  Widget build(BuildContext context) {
    final String authCredentialId = Utils().getRandomId();
    context.read<QrSignInBloc>().add(
          ListenForAuthCredentialData(authCredentialId: authCredentialId),
        );
    return BlocListener<QrSignInBloc, QrSignInState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          isSignedWithQr: (value) {
            context.router.replace(
              const HomeRoute(),
            );
          },
        );
      },
      child: Scaffold(
        body: Column(
          children: [
            QrImageView(
              size: 150,
              data: authCredentialId,
            ),
          ],
        ),
      ),
    );
  }
}
