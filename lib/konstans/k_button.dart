part of 'konstans.dart';

class KButton {
  const KButton._();

  static final rectangle20 = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(KNum.s20),
  );

  static const size52 = Size(0, KNum.s52);

  static final matSide =
      MaterialStateProperty.resolveWith<BorderSide>(((states) {
    if (states.contains(MaterialState.disabled)) {
      return const BorderSide(
        color: KColor.silver,
      );
    }
    return const BorderSide(
      color: KColor.buttonPrimary,
    );
  }));

  static final matColor = MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) return KColor.silver;
      return KColor.buttonPrimary; // Use the component's default.
    },
  );

  static final outlinedStyle = OutlinedButton.styleFrom(
    // Use this if constans
    minimumSize: size52,
    shape: rectangle20,
    textStyle: KText.notoStyle,
    primary: KColor.buttonPrimary ,
  ).copyWith(
    // Use this if changes follor MaterialState
    foregroundColor: matColor,
    side: matSide,
  );

  static final elevatedStyle = ElevatedButton.styleFrom(
    minimumSize: size52,
    shape: rectangle20,
    textStyle: KText.notoStyle,
  ).copyWith(
    backgroundColor: matColor,
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  );
}
