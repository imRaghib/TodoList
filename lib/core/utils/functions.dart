import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Functions {
  static showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      textColor: Colors.black,
      fontSize: 14,
    );
  }

  static showLoading(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return PopScope(
          onPopInvokedWithResult: (didPop, result) {
            Future.value(kDebugMode);
          },
          child: const AlertDialog(
            backgroundColor: Colors.transparent,
            elevation: 0,
            content: LoadingWidget(),
          ),
        );
      },
      barrierDismissible: false,
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.threeRotatingDots(
      color: Colors.white,
      size: 40,
    );
  }
}
