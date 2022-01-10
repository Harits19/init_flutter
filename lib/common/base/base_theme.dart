import 'package:flutter/material.dart';
import 'package:github_app/common/base/base_constans.dart';

class T {
  static const button = _Button();
}

class _Button {
  const _Button();
  MaterialStateProperty<OutlinedBorder> get outlineBorder =>
      MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(C.size.getSize(24)),
        ),
      );

  MaterialStateProperty<Size> get minimumSize =>
      MaterialStateProperty.all<Size>(Size(0, C.size.getSize(42)));

  MaterialStateProperty<Color> get greenColor =>
      MaterialStateProperty.all<Color>(C.color.green);

  MaterialStateProperty<Color> get greenOpacityColor =>
      MaterialStateProperty.all<Color>(C.color.green.withOpacity(0.1));
}
