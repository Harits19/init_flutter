import 'package:flutter/material.dart';

class C {
  static const font = _Font();
  static const size = _Size();
  static const color = _Color();
  static const image = _Image();
  static const int = _Int();
  static const key = _Key();

  // static get font = const _Font();
}

class _Font {
  const _Font();

  String get lato => "Lato";
  String get raleway => "Raleway";
}

class _Size {
  const _Size();

  double get s8 => 8;
  double get s10 => 10;
  double get s12 => 12;
  double get s14 => 14;
  double get s16 => 16;

  double getSize(double size) {
    return size;
  }
}

class _Int {
  const _Int();
  int get pageSize => 4;
}

class _Color {
  const _Color();

  Color get yellow => const Color(0xffF0D946);
  Color get red => const Color(0xffE7246B);
  Color get green => const Color(0xff74B71B);
  Color get navy => const Color(0xff25315B);
  Color get goldenGrass => const Color(0xffDCB81D);
  Color get whiteLilac => const Color(0xffEBEEF7);
  Color get baliHai => const Color(0xff838EAB);
  Color get alto => const Color(0xffD8D8D8);
  Color get tundora => const Color(0xff4A4A4A);
}

class _Image {
  const _Image();
  static const _path = "images/";
  String get icBintang => _path + "ic_bintang.png";
  String get icLove => _path + "ic_love@2x.png";
  String get icLoveUnactive => _path + "ic_love_unactive.png";
  String get icPoint => _path + "ic_point.png";
  String get imgProduct => _path + "img_produk_2@2x.png";
  String get icNew => _path + "ic_new@2x.png";
  String get icFlower => _path + "ic_point-1@2x.png";
}

class _Key {
  const _Key();

  String get wishlistKey => "wishlist";
}
