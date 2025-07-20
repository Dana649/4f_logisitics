import 'package:f_logistics/util/themes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../components/app_components/custom_text.dart';
import 'const.dart';
import 'vh_spacing.dart';

class ToastMessages {

  static void showError(BuildContext context, String message) {
    Fluttertoast.cancel();

    final snackBar = SnackBar(
        content: Row(
          children: [
            const Icon(Icons.report_sharp, color: AppTheme.bpRed),
            const SizedBox(width: 8.0),
            Expanded(
                child:
                CustomText(
                    text: message,
                    styleName: 'bodyMedium',
                    color: AppTheme.bpBlack
                )
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: AppTheme.redLight,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 20.0),
        duration: const Duration(seconds: 8)
    );
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void showSuccess(BuildContext context, String message) {
    Fluttertoast.cancel();

    final snackBar = SnackBar(

        content: Row(
          children: [
            const Icon(Icons.check_circle, color: AppTheme.primaryGreen),
            const SizedBox(width: 8.0),
            Expanded(
                child: Text(
                  message,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppTheme.bpBlack
                  ),
                )),
          ],
        ),

        backgroundColor:AppTheme.greenLight,
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 20.0),
        duration: const Duration(seconds: 4)
    );
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void showInfo(BuildContext context, String message) {
    Fluttertoast.cancel();

    final snackBar = SnackBar(
      content: Row(
        children: [
          Icon(Icons.warning, color: AppTheme.primaryGreen),
          const SizedBox(width: 8.0),
          Expanded(
              child:
              CustomText(
                  text: message,
                  styleName: 'bodyMedium',
                  color: AppTheme.bpBlack
              )
          ),
        ],
      ),
      backgroundColor: Theme.of(context).bpToastMessage,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class AlertDialogs {
  static void showClosed(
      BuildContext context, {
        required IconData icon,
        required Color iconColor,
        required String message,
        required String positiveButtonText,
        String? negativeButtonText,
        required VoidCallback onPositivePressed,
        required VoidCallback onNegativePressed,
      }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BoxDeco.boxRadius),
          ),
          title: Column(
            children: [
              Icon(
                icon,
                color: iconColor,
                size: 48,
              ),
              const VerticalSpacing(2),
              CustomText(
                  text: message,
                  textAlign: TextAlign.center,
                  styleName: 'titleMedium'
              ),
            ],
          ),
          actions: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: onNegativePressed,
                    child:CustomText(
                        text: negativeButtonText!,
                        styleName:'headlineSmall'
                    ),
                  ),
                  TextButton(
                    onPressed: onPositivePressed,
                    child: CustomText(
                        text: positiveButtonText,
                        styleName:'headlineSmall'
                    ),
                  ),
                ])
          ],
        );
      },
    );
  }

  static void showCreateAccount(
      BuildContext context, {
        required IconData icon,
        required Color iconColor,
        required String message,
        required String positiveButtonText,
        String? negativeButtonText,
        required VoidCallback onPositivePressed,
        required VoidCallback onNegativePressed,
      }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: Column(
            children: [
              Icon(
                icon,
                color: iconColor,
                size: 48,
              ),
              const SizedBox(height: 16),
              CustomText(
                  text: message,
                  textAlign: TextAlign.center,
                  styleName: 'titleMedium'
              ),
            ],
          ),
          actions: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: onNegativePressed,
                    child:
                    CustomText(
                        text:  negativeButtonText!,
                        styleName: 'titleMedium',
                        color: Theme.of(context).bpPortfolioText
                    ),
                  ),
                  TextButton(
                    onPressed: onPositivePressed,
                    child:
                    Text(
                      positiveButtonText,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).bpPortfolioText,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ])
          ],
        );
      },
    );
  }
}
