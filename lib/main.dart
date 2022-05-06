import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:init_flutter/bloc/home_bloc/home_bloc_cubit.dart';
import 'package:init_flutter/konstans/konstans.dart';
import 'package:init_flutter/utils/app_bloc_observer.dart';
import 'package:init_flutter/utils/get_it_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:init_flutter/utils/helper.dart';

void main() async {
  await setupDepedencyInjection();
  BlocOverrides.runZoned(
    () => runApp(
      const MyApp(),
    ),
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => HomeBlocCubit(),
        ),
      ],
      child: MaterialApp(
        useInheritedMediaQuery: true,
        theme: ThemeData(
          primarySwatch: Helper.func.createMaterialColor(KColor.baliHai),
          splashColor: KColor.blumine.withOpacity(0.4),
          scaffoldBackgroundColor: Colors.white,
          // textTheme: newTextTheme,
          // buttonTheme: ButtonThemeData(),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: KButton.outlinedStyle,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: KButton.elevatedStyle,
          ),
          inputDecorationTheme: KDecor.input,
        ),
        home: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: null,
                  child: Text("ElevatedButton Disable"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("ElevatedButton Disable"),
                ),
                OutlinedButton(
                  onPressed: null,
                  child: Text("OutlinedButton Disable"),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("OutlinedButton Disable"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
