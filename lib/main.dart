import 'package:flutter/material.dart'
    show
        BuildContext,
        Key,
        StatelessWidget,
        Widget,
        WidgetsFlutterBinding,
        runApp;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome;
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'database/functions.dart' show HiveFuntions;
import 'helpers/themes/themes.dart' show uiConfig;
import 'screens/wrapper.dart' show Wrapper;

Future<void> main() async {
  await _init();
  runApp(
    const Main(),
  );
}

Future<void> _init() async {
  await Hive.initFlutter();
  HiveFuntions.registerHiveAdepters();
  await HiveFuntions.openAllBoxes();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(uiConfig);
}

class Main extends StatelessWidget {
  const Main({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: Wrapper(),
    );
  }
}
