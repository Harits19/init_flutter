import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:init_flutter/models/gift.dart';
import 'package:init_flutter/services/gift_api.dart';

part 'gift_bloc_state.dart';

class GiftBlocCubit extends Cubit<GiftBlocState> {
  GiftBlocCubit() : super(const GiftBlocLoadedState([]));

  final giftApi = GetIt.I<GiftApi>();

  getGiftCubit({required int page}) {
    final state = this.state as GiftBlocLoadedState;
    emit(GiftBlocLazyLoadingState(state.gifts));
    giftApi
        .getGifts(
      page: page,
      onSuccess: (val) {
        if (val.isEmpty) {
          emit(GiftBlocEmptyState());
        }
        emit(GiftBlocLoadedState([...state.gifts, ...val]));
      },
    )
        .catchError(
      (err) {
        emit(GiftBlocErrorState(err));
      },
    );
  }
}
