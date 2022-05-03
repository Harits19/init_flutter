part of 'konstans.dart';

class KColor {
  const KColor._();
  static const testConst = "";

  static const yellow = Color(0xffF0D946);
  static const baliHai = Color(0xff838EAB);
  static const wedgeWood = Color(0xff5584AC);
  static const coconutCream = Color(0xffF6F2D4);
  static const blumine = Color(0xff22577E);
  static const gurkha = Color(0xff97947F);
  static const silver = Color(0xffBCBCBC);
  static const grayChaeteau = Color(0xffA9AEB2);
  static final flushMahogany = _hexToColor("#C83434");
  static final sinbad = _hexToColor("#95D1CC");
  static final cinnabar = _hexToColor("#EB4335");
  static final selectiveYellow = _hexToColor("#FBBC05");

  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
