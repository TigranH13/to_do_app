import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:qr_flutter/qr_flutter.dart';

import 'package:to_do_app/core/utils/get_random_id.dart';
import 'package:to_do_app/features/auto_sign_in_with_qr/application/bloc/auto_sign_in_bloc.dart';

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
    context.read<AutoSignInBloc>().add(
          ListenForAuthCredentialData(authCredentialId: authCredentialId),
        );
    return Scaffold(
      body: BlocListener<AutoSignInBloc, AutoSignInState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        child: Column(
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
