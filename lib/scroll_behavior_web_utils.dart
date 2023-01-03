import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';

class CustomScrollBehaviorWeb extends MaterialScrollBehavior {
  // Customizado para scroll horizontal para versão WEB
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
