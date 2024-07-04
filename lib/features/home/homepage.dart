import 'package:first_test/core/resource_manager/color_manager.dart';
import 'package:first_test/core/utils/config_size.dart';
import 'package:flutter/material.dart';

import '../../core/utils/methods.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Scaffold(
      body: Center(
        child: Container(
          child: GridView.builder(
            itemCount: 10,
            shrinkWrap: true,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: FutureBuilder(
                  future: Methods.getimages(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        height: ConfigSize.defaultSize! * 5,
                        width: ConfigSize.defaultSize! * 5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    snapshot.data![index].thumbnailUrl!),
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high)),
                      );
                    } else {
                      return CircularProgressIndicator(
                        color: ColorManager.primaryColor,
                      );
                    }
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
