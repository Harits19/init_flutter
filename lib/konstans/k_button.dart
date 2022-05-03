part of 'konstans.dart';

class KButton {
  const KButton._();
  static const _defaultColor = KColor.blumine;

  static final outlineBorder =
      MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(KNum.s20),
    ),
  );

  static final minimumSize = MaterialStateProperty.all<Size>(Size(0, KNum.s52));

  static final backgroundColor = MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) return KColor.silver;
      return KColor.blumine; // Use the component's default.
    },
  );

  static final foregroundColor = MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) return Colors.white;
      return Colors.white; // Use the component's default.
    },
  );

  static final opacityColor =
      MaterialStateProperty.all<Color>(_defaultColor.withOpacity(0.1));

  static final outlineButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: backgroundColor,
      overlayColor: opacityColor,
      minimumSize: minimumSize,
      shape: outlineBorder,
    ),
  );

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: elevatedStyle,
  );

  static final elevatedStyle = ButtonStyle(
      backgroundColor: backgroundColor,
      minimumSize: minimumSize,
      shape: outlineBorder,
      foregroundColor: foregroundColor,
      textStyle: MaterialStateProperty.all<TextStyle>(KText.notoStyle));
}
