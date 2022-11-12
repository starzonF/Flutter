import 'package:flutter/material.dart';
import 'package:flutter_2/constants/constants.dart';
import 'package:flutter_2/constants/ui_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: Constants.getDefaultPadding(),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Constants.title,
                style: Constants.getTitleTextStyle(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              Constants.imgurl,
              width: ScreenUtil().orientation == Orientation.portrait
                  ? 0.2.sh
                  : 0.2.sw,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
