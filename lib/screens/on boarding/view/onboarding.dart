import 'package:flutter/material.dart';

import 'components/body.dart' show Body;

class OnBoarding extends StatelessWidget {
  const OnBoarding ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
    );
  }
}
