import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sama_bus/core/styles/light_theme.dart';
import 'package:sama_bus/features/Auth/view/login_screen.dart';

import 'features/notifications/notifications.dart';
import 'features/paiment_succes/paiment_succes.dart';
import 'features/select_set/view/select_set.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // runApp(MyApp());
  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('en'),
      Locale('ar'),
    ],
    saveLocale: true,
    path: 'assets/lang',
    startLocale: const Locale('en'),
    // fallbackLocale: const Locale('en'),
    child: const MyApp(),
  ));

  // runApp(LocalizationService.rootWidget(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(440, 956),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: LightTheme.theme,
            home:  SelectSet(),
          );
        });
  }
}
