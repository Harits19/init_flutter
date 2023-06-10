import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeState {
  final AsyncValue<String> result;

  HomeState({
    required this.result,
  });
}
