part of 'base.dart';

class _Button {
  const _Button();
  Color get _defaultColor => C.color.blumine;

  MaterialStateProperty<OutlinedBorder> get outlineBorder =>
      MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(C.num.getSize(20)),
        ),
      );

  MaterialStateProperty<Size> get minimumSize =>
      MaterialStateProperty.all<Size>(Size(0, C.num.getSize(52)));

  MaterialStateProperty<Color> get backgroundColor =>
      MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) return C.color.silver;
          return C.color.blumine; // Use the component's default.
        },
      );

  MaterialStateProperty<Color> get foregroundColor =>
      MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) return Colors.white;
          return Colors.white; // Use the component's default.
        },
      );

  MaterialStateProperty<Color> get opacityColor =>
      MaterialStateProperty.all<Color>(_defaultColor.withOpacity(0.1));

  OutlinedButtonThemeData get outlineButtonTheme => OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: T.button.backgroundColor,
          overlayColor: T.button.opacityColor,
          minimumSize: T.button.minimumSize,
          shape: T.button.outlineBorder,
        ),
      );

  ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
        style: elevatedStyle,
      );

  ButtonStyle get elevatedStyle => ButtonStyle(
      backgroundColor: T.button.backgroundColor,
      minimumSize: T.button.minimumSize,
      shape: T.button.outlineBorder,
      foregroundColor: foregroundColor,
      textStyle: MaterialStateProperty.all<TextStyle>(T.text.buttonStyle));
}

class _Text {
  const _Text();
  TextStyle get notoStyle => TextStyle(fontFamily: C.font.notoSans);

  TextStyle get h1 => TextStyle(
        fontFamily: C.font.poppins,
        fontSize: 32,
        fontWeight: FontWeight.w700,
      );
  TextStyle get h2 => h1.copyWith(fontSize: 30);
  TextStyle get h3 => h1.copyWith(fontSize: 14);
  TextStyle get h4 => h1.copyWith(fontSize: 12);

  TextStyle get body1 => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  TextStyle get body2 => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );
  TextStyle get body2Bold => body2.copyWith(
        fontWeight: FontWeight.w700,
      );
  TextStyle get body3 => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );
  TextStyle get body4 => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );
  TextStyle get body4Bold => body4.copyWith(
        fontWeight: FontWeight.w700,
      );

  TextStyle get inputStlye => body4;
  TextStyle get buttonStyle => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: C.font.notoSans,
      );

  TextStyle get body5 => TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );
  TextStyle get body5Bold => body5.copyWith(
        fontWeight: FontWeight.w700,
      );

  TextStyle get light1 => TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 12,
        fontFamily: C.font.poppins,
      );

  TextStyle get bottomText => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 8,
        fontFamily: C.font.poppins,
      );

  TextStyle get detailSchedule => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        fontFamily: C.font.poppins,
      );

  TextStyle get cancelText => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 10,
        fontFamily: C.font.poppins,
      );
}

class _Decoration {
  const _Decoration();

  BoxDecoration get card => BoxDecoration(
        color: C.color.coconutCream,
        borderRadius: BorderRadius.circular(16),
      );

  InputDecorationTheme get input => InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        iconColor: Colors.black,
        contentPadding: EdgeInsets.symmetric(
          vertical: 18,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
      );

  BoxDecoration get item => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      );
}
