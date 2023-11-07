import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'package:to_do_app/features/auth/application/qrBloc/qr_sign_in_bloc.dart';
import 'package:to_do_app/features/tasks/application/bloc/todo_bloc.dart';

import '../../../../core/router/app_router.dart';

@RoutePage()
class QrScannerScreen extends StatefulWidget {
  const QrScannerScreen({super.key});

  @override
  State<QrScannerScreen> createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends State<QrScannerScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<QrSignInBloc, QrSignInState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          isSignedWithQr: (value) {
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
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: (result != null)
                    ? Text(
                        'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
                    : Text('Scan a code'),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) async {
    this.controller = controller;
    controller.scannedDataStream.listen(
      (scanData) {
        setState(
          () {
            result = scanData;
          },
        );

        context.read<QrSignInBloc>().add(
              SaveAuthCredentialInFirebase(
                authCredentialId: scanData.code.toString(),
              ),
            );
      },
    );
  }

  @override
  void dispose() {
    controller?.dispose();

    super.dispose();
  }
}
