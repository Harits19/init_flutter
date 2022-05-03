part of 'konstans.dart';

class KDecor {
  const KDecor._();

  static final card = BoxDecoration(
    color: KColor.coconutCream,
    borderRadius: BorderRadius.circular(16),
  );

  static final input = InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    iconColor: Colors.black,
    contentPadding: const EdgeInsets.symmetric(
      vertical: KNum.s16,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(20),
    ),
  );

  static final item = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
  );
}
