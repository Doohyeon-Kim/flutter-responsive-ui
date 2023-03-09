import 'package:flutter/material.dart';
import 'package:folivora_design_system/folivora_design_system.dart';

import '../sizer.dart';
import '../typography.dart';

class FlutterWebTestPage02 extends StatelessWidget {
  const FlutterWebTestPage02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    pageWidth = MediaQuery.of(context).size.width;
    isWeb = pageWidth > mobileWidth ? true : false;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 48,
            color: Theme.of(context).colorScheme.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: pageWidth > breakPointWidth
                        ? (pageWidth - breakPointWidth) / 2 + 20
                        : 20),
                Text("Doohyeon Kim",
                    style: isWeb ? CustomTypography.h1 : CustomTypography.h2),
                const Spacer(),
                Text("Hello",
                    style: isWeb ? CustomTypography.h2 : CustomTypography.h3),
                const SizedBox(width: 24),
                Text("Flutter",
                    style: isWeb ? CustomTypography.h2 : CustomTypography.h3),
                const SizedBox(width: 24),
                Text("World",
                    style: isWeb ? CustomTypography.h2 : CustomTypography.h3),
                SizedBox(
                    width: pageWidth > breakPointWidth
                        ? (pageWidth - breakPointWidth) / 2 + 20
                        : 20),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("pageWidth: $pageWidth"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
