

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class screenResponisive extends StatelessWidget {
  screenResponisive({
    required this.scaffold,
    Key? key,
  });

  Widget scaffold;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Container(
            height: MediaQuery.of(context).size.height*100,
            width: MediaQuery.of(context).size.width*100,
            child: scaffold);
      },);
  }
}
