import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/register/register_screen.dart';
import 'core/styles/light_theme.dart';
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
          // You can use the library anywhere in the app even in theme
          theme: LightTheme.theme,
          home: child,
        );
      },
      child: RegisterScreen(),
    );
  }
}
