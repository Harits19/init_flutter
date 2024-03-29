class StringExtensionHelper {}

extension StringNullExtension on String? {
  bool get isNullEmpty {
    return (this ?? "").trim().isEmpty;
  }

  bool get isNotNullEmpty => !isNullEmpty;

}
