import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'demo/navigation_bar.dart';
import 'demo/navigation_drawer.dart';
import 'demo/new_appbar.dart';
import 'demo/new_card.dart';
import 'demo/new_floating_action_button.dart';
import 'demo/new_iconbutton.dart';
import 'demo/new_iconbutton_toggle.dart';
import 'demo/new_material_buttons.dart';
import 'demo/segmented_buttons.dart';
import 'desktop/email_button_page.dart';
import 'desktop/image_page.dart';
import 'desktop/menu_bar_submenu.dart';
import 'desktop/menu_bar_submenu_2.dart';
import 'official_code/material_3_demo.dart';

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onChangedPlatform(TargetPlatform platform) {
    setState(() {
      debugDefaultTargetPlatformOverride = platform;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          const NavigationExample(),
          const NavigationDrawerExample(),
          const NewMaterialButtons(),
          const SegmentedButtonApp(),
          const FabExample(),
          const AppBarExample(),
          const CardExamplesApp(),
          const IconButtonApp(),
          const IconButtonToggleApp(),
          const Material3Demo(),
          const MenuBarApp(),
          const MenuAcceleratorApp(),
          EmailButtonPage(onChangedPlatform: onChangedPlatform),
          ImagePage(onChangedPlatform: onChangedPlatform),
        ],
      ),
    );
  }
}
