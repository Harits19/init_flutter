import 'package:get_it/get_it.dart';
import 'package:init_flutter/utils/api_config.dart';
import 'package:init_flutter/services/gift_api.dart';

Future<void> setupDependencyInjection() async {
  GetIt.I.registerSingleton<GiftApi>(GiftApi(ApiConfig.createInstance()));
  // GetIt.I
  //     .registerSingletonAsync<WishlistRepo>(() async => WishlistRepo().init());
  await GetIt.I.allReady();
}
