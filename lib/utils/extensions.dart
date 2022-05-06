import 'dart:io';

import 'package:flutter/material.dart';
import 'package:init_flutter/ui/views/touch_opacity.dart';

class KExtension {}

extension ContainerExtension on Container {
  Widget inkWell({
    VoidCallback? onTap,
  }) {
    final borderRadius =
        (decoration as BoxDecoration?)?.borderRadius as BorderRadius?;
    return Stack(
      children: [
        this,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              borderRadius: borderRadius,
            ),
          ),
        ),
      ],
    );
  }
}

extension CardExtension on Card {
  Widget inkWell({
    VoidCallback? onTap,
  }) {
    final borderRadius =
        (shape as RoundedRectangleBorder?)?.borderRadius as BorderRadius?;
    return Stack(
      children: [
        this,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding: margin ?? const EdgeInsets.all(4.0),
              child: InkWell(
                onTap: onTap,
                borderRadius: borderRadius,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
