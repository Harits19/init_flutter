part of 'base.dart';

class _Button {
  const _Button();
  MaterialStateProperty<OutlinedBorder> get outlineBorder =>
      MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(C.num.getSize(24)),
        ),
      );

  MaterialStateProperty<Size> get minimumSize =>
      MaterialStateProperty.all<Size>(Size(0, C.num.getSize(42)));

  MaterialStateProperty<Color> get greenColor =>
      MaterialStateProperty.all<Color>(C.color.green);

  MaterialStateProperty<Color> get greenOpacityColor =>
      MaterialStateProperty.all<Color>(C.color.green.withOpacity(0.1));
}

class _Text {
  const _Text();
  TextStyle get defaultStyle => TextStyle();
}
