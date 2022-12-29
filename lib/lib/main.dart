import 'package:flatra/helpers/all_controllers.dart';
import 'package:flatra/helpers/routes_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'KnowTheCoin/coinNow.dart';
import 'features/buy_crypto/screens/enter_pin_screen.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 640),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, child) => GetMaterialApp(
              initialBinding: AllControllers(),
              title: 'Flatra',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              initialRoute: RouteHelpers.getHomeRoute(),
              getPages: RouteHelpers.routes,

          // home: EnterPinScreen(),

            ));
  }
}
