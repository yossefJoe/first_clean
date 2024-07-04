import 'package:first_test/core/resource_manager/locale_keys.dart';
import 'package:flutter/material.dart';

import 'core/resource_manager/asset_path.dart';
import 'core/resource_manager/color_manager.dart';
import 'core/resource_manager/routs_manager.dart';
import 'core/utils/config_size.dart';
import 'core/widgets/main_button.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                AssetsPath.logo,
                height: ConfigSize.defaultSize! * 20,
                filterQuality: FilterQuality.high,
              ),
              MainButton(
                  height: ConfigSize.defaultSize! * 5,
                  width: ConfigSize.defaultSize! * 15,
                  onTap: () {
                    Navigator.pushNamed(context, Routes.homePage);
                  },
                  color: ColorManager.primaryColor,
                  text: StringManager.getstarted,
                  textcolor: ColorManager.textColor1)
            ],
          ),
        ),
      ),
    );
  }
}
