import 'package:flutter/material.dart' hide FontWeight;
import 'package:loading_indicator/loading_indicator.dart';

class LoadingWidget extends StatelessWidget {
  final Indicator indicator;
  final double size;
  final bool isLight;

  const LoadingWidget({
    this.indicator = Indicator.ballScaleMultiple,
    this.size = 250,
    this.isLight = true,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: LoadingIndicator(indicatorType: indicator, colors: [
          isLight
              ? Theme.of(context).primaryColor.withOpacity(0.5)
              : Colors.white.withOpacity(0.4),
        ]),
      ),
    );
  }
}

class LoadingScreen {
  LoadingScreen._();

  static Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            LoadingWidget(
              indicator: Indicator.ballScaleMultiple,
            )
          ],
        );
      },
    );
  }
}
