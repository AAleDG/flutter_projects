
import 'package:flutter/material.dart';



class FullScreenLoaderDialog extends StatelessWidget {
  const FullScreenLoaderDialog({Key? key}) : super(key: key);

  static bool _isShowing = false;

  static void show({required BuildContext context, Key? key}) {
    if (_isShowing) {
      hide(context: context);
    }

    _isShowing = true;
    showDialog(
      context: context,
      useRootNavigator: true,
      barrierColor: Colors.white12,
      barrierDismissible: false,
      builder: (context) => FullScreenLoaderDialog(
        key: key,
      ),
    );
  }

  static void hide({required BuildContext context}) {
    if (_isShowing) {
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      }
      _isShowing = false;
    }
  }

  /*static Future appDialog({
    required BuildContext context,
  }) {
    if (_isShowing)
      return showDialog(
        context: context,
        barrierColor: ColorsConts.barrierNotDismissible,
        barrierDismissible: false,
        routeSettings: const RouteSettings(name: "loader"),
        builder: (BuildContext context) {
          return const _LoaderWithBottomText();
        },
      );
  }*/

  @override
  Widget build(BuildContext context) {
    return const _LoaderWithBottomText();
  }
}

class _LoaderWithBottomText extends StatelessWidget {
  const _LoaderWithBottomText();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future(() => false),
      child: const Material(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(
              color: Colors.white,
              backgroundColor: Colors.green,
            ),
            const SizedBox(
              height: 8,
            ),
            
          ],
        ),
      ),
    );
  }
}
