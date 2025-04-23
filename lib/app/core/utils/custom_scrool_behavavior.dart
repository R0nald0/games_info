
import 'dart:ui';

import 'package:flutter/material.dart';

class CustomScroolBehavavior extends MaterialScrollBehavior {
   @override
  // TODO: implement dragDevices
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.mouse,
    PointerDeviceKind.touch
  };
}