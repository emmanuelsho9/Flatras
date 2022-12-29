import 'package:flutter/material.dart';

import 'bioPageView/bioPageView.dart';

class BioData extends StatefulWidget {
  const BioData({Key? key}) : super(key: key);

  @override
  State<BioData> createState() => _BioDataState();
}


class _BioDataState extends State<BioData> {

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      controller: controller,
      children: const <Widget>[
        Center(
          child: bioPageViewOne(),
        ),
      ],
    );
  }
}
