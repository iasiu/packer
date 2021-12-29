import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppToaster {
  static void show({required String text, Color? bgColor, Color? textColor}) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: text,
      backgroundColor: bgColor,
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 3,
      gravity: ToastGravity.SNACKBAR,
      textColor: textColor,
      fontSize: 16,
    );
  }
}
