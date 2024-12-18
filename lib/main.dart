import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:newpro/screens/Navbar.dart';
import 'package:newpro/utils/screen_utils.dart';
import 'package:newpro/utils/text_utils.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // localizationsDelegates: context.localizationDelegates,
          // supportedLocales: context.supportedLocales,
          // locale: context.locale,
          // context.watch<SettingsProvider>().isDarkMode ? darkTheme : lightTheme,

          title: 'Flutter Demo',
          theme: darkTheme,
          home: Navbar(),
          // localizationsDelegates: context.localizationDelegates,
          // supportedLocales: context.supportedLocales,
          // locale: context.locale,
          // title: 'Energy one',
          // routerConfig: AppRoutes.routes,
        );
      },
    );


  }
}
