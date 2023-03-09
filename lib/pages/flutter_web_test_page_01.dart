import 'package:flutter/material.dart';

import '../sizer.dart';
import '../typography.dart';

class FlutterWebTestPage01 extends StatelessWidget {
  const FlutterWebTestPage01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mediaQuery = MediaQuery.of(context).size.width;
    double fixedMediaQueryData = fixedWidth;
    double flexibleMediaQueryData =
        MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
    double devicePhysicalSize =
        WidgetsBinding.instance.window.physicalSize.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 48,
            alignment: Alignment.center,
            color: Theme.of(context).colorScheme.primary,
            child: Text("Page 01", style: titleTextStyle),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("MediaQuery: $mediaQuery"),
                Text("Fixed MediaQueryData: $fixedMediaQueryData"),
                Text("Flexible MediaQueryData : $flexibleMediaQueryData"),
                Text("DevicePhysicalWidth: $devicePhysicalSize"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

