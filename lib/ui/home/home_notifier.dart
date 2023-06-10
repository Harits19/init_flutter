import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:init_flutter/ui/home/home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  return HomeNotifier(
    HomeState(
      result: const AsyncData(''),
    ),
  );
});

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(super.state);
}
